library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned .all;
use ieee.numeric_std.all;

entity my_alu is
    port (
        clk, en: in std_logic;
        opcode: in std_logic_vector(3 downto 0);
        A, B: in std_logic_vector(15 downto 0);
        S: out std_logic_vector(15 downto 0)
    );
end my_alu;

architecture Behavioral of my_alu is

begin
    process(clk, A, B, opcode)
    begin
        if rising_edge(clk) then
            if en = '1' then
                case opcode is
                    when "0000" => S <= std_logic_vector(unsigned(A) + unsigned(B));
                    when "0001" => S <= std_logic_vector(unsigned(A) - unsigned(B));
                    when "0010" => S <= std_logic_vector(unsigned(A) + "0001");
                    when "0011" => S <= std_logic_vector(unsigned(A) - "0001");
                    when "0100" => S <= std_logic_vector("0000" - unsigned(A));
                    when "0101" => if (unsigned(A) > unsigned(B)) then
                            S <= "0001";
                        else
                            S <= "0000";
                        end if;
                    when "0110" => S <= (A(2 downto 0)) & '0';
                    when "0111" => S <= '0' & (A(3 downto 1));

                    when "1000" => S <= std_logic_vector (shift_right(unsigned(A), 1));

                    when "1001" => S <= NOT A;
                    when "1010" => S <= A AND B;
                    when "1011" => S <= A OR B;
                    when "1100" => S <= A XOR B;
                    when "1101" => S <= A XNOR B;
                    when "1110" => S <= A NAND B;
                    when "1111" => S <= A NOR B;
                    when others => S <= "0000";
                end case;
            end if;
        end if;
    end process;
end Behavioral;