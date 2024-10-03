library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Jump is
    port (
        clk: in std_logic;
        btn: in std_logic;
        led: out std_logic;
        y1, y2: out integer
    );

end Jump;

architecture Behavioral of Jump is

    signal y1_pos: integer range 0 to 480:= 240;
    signal y2_pos: integer range 0 to 480:= 250;

    signal dbnc1: std_logic;
   

    component debounce is
        port (
            clk : in std_logic;
            button : in std_logic;
            debounced_button : out std_logic

        );
    end component;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if btn = '1' then
                y1_pos <= y1_pos - 10;
                y2_pos <= y2_pos - 10;
                led <= '1';
            else
                led <= '0';
            end if;
        end if;
    end process;

    y1 <= y1_pos;
    y2 <= y2_pos;

end Behavioral;
