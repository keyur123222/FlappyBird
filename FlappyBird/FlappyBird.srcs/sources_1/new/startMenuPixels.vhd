
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity pixel_pusher_hdmi is
    Port (
        clk         : in  STD_LOGIC;
        clk_enable  : in  STD_LOGIC;
        vs          : in  STD_LOGIC;
        pixel       : in  STD_LOGIC_VECTOR(7 downto 0);
        hcount      : in  STD_LOGIC_VECTOR(9 downto 0);
        vcount      : in std_logic_vector(9 downto 0);
        vid         : in  STD_LOGIC;
        R           : out STD_LOGIC_VECTOR(7 downto 0);
        G           : out STD_LOGIC_VECTOR(7 downto 0);
        B           : out STD_LOGIC_VECTOR(7 downto 0);
        addr        : out STD_LOGIC_VECTOR(17 downto 0);


        btn_up, start_btn: in std_logic;
        led_ind: out std_logic:= '0';

        birdPixel: in std_logic_vector(7 downto 0);
        addr2: out integer


    );
end pixel_pusher_hdmi;

architecture Behavioral of pixel_pusher_hdmi is
    signal internal_addr : unsigned(17 downto 0) := (others => '0');
    signal internal_addr2: integer range 0 to 1999:= 0;

    signal y1: integer range 0 to 480:= 230;
    signal y2: integer range 0 to 480:= 270;

    signal timer: integer range 0 to 125000000:= 0; -- (1 second)
    signal tempCounter: integer range 0 to 125000000:= 0; -- 1 seconds;

    type state is (start, playing, gameover);
    signal currentState: state:= start;

    signal tempBoolean: boolean:= FALSE;


begin

    process(clk)
    begin
        if rising_edge(clk) then

            case currentState is

                when start =>
                    
                    if clk_enable = '1' then
                        if vid = '1' and hcount < 480 then -- hcount < 480           
                            R <= pixel(7 downto 5) & "00000"; -- Resize to 8 bits
                            G <= pixel(4 downto 2) & "00000"; -- Resize to 8 bits
                            B <= pixel(1 downto 0) & "000000"; -- Resize to 8 bits

                            internal_addr <= internal_addr + 1;
                        else
                            R <= (others => '0');
                            G <= (others => '0');
                            B <= (others => '0');
                        end if;
                        if vs = '0' then
                            internal_addr <= (others => '0'); -- Reset on VS pulse
                        end if;

                    end if;

                    if start_btn = '1' and tempBoolean = FALSE then
                        currentState <= playing;
                    end if;



                when playing =>
                    if btn_up = '1' then -- jump
                        y1 <= y1 - 10;
                        y2 <= y2 - 10;
                        led_ind <= '1';
                    else
                        timer <= timer + 1;
                        if timer = 31250000 then --0.5 second
                            led_ind <= '0';
                            y1 <= y1 + 10;
                            y2 <= y2 + 10;
                            timer <= 0;
                        end if;
                    end if;
                    if y2 >= 410 or y1 < 5 then
                        currentState <= gameover;
                    end if;



                    if clk_enable = '1' then
                        if vid = '1' and hcount < 640 then -- hcount < 480     -- background    
                            R <= "011" & "00000"; -- blueish sky
                            G <= "101" & "00000"; -- blueish sky
                            B <= "11" & "000000"; -- blueish sky
                        else
                            R <= (others => '0');
                            G <= (others => '0');
                            B <= (others => '0');
                        end if;
                        if vs = '0' then
                            internal_addr <= (others => '0'); -- Reset on VS pulse
                        end if;

                        if vid = '1' and (hcount >= 0 and hcount < 640 and vcount >= 410 and vcount < 415) then -- line
                            R <= "010" & "00000";  --dark brown
                            G <= "001" & "00000";  --dark brown
                            B <= "00" & "000000";  --dark brown
                        end if;


                        if vid = '1' and (hcount >= 0 and hcount < 640 and vcount >= 415 and vcount < 435) then -- ground
                            R <= "000" & "00000";  --green
                            G <= "111" & "00000";  --green
                            B <= "01" & "000000";  --green
                        end if;

                        for i in 1 to 16  loop
                            if vid = '1' then
                                if tempCounter < 2083333 then -- 2083333
                                    if  (hcount >= 20+(i-1)*40 and hcount < 40+(i-1)*40 and vcount >= 415 and vcount < 435) then
                                        R <= "000" & "00000";  --green
                                        G <= "110" & "00000";  --green
                                        B <= "00" & "000000";  --green
                                    end if;
                                    tempCounter <= tempCounter + 1;
                                else
                                    if  (hcount >= (i-1)*40 and hcount < 20+(i-1)*40 and vcount >= 415 and vcount < 435) then
                                        R <= "000" & "00000";  --green
                                        G <= "110" & "00000";  --green
                                        B <= "00" & "000000";  --green
                                    end if;
                                    tempCounter <= tempCounter + 1;
                                end if;
                                if tempCounter = 4166666 then -- 4166666
                                    tempCounter <= 0;
                                end if;
                            end if;
                        end loop;

                        if vid = '1' and (hcount >= 0 and hcount < 640 and vcount >= 435 and vcount < 440) then -- line
                            R <= "101" & "00000";  --earth line
                            G <= "100" & "00000";  --earth line
                            B <= "01" & "000000";  --earth line
                        end if;

                        if vid = '1' and (hcount >= 0 and hcount < 640 and vcount >= 440 and vcount < 480) then -- ground
                            R <= "111" & "00000";  --earth
                            G <= "101" & "00000";  --earth
                            B <= "01" & "000000";  --earth
                        end if;

                        --                        if vid = '1' and (hcount >= 220 and hcount < 230 and vcount >= y1 and vcount < y2) then -- bird
                        --                            R <= "111" & "00000"; -- yellow
                        --                            G <= "111" & "00000"; -- yellow
                        --                            B <= "00" & "000000"; -- yellow
                        --                        end if;

                        if vid = '1' and (hcount >= 200 and hcount < 250 and vcount >= y1 and vcount < y2) then -- bird
                            R <= birdPixel(7 downto 5) & "00000"; -- 
                            G <= birdPixel(4 downto 2) & "00000"; -- 
                            B <= birdPixel(1 downto 0) & "000000"; -- 
                            internal_addr2 <= internal_addr2 + 1;
                        end if;
                        if vs = '0' then
                            internal_addr2 <= 0; -- Reset on VS pulse
                        end if;

                    end if;


                when gameover =>
                    if clk_enable = '1' then
                        if vid = '1' and hcount < 680 then -- hcount < 480           
                            R <= "111" & "00000"; -- Resize to 8 bits
                            G <= "000" & "00000"; -- Resize to 8 bits
                            B <= "00" & "000000"; -- Resize to 8 bits 
                        else
                            R <= (others => '0');
                            G <= (others => '0');
                            B <= (others => '0');
                        end if;
                        if vs = '0' then
                            internal_addr <= (others => '0'); -- Reset on VS pulse
                        end if;
                    end if;

                    if start_btn = '1' then
                        tempBoolean <= TRUE;
                    elsif btn_up = '1' and tempBoolean = TRUE then
                        y1 <= 230; --reset bird position
                        y2 <= 270;
                        currentState <= start;
                        tempBoolean <= FALSE;
                    end if;



                when others =>
                    currentState <= start;
            end case;


        end if;
    end process;

    addr <= std_logic_vector(internal_addr);
    addr2 <= internal_addr2;
end Behavioral;
