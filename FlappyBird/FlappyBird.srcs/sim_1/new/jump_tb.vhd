
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity jump_tb is
end jump_tb;



architecture Behavioral of jump_tb is

    component Jump is
        port (
            clk: in std_logic;
            btn: in std_logic;
            led: out std_logic;
            y1, y2: out integer


        );
    end component;

    component debounce is
        port (
            clk : in std_logic;
            button : in std_logic;
            debounced_button : out std_logic

        );
    end component;


    signal clk_tb, btn_tb, led_tb, dbnc1: std_logic;
    signal y1_tb, y2_tb: integer range 0 to 480;

begin

    t1: Jump
        port map(
            clk => clk_tb,
            btn => dbnc1,
            led => led_tb,
            y1 => y1_tb,
            y2 => y2_tb
        );

    t2: debounce
        port map(
            clk => clk_tb,
            button => btn_tb,
            debounced_button => dbnc1
        );


    clk_gen_proc: process
    begin
        wait for 4 ns;
        clk_tb <= '1';

        wait for 4 ns;
        clk_tb <= '0';

    end process clk_gen_proc;


    stimulus: process
    begin

        btn_tb <= '1';
        wait for 20.1ms;
        btn_tb <= '0';
        wait for 5 ms;

        btn_tb <= '1';
        wait for 20.1ms;
        btn_tb <= '0';


        wait;


    end process;



end Behavioral;
