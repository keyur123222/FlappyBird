library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pipeGen is
    Port (
        clk : in STD_LOGIC;
        pipeGenVector: in std_logic_vector(3 downto 0);
        y1, y2: out integer

    );
end pipeGen;

architecture Behavioral of pipeGen is

    signal y1_1, y2_1: integer;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if pipeGenVector <= "0000" then
                y1_1 <= 190;
                y2_1 <= 190 + 120;
            elsif pipeGenVector <= "0001" then
                y1_1 <= 30;
                y2_1 <= 30 + 120;
            elsif pipeGenVector <= "0010" then
                y1_1 <= 170;
                y2_1 <= 170 + 120;
            elsif pipeGenVector <= "0011" then
                y1_1 <= 260;
                y2_1 <= 260 + 120;
            elsif pipeGenVector <= "0100" then
                y1_1 <= 180;
                y2_1 <= 180 + 120;
            elsif pipeGenVector <= "0101" then
                y1_1 <= 200;
                y2_1 <= 200 + 120;
            elsif pipeGenVector <= "0110" then
                y1_1 <= 290;
                y2_1 <= 290 + 120;
            elsif pipeGenVector <= "0111" then
                y1_1 <= 80;
                y2_1 <= 80 + 120;
            elsif pipeGenVector <= "1000" then
                y1_1 <= 20;
                y2_1 <= 20 + 120;
            elsif pipeGenVector <= "1001" then
                y1_1 <= 70;
                y2_1 <= 70 + 120;
            elsif pipeGenVector <= "1010" then
                y1_1 <= 0;
                y2_1 <= 0 + 120;
            elsif pipeGenVector <= "1011" then
                y1_1 <= 40;
                y2_1 <= 40 + 120;
            elsif pipeGenVector <= "1100" then
                y1_1 <= 260;
                y2_1 <= 260 + 120;
            elsif pipeGenVector <= "1101" then
                y1_1 <= 150;
                y2_1 <= 150 + 120;
            elsif pipeGenVector <= "1110" then
                y1_1 <= 270;
                y2_1 <= 270 + 120;
            elsif pipeGenVector <= "1111" then
                y1_1 <= 15;
                y2_1 <= 15 + 120;
            end if;
        end if;
    end process;



end Behavioral;