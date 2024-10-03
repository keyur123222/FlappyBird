library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_ctrl is
    Port (
        clk         : in  STD_LOGIC;
        clk_enable  : in  STD_LOGIC;
        hcount      : out STD_LOGIC_VECTOR(9 downto 0);
        vcount      : out STD_LOGIC_VECTOR(9 downto 0);
        vid         : out STD_LOGIC;
        hs          : out STD_LOGIC;
        vs          : out STD_LOGIC
    
    );
end vga_ctrl;

architecture Behavioral of vga_ctrl is
    signal hcounter : unsigned(9 downto 0) := (others => '0');
    signal vcounter : unsigned(9 downto 0) := (others => '0');
    

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_enable = '1' then
                if hcounter < 799 then
                    hcounter <= hcounter + 1;
                else
                    hcounter <= (others => '0');
                    if vcounter < 524 then
                        vcounter <= vcounter + 1;
                    else
                        vcounter <= (others => '0');
                    end if;
                end if;
         
            end if;
        end if;
    end process;


    vid <= '1' when hcounter < 640 and vcounter < 480 else '0';
    hs <= '0' when hcounter >= 656 and hcounter <= 751 else '1';
    vs <= '0' when vcounter >= 490 and vcounter <= 491 else '1';

    hcount <= std_logic_vector(hcounter);
    vcount <= std_logic_vector(vcounter);

end Behavioral;