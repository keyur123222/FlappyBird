library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity regs is
    port (
        clk, en, rst: in std_logic;
        id1, id2: in std_logic_vector(4 downto 0);
        wr_en1, wr_en2: in std_logic;
        din1, din2: in std_logic_vector(15 downto 0);
        dout1, dout2: out std_logic_vector(15 downto 0)
    );
end regs;

architecture Behavioral of regs is

    type words is array(31 downto 0) of std_logic_vector(15 downto 0);
    -- making a array of length 32 each 16 bit vectors
    signal registers: words;


begin

    dout1 <= registers(to_integer(unsigned(id1))); --registers[0:32]
    dout2 <= registers(to_integer(unsigned(id2)));

    process(clk)
    begin
        if rising_edge(clk) then
            registers(0) <= (others => '0');

            if rst = '1' then
                registers <= (others => (others => '0'));
            elsif en = '1' then
                if wr_en1 = '1' then
                    registers(to_integer(unsigned(id1))) <= din1;
                end if;

                if wr_en2 = '1' then
                    registers(to_integer(unsigned(id2))) <= din2;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
