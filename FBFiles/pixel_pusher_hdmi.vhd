library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity pixel_pusher_hdmi is
    Port (
        clk         : in  STD_LOGIC;
        clk_enable  : in  STD_LOGIC;
        vs          : in  STD_LOGIC;

        hcount      : in  STD_LOGIC_VECTOR(9 downto 0);
        vcount      : in std_logic_vector(9 downto 0);
        vid         : in  STD_LOGIC;
        R           : out STD_LOGIC_VECTOR(7 downto 0);
        G           : out STD_LOGIC_VECTOR(7 downto 0);
        B           : out STD_LOGIC_VECTOR(7 downto 0);
        addr        : out STD_LOGIC_VECTOR(17 downto 0);


        btn_up, start_btn, skin_btn, btn_4: in std_logic;
        led_ind: out std_logic:= '0';

        pixel       : in  STD_LOGIC_VECTOR(7 downto 0);
        birdPixel, bird2Pixel, bird3Pixel, bird4Pixel, gopixels: in std_logic_vector(7 downto 0);

        addr2, addr3, addr4, addr5, addr6: out integer;
        uart_en, uart_rst, sender_state: out std_logic
        




    );
end pixel_pusher_hdmi;

architecture Behavioral of pixel_pusher_hdmi is
    signal internal_addr : unsigned(17 downto 0) := (others => '0');
    signal internal_addr2, internal_addr3, internal_addr4, internal_addr5: integer range 0 to 1999:= 0;
    signal internal_addr6: integer range 0 to 2849:= 0;

    signal y1: integer range 0 to 480:= 230;
    signal y2: integer range 0 to 480:= 270;

    signal h1: integer range -70 to 640:= 640;
    signal h2: integer range 0 to 710:= 710;

    signal birdx1: integer:= 200;
    signal birdx2: integer:= 250;

    signal timer: integer range 0 to 125000000:= 0; -- (1 second)
    signal tempCounter: integer range 0 to 125000000:= 0; -- 1 seconds;
    signal pipeMoveTimer: integer range 0 to 12500000:= 0; -- 0.5 seconds in 25Mhz
    signal pipeGenTimer: integer range 0 to 625000000:= 0; -- 5 seconds
    signal skinTimer, btn1, btn2: integer range 0 to 25000000:= 0;
    
    signal speedTimer: integer range 0 to 25000000:= 0;
    signal Utimer: integer range 0 to 125000003;

    type state is (start, playing, gameover);
    signal currentState: state:= start;

    signal tempBoolean: boolean:= FALSE;
    signal buttonCheck: boolean:= FALSE;
    signal buttonCheck2: boolean:= FALSE;

    signal pipeGenCounter: std_logic_vector(3 downto 0);

    signal tempy1, tempy2: integer;

    signal skinVector, speedVector: std_logic_vector(1 downto 0):= "00";
    signal skinSelect, skinSelect2: boolean:= TRUE;
    signal speedSelect, speedSelect2: boolean:= FALSE;
    signal speedIncrement: integer;

begin

    process(clk)
    begin
        if rising_edge(clk) then

            case currentState is

                --menu screen
                when start =>
                    uart_rst <= '0'; -- turn off uart rst (clear screen)
                    

                    if clk_enable = '1' then
                        if vid = '1' and hcount >= 80 and hcount < 560 then -- hcount < 480           
                            R <= pixel(7 downto 5) & "00000"; -- Resize to 8 bits
                            G <= pixel(4 downto 2) & "00000"; -- Resize to 8 bits
                            B <= pixel(1 downto 0) & "000000"; -- Resize to 8 bits

                            internal_addr <= internal_addr + 1;
                        elsif vid = '1' and hcount >= 0 and hcount < 80 and vcount >= 0 and vcount < 430 then
                            R <= "011" & "00000"; -- blueish sky
                            G <= "101" & "00000"; -- blueish sky
                            B <= "11" & "000000"; -- blueish sky
                        elsif vid = '1' and hcount >= 560 and hcount < 640 and vcount >= 0 and vcount < 430 then
                            R <= "011" & "00000"; -- blueish sky
                            G <= "101" & "00000"; -- blueish sky
                            B <= "11" & "000000"; -- blueish sky
                        elsif vid = '1' and hcount >= 0 and hcount < 80 and vcount >= 430 and vcount < 480 then
                            R <= "000" & "00000"; -- green ground
                            G <= "011" & "00000"; -- green ground
                            B <= "00" & "000000"; -- green ground
                        elsif vid = '1' and hcount >= 560 and hcount < 640 and vcount >= 430 and vcount < 480 then
                            R <= "000" & "00000"; -- green ground
                            G <= "011" & "00000"; -- green ground
                            B <= "00" & "000000"; -- green ground
                        end if;
                        if vs = '0' then
                            internal_addr <= (others => '0'); -- Reset on VS pulse
                        end if;

                    end if;


                    --button to go to playing state
--                    if start_btn = '1' and tempBoolean = FALSE then
--                        currentState <= playing;
--                    end if;
                    
                    if start_btn = '1' then
                        btn2 <= btn2 + 1;
                        if buttonCheck = FALSE  and btn2 = 7 then
                            buttonCheck <= TRUE;
                            btn2 <= 0;
                           currentState <= playing;

                        end if;
                    else
                        buttonCheck <= FALSE;
                          
                    end if;
                    
                    

                    --skin changer
                    if skin_btn = '1' then
                        skinTimer <= skinTimer + 1;
                        if buttonCheck = FALSE  and skinTimer = 8 then
                            skinVector <= skinVector + 1;
                            buttonCheck <= TRUE;
                            skinTimer <= 0;

                        end if;
                    else
                        buttonCheck <= FALSE;
                    end if;
                    
                    --difficulty changer
                    if btn_4 = '1' then
                        speedTimer <= speedTimer + 1;  
                        if buttonCheck2 = FALSE  and speedTimer = 8 then
                            speedVector <= speedVector + 1;
                            buttonCheck2 <= TRUE;
                            speedTimer <= 0;
                        end if;
                    else
                        buttonCheck2 <= FALSE;
                    end if;

                    --skin select menu screen
                    if clk_enable = '1' then
                        if skinVector <= "00" then
                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 145 and vcount < 185) then -- bird
                                R <= birdPixel(7 downto 5) & "00000"; -- 
                                G <= birdPixel(4 downto 2) & "00000"; -- 
                                B <= birdPixel(1 downto 0) & "000000"; -- 
                                internal_addr2 <= internal_addr2 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr2 <= 0; -- Reset on VS pulse
                            end if;
                            skinSelect <= TRUE;
                            skinSelect2 <= TRUE;
                        elsif skinVector <= "01" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 145 and vcount < 185) then -- bird
                                R <= bird2Pixel(7 downto 5) & "00000"; -- 
                                G <= bird2Pixel(4 downto 2) & "00000"; -- 
                                B <= bird2Pixel(1 downto 0) & "000000"; -- 
                                internal_addr3 <= internal_addr3 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr3 <= 0; -- Reset on VS pulse
                            end if;

                            skinSelect <= FALSE;
                            skinSelect2 <= TRUE;
                        elsif skinVector <= "10" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 145 and vcount < 185) then -- bird
                                R <= bird3Pixel(7 downto 5) & "00000"; -- 
                                G <= bird3Pixel(4 downto 2) & "00000"; -- 
                                B <= bird3Pixel(1 downto 0) & "000000"; -- 
                                internal_addr4 <= internal_addr4 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr4 <= 0; -- Reset on VS pulse
                            end if;

                            skinSelect <= TRUE;
                            skinSelect2 <= FALSE;
                        elsif skinVector <= "11" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 145 and vcount < 185) then -- bird
                                R <= bird4Pixel(7 downto 5) & "00000"; -- 
                                G <= bird4Pixel(4 downto 2) & "00000"; -- 
                                B <= bird4Pixel(1 downto 0) & "000000"; -- 
                                internal_addr5 <= internal_addr5 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr5 <= 0; -- Reset on VS pulse
                            end if;

                            skinSelect <= FALSE;
                            skinSelect2 <= FALSE;

                        end if;
                    end if;

                    

                    --speed difficulty select menu screen
                    if clk_enable = '1' then
                        if speedVector <= "00" then
                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 332 and vcount < 382) then -- bird
                                R <= "000" & "00000"; -- green
                                G <= "111" & "00000"; -- green
                                B <= "00" & "000000"; -- green
                            end if;

                            speedSelect <= FALSE;
                            speedSelect2 <= FALSE;
                            speedIncrement <= 2;
                        elsif speedVector <= "01" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 332 and vcount < 382) then -- bird
                                R <= "111" & "00000"; -- Yellow
                                G <= "111" & "00000"; -- Yellow
                                B <= "00" & "000000"; -- Yellow
                            end if;

                            speedSelect <= FALSE;
                            speedSelect2 <= TRUE;
                            speedIncrement <= 4;
                        elsif speedVector <= "10" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 332 and vcount < 382) then -- bird
                                R <= "111" & "00000"; -- Orange
                                G <= "011" & "00000"; -- Orange
                                B <= "00" & "000000"; -- Orange
                            end if;

                            speedSelect <= TRUE;
                            speedSelect2 <= FALSE;
                            speedIncrement <= 5;
                        elsif speedVector <= "11" then

                            if vid = '1' and (hcount >= 295 and hcount < 345 and vcount >= 332 and vcount < 382) then -- bird
                                R <= "111" & "00000"; -- Red
                                G <= "001" & "00000"; -- Red
                                B <= "00" & "000000"; -- Red
                            end if;

                            speedSelect <= TRUE;
                            speedSelect2 <= TRUE;
                            speedIncrement <= 8;
                        end if;
                    end if;


                --start screen
                when playing =>
                    if btn_up = '1' then -- jump
                        y1 <= y1 - 15;
                        y2 <= y2 - 15;
                        led_ind <= '1';
                    else
                        timer <= timer + 1;
                        if timer = 900000 then -- falling speed second
                            led_ind <= '0';
                            y1 <= y1 + 1;
                            y2 <= y2 + 1;
                            timer <= 0;
                        end if;
                    end if;

                    --object collison
                    if y2 >= 410 or y1 < 5 then
                        currentState <= gameover;
                    end if;

                    if (birdx1 < h2) then
                        if (birdx2 >= h1 and y1 < tempy1) then --top pipe collison
                            currentState <= gameover;
                        elsif (birdx2 >= h1 and y2 > tempy2 ) then -- bottom pipe collison
                            currentState <= gameover;
                        end if;
                    end if;

                    --score detection
                    if h2 = birdx1 then
                        uart_en <= '1';
                    else
                        uart_en <= '0';
                    end if;



                    
                    if clk_enable = '1' then
                        --draw background
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

                        --draw dark brown line
                        if vid = '1' and (hcount >= 0 and hcount < 640 and vcount >= 410 and vcount < 415) then -- line
                            R <= "010" & "00000";  --dark brown
                            G <= "001" & "00000";  --dark brown
                            B <= "00" & "000000";  --dark brown
                        end if;

                        --draw ground
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


                        if skinSelect = TRUE and skinSelect2 = TRUE then
                            if vid = '1' and (hcount >= birdx1 and hcount < birdx2 and vcount >= y1 and vcount < y2) then -- bird
                                R <= birdPixel(7 downto 5) & "00000"; -- 
                                G <= birdPixel(4 downto 2) & "00000"; -- 
                                B <= birdPixel(1 downto 0) & "000000"; -- 
                                internal_addr2 <= internal_addr2 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr2 <= 0; -- Reset on VS pulse
                            end if;
                        elsif skinSelect = FALSE and skinSelect2 = TRUE then
                            if vid = '1' and (hcount >= birdx1 and hcount < birdx2 and vcount >= y1 and vcount < y2) then -- bird
                                R <= bird2Pixel(7 downto 5) & "00000"; -- 
                                G <= bird2Pixel(4 downto 2) & "00000"; -- 
                                B <= bird2Pixel(1 downto 0) & "000000"; -- 
                                internal_addr3 <= internal_addr3 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr3 <= 0; -- Reset on VS pulse
                            end if;
                        elsif skinSelect = TRUE and skinSelect2 = FALSE then
                            if vid = '1' and (hcount >= birdx1 and hcount < birdx2 and vcount >= y1 and vcount < y2) then -- bird
                                R <= bird3Pixel(7 downto 5) & "00000"; -- 
                                G <= bird3Pixel(4 downto 2) & "00000"; -- 
                                B <= bird3Pixel(1 downto 0) & "000000"; -- 
                                internal_addr4 <= internal_addr4 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr4 <= 0; -- Reset on VS pulse
                            end if;
                        elsif skinSelect = FALSE and skinSelect2 = FALSE then
                            if vid = '1' and (hcount >= birdx1 and hcount < birdx2 and vcount >= y1 and vcount < y2) then -- bird
                                R <= bird4Pixel(7 downto 5) & "00000"; -- 
                                G <= bird4Pixel(4 downto 2) & "00000"; -- 
                                B <= bird4Pixel(1 downto 0) & "000000"; -- 
                                internal_addr5 <= internal_addr5 + 1;
                            end if;
                            if vs = '0' then
                                internal_addr5 <= 0; -- Reset on VS pulse
                            end if;

                        end if;

                        --pipe speed controller
                        if pipeMoveTimer = 410000 then
                            h1 <= h1 - 1;
                            h2 <= h2 - 1;
                            pipeMoveTimer <= 0;
                        else
                            pipeMoveTimer <= pipeMoveTimer + speedIncrement;
                        end if;

                        if h1 = -70 then
                            h1 <= 640;
                            h2 <= 710;
                            pipeGenCounter <= pipeGenCounter + 1;
                        end if;

                        --pipe config
                        if pipeGenCounter <= "0000" then
                            tempy1 <= 190;
                            tempy2 <= 190 + 120;
                        elsif pipeGenCounter <= "0001" then
                            tempy1 <= 30;
                            tempy2 <= 30 + 120;
                        elsif pipeGenCounter <= "0010" then
                            tempy1 <= 170;
                            tempy2 <= 170 + 120;
                        elsif pipeGenCounter <= "0011" then
                            tempy1 <= 260;
                            tempy2 <= 260 + 120;
                        elsif pipeGenCounter <= "0100" then
                            tempy1 <= 180;
                            tempy2 <= 180 + 120;
                        elsif pipeGenCounter <= "0101" then
                            tempy1 <= 200;
                            tempy2 <= 200 + 120;
                        elsif pipeGenCounter <= "0110" then
                            tempy1 <= 290;
                            tempy2 <= 290 + 120;
                        elsif pipeGenCounter <= "0111" then
                            tempy1 <= 80;
                            tempy2 <= 80 + 120;
                        elsif pipeGenCounter <= "1000" then
                            tempy1 <= 20;
                            tempy2 <= 20 + 120;
                        elsif pipeGenCounter <= "1001" then
                            tempy1 <= 70;
                            tempy2 <= 70 + 120;
                        elsif pipeGenCounter <= "1010" then
                            tempy1 <= 0;
                            tempy2 <= 0 + 120;
                        elsif pipeGenCounter <= "1011" then
                            tempy1 <= 40;
                            tempy2 <= 40 + 120;
                        elsif pipeGenCounter <= "1100" then
                            tempy1 <= 260;
                            tempy2 <= 260 + 120;
                        elsif pipeGenCounter <= "1101" then
                            tempy1 <= 150;
                            tempy2 <= 150 + 120;
                        elsif pipeGenCounter <= "1110" then
                            tempy1 <= 270;
                            tempy2 <= 270 + 120;
                        elsif pipeGenCounter <= "1111" then
                            tempy1 <= 15;
                            tempy2 <= 15 + 120;
                        end if;

                        --drawing top and bottom pipe
                        if vid = '1' and (hcount >= h1 and hcount < h2 and vcount >= 0 and vcount < tempy1) then -- pipe top
                            R <= "000" & "00000";  --pipe top
                            G <= "100" & "00000";  --pipe top 
                            B <= "00" & "000000";  --pipe top 
                        end if;

                        if vid = '1' and (hcount >= h1 and hcount < h2 and vcount >= tempy2 and vcount < 410) then -- pipe bottom
                            R <= "000" & "00000"; --pipe bottom
                            G <= "100" & "00000"; --pipe bottom
                            B <= "00" & "000000"; --pipe bottom
                        end if;

                    end if;

                --death screen
                when gameover =>
                    if clk_enable = '1' then
                        if vid = '1' and hcount >= 283 and hcount < 358 and vcount >= 221 and vcount < 259 then -- hcount < 480           
                            R <= gopixels(7 downto 5) & "00000"; 
                            G <= gopixels(4 downto 2) & "00000"; 
                            B <= gopixels(1 downto 0) & "000000"; 
                            internal_addr6 <= internal_addr6 + 1;
                        end if;
                        if vs = '0' then
                            internal_addr6 <= 0; -- Reset on VS pulse
                        end if;
                    end if;

                    
                    --Reset btn
                    if start_btn = '1' then
                        btn1 <= btn1 + 1;
                        if buttonCheck = FALSE  and btn1 = 7 then
                            buttonCheck <= TRUE;
                            btn1 <= 0;
                            
                            y1 <= 230; --reset bird position
                            y2 <= 270;
                            h1 <= 640; --reset pipe position
                            h2 <= 710;
                            currentState <= start;
                            uart_rst <= '1'; --reset the score                   
                            pipeGenCounter <= "0000";                           
                            speedIncrement <= 0;
                           
                            
                        end if;
                    else
                        buttonCheck <= FALSE;
                        
                    end if;



                when others =>
                    currentState <= start;
            end case;


        end if;
    end process;

    addr <= std_logic_vector(internal_addr);
    addr2 <= internal_addr2;
    addr3 <= internal_addr3;
    addr4 <= internal_addr4;
    addr5 <= internal_addr5;
    addr6 <= internal_addr6;
end Behavioral;