library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity clock_div_9600 is
    port(
        clk  : in std_logic;        -- 125 Mhz clock
        div : out std_logic        -- led, '1' = on
    );
end clock_div_9600;

architecture behavior of clock_div_9600 is

    signal counter : std_logic_vector(26 downto 0) := (others => '0');

begin
    process(clk)
    begin
    
        if rising_edge(clk) then       
                -- count one full led period (1 Hz)               
                if (unsigned(counter) < 13020 - 1) then
                    counter <= std_logic_vector(unsigned(counter) + 1);      
                else
                    counter <= (others => '0');                    
                end if;
                -- turn the led on for half of the period (50% duty cycle)
                -- when sw0 is high
                if (unsigned(counter) < 1) then
                    div <= '1';
                else
                    div <= '0';               
                end if;    
            end if;
    end process;
end behavior;