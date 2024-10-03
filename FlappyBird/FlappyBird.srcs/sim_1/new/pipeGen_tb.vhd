library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pipegen_tb is
    --  Port ( );
end pipegen_tb;

architecture Behavioral of pipegen_tb is
    signal clk_tb : std_logic := '1';
    signal en_tb, en1_tb: std_logic:= '0';
    signal rst_tb : std_logic;
    signal outp_tb : std_logic_vector(3 downto 0);
    signal y1_tb, y2_tb: integer;
    constant clk_period : time := 8 ns;

    component pipegen is
        Port (
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            outp : out STD_LOGIC_VECTOR (3 downto 0);
            en: in std_logic;
            y1, y2: out integer range 50 to 230

        );
    end component;

    component clock_div is
        Port (
            clk: in std_logic;
            div: out std_logic

        );
    end component;


begin
    process
    begin
        clk_tb <= not clk_tb;
        wait for clk_period/2;
    end process;

    process
    begin
        rst_tb <= '1';
        wait for 6 ns;

        rst_tb <= '0';
        wait for 200 ns;
    end process;
    
    
    
    


    DUT : pipegen port map (en_tb, rst_tb, outp_tb, en1_tb, y1_tb, y2_tb );
    DU2 : clock_div port map(clk_tb, en_tb);
end Behavioral;