library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pipeGen is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        outp : out STD_LOGIC_VECTOR (3 downto 0);

        y1, y2: out integer range 50 to 230

    );
end pipeGen;

architecture Behavioral of pipeGen is
    signal feedback : std_logic;
    signal out_reg : std_logic_vector(3 downto 0):="0000";
    
    signal PipeGenTimer: integer range 0 to 1250000000-1:= 0; --10 seconds                        

    constant space: integer:= 120;
    signal y1_1, y2_1: integer range 50 to 480;

begin

    feedback <= not (out_reg(3) xor out_reg(2));
    process (clk,rst)
    begin
        if (rst='1') then
            out_reg <= "0000";
        elsif (rising_edge(clk)) then           
            PipeGenTimer <= PipeGenTimer + 1;
            if PipeGenTimer = 1250000000-1 then
                out_reg <= out_reg(2 downto 0) & feedback;
                PipeGenTimer <= 0;
            end if;
        end if;
    end process;
    
    outp <= out_reg;
    y1 <= y1_1;
    y2 <= y2_1;
    
    process(out_reg)
    begin
        case out_reg is
            when "0000" =>
                y1_1 <= 190;
                y2_1 <= 190 + space;
            when "0001" =>
                y1_1 <= 115;
                y2_1 <= 115 + space;
            when "0010" =>
                y1_1 <= 50;
                y2_1 <= 50 + space;
            when "0011" =>
                y1_1 <= 170;
                y2_1 <= 170 + space;
            when "0100" =>
                y1_1 <= 80;
                y2_1 <= 80 + space;
            when "0101" =>
                y1_1 <= 220;
                y2_1 <= 220 + space;
            when "0110" =>
                y1_1 <= 140;
                y2_1 <= 140 + space;
            when "0111" =>
                y1_1 <= 200;
                y2_1 <= 200 + space;
            when "1000" =>
                y1_1 <= 160;
                y2_1 <= 160 + space;
            when "1001" =>
                y1_1 <= 90;
                y2_1 <= 90 + space;
            when "1010" =>
                y1_1 <= 80;
                y2_1 <= 80 + space;
            when "1011" =>
                y1_1 <= 150;
                y2_1 <= 150 + space;
            when "1100" =>
                y1_1 <= 110;
                y2_1 <= 110 + space;
            when "1101" =>
                y1_1 <= 60;
                y2_1 <= 60 + space;
            when "1110" =>
                y1_1 <= 210;
                y2_1 <= 210 + space;
            when others =>
                y1_1 <= 190;
                y2_1 <= 190 + space;                    
        end case;
    end process;

end Behavioral;