library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sender_top is

    port(
        clk: in std_logic;
        btn: in std_logic_vector(1 downto 0);
        RXD: out std_logic

    );

end sender_top;

architecture Behavioral of sender_top is

    component clock_div_9600 is
        port(
            clk  : in std_logic;
            div : out std_logic
        );
    end component;

    component debounce is
        port (
            clk : in std_logic;
            button : in std_logic;
            debounced_button : out std_logic);
    end component;

    component sender is
        port (
            rst, clk, en, btn, rdy: in std_logic;
            send: out std_logic;
            char: out std_logic_vector(7 downto 0)
        );
    end component;

    component uart is
        port (
            clk, en, send, rst      : in std_logic;
            charSend                    : in std_logic_vector (7 downto 0);
            ready, tx          : out std_logic
        );
    end component;


    signal dbnc1, dbnc2, div_out, ready_out, send_out: std_logic;
    signal char_out: std_logic_vector(7 downto 0); 
    

begin

    u1: debounce
        port map (
            clk => clk,
            button => btn(0),
            debounced_button => dbnc1
        );

    u2: debounce
        port map (
            clk => clk,
            button => btn(1),
            debounced_button => dbnc2
        );

    u3: clock_div_9600
        port map (
            clk => clk,
            div => div_out
        );

    u4: sender
        port map (
            btn => dbnc2,
            clk => clk,
            en => div_out,
            rdy => ready_out,
            rst => dbnc1,
            char => char_out,
            send => send_out
        );
        
        
     u5: uart   
        port map (
            charSend => char_out,
            clk => clk,
            en =>  div_out,
            rst => dbnc1,
            send => send_out,
            ready => ready_out,
            tx => RXD

        );


end Behavioral;
