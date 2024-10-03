library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
    port (
        clk, en, send, rst : in std_logic;
        char               : in std_logic_vector(7 downto 0);
        ready, tx          : out std_logic
    );
end uart_tx;

architecture behavior of uart_tx is

    type state is (idle, start, data, stop);
    signal current_state : state := idle;
    signal shift_reg   : std_logic_vector(7 downto 0) := (others => '0');
    signal bit_counter: integer range 0 to 7:= 0;

begin

    process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                shift_reg <= (others => '1');
                current_state <= idle;
                bit_counter <= 0;
                ready <= '1';
                tx <= '1';
            elsif en = '1' then
                case current_state is
                    when idle =>
                        ready <= '1';
                        tx <= '1';

                        if send = '1' and en = '1'then
                            shift_reg <= char;
                            bit_counter <= 0;
                            current_state <= start;
                        end if;

                    when start =>
                        ready <= '0';
                        tx <= '0'; --start bit
                        current_state <= data;

                    when data =>
                        tx <= shift_reg(bit_counter);

                        if bit_counter = 7 then
                            current_state <= stop;
                        else
                            bit_counter <= bit_counter + 1;
                        end if;

                    when stop =>
                        tx <= '1';
                        current_state <= idle;  

                    when others =>
                        current_state <= idle;

                end case;
            end if;
        end if;
    end process;

end behavior;
