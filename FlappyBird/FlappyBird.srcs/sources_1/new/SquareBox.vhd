-- Bird Game Module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity bird_game is
    Port (
        clk         : in  STD_LOGIC;
        clk_enable  : in  STD_LOGIC;
        btn_up      : in  STD_LOGIC;
        btn_down    : in  STD_LOGIC;
        hcount      : in  STD_LOGIC_VECTOR(9 downto 0);
        vcount      : in  STD_LOGIC_VECTOR(9 downto 0);
        vid         : in  STD_LOGIC;
        hs          : in  STD_LOGIC;
        vs          : in  STD_LOGIC;
        R           : out STD_LOGIC_VECTOR(7 downto 0);
        G           : out STD_LOGIC_VECTOR(7 downto 0);
        B           : out STD_LOGIC_VECTOR(7 downto 0);
        addr        : out STD_LOGIC_VECTOR(17 downto 0)
    );
end bird_game;

architecture Behavioral of bird_game is
    signal bird_y   : integer range 0 to 479 := 240; -- Initial position of the bird

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_enable = '1' then

                -- Move the bird up if btn_up is pressed
                if btn_up = '1' then
                    bird_y <= bird_y - 1;
                end if;

                -- Move the bird down if btn_down is pressed
                if btn_down = '1' then
                    bird_y <= bird_y + 1;
                end if;
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) and clk_enable = '1' then
            -- Set bird color to black (RGB: 0, 0, 0)
            if vid = '1' and hcount < 20 and vcount >= bird_y and vcount < bird_y + 20 then
                R <= (others => '1');
                G <= (others => '1');
                B <= (others => '1');
            else
                R <= (others => '0');
                G <= (others => '0');
                B <= (others => '0');
            end if;
        end if;
    end process;
    -- Update address for pixel pushing
    addr <= std_logic_vector(to_unsigned(to_integer(unsigned(vcount)) * 640 + to_integer(unsigned(hcount)), 18));

end Behavioral;
