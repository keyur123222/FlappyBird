
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FlappyBird_top is
    port (
        clk: in std_logic;
        data_p, data_n: out std_logic_vector(2 downto 0);
        clk_p, clk_n: out std_logic;
        hdmi_tx_hpd: out std_logic;

        btn, btn_start, btn_skin, btn_speed: in std_logic;
        led, RXD: out std_logic

    );
end FlappyBird_top;

architecture Behavioral of FlappyBird_top is

    component pixel_pusher_hdmi is
        port (
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
    end component;


    component vga_ctrl is
        port (
            clk         : in  STD_LOGIC;
            clk_enable  : in  STD_LOGIC;
            hcount      : out STD_LOGIC_VECTOR(9 downto 0);
            vcount      : out STD_LOGIC_VECTOR(9 downto 0);
            vid         : out STD_LOGIC;
            hs          : out STD_LOGIC;
            vs          : out STD_LOGIC
        );
    end component;


    component picture is
        port (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;


    component clock_div is
        port(
            clk  : in std_logic;        -- 125 Mhz clock
            div : out std_logic         -- 25 Mhz 
        );
    end component;

    component clock_div_9600 is
        port(
            clk  : in std_logic;        -- 125 Mhz clock
            div : out std_logic         -- 9600 hz 
        );
    end component;

    component rgb2dvi_0 is
        PORT (
            TMDS_Clk_p : OUT STD_LOGIC;
            TMDS_Clk_n : OUT STD_LOGIC;
            TMDS_Data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- RGB(HDMI)          
            TMDS_Data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            aRst : IN STD_LOGIC;
            vid_pData : IN STD_LOGIC_VECTOR(23 DOWNTO 0); --RGB
            vid_pVDE : IN STD_LOGIC;   --vid
            vid_pHSync : IN STD_LOGIC; --hs
            vid_pVSync : IN STD_LOGIC; --vs
            PixelClk : IN STD_LOGIC;   --pixelclk
            SerialClk : IN STD_LOGIC   --serialclk
        );
    end component;

    component debounce is
        port (
            clk : in std_logic;
            button : in std_logic;
            debounced_button : out std_logic
        );
    end component;

    component birdPixels is
        port (
            clk: in std_logic;
            addr: in integer;
            pixel_out: out std_logic_vector(7 downto 0)

        );
    end component;

    component bird2Pixels is
        port (
            clk: in std_logic;
            addr: in integer;
            pixel_out: out std_logic_vector(7 downto 0)

        );
    end component;

    component stevePixels is
        port (
            clk: in std_logic;
            addr: in integer;
            pixel_out: out std_logic_vector(7 downto 0)

        );
    end component;
    
    component susPixels is
        port (
            clk: in std_logic;
            addr: in integer;
            pixel_out: out std_logic_vector(7 downto 0)

        );
    end component;
    
    component gameOverPixels is
        port (
            clk: in std_logic;
            addr: in integer;
            pixel_out: out std_logic_vector(7 downto 0)

        );
    end component;

    component uart_tx is
        port (
            clk, en, send, rst : in std_logic;
            char               : in std_logic_vector(7 downto 0);
            ready, tx          : out std_logic

        );
    end component;

    component sender is
        port (
            rst, clk, en, btn, rdy: in std_logic;
            send: out std_logic;
            char: out std_logic_vector(7 downto 0);
            stateBtn: in std_logic

        );
    end component;


    signal div_out, div_9600, vs_out, hs_out, vid_out: std_logic;
    signal addr_out: std_logic_vector (17 downto 0);
    signal pixel_out, birdPixel_out, bird2Pixel_out, bird3Pixel_out, bird4Pixel_out, goPixels_out: std_logic_vector(7 downto 0);
    signal hcount_out, vcount_out: std_logic_vector(9 downto 0);
    signal rgb24: std_logic_vector(23 downto 0);
    signal vga_r, vga_g, vga_b: std_logic_vector(7 downto 0);

    signal arst, arst_n: std_logic;

    signal dbnc1, dbnc2, dbnc3, dbnc4, ledind : std_logic;

    signal unused: std_logic;
    signal addr2_out, addr3_out, addr4_out, addr5_out, addr6_out: integer;

    signal pipeGenCounterOut_signal: STD_LOGIC_VECTOR (3 downto 0);

    signal y1_out, y2_out: integer;

    signal send_signal, rst_signal, ready_signal, uart_btn_signal, uart_rst_signal, uart_en_signal, sender_state_out: std_logic;
    signal char_signal: std_logic_vector(7 downto 0);


begin

    u1: clock_div
        port map(
            clk => clk,
            div => div_out
        );

    u2: picture
        port map(
            clka => clk,
            addra => addr_out,
            douta => pixel_out
        );



    u3: pixel_pusher_hdmi
        port map(
            clk => clk,
            clk_enable => div_out,
            vs => vs_out,
            pixel => pixel_out,
            hcount => hcount_out,
            vcount => vcount_out,
            vid => vid_out,
            R => vga_r,
            G => vga_g,
            B => vga_b,
            addr => addr_out,
            btn_up => dbnc1,
            led_ind => ledind,
            start_btn => dbnc2,
            skin_btn => dbnc3,
            birdPixel => birdPixel_out,
            bird2Pixel => bird2Pixel_out,
            bird3Pixel => bird3Pixel_out,
            bird4Pixel => bird4Pixel_out,
            gopixels => gopixels_out,
            addr2 => addr2_out,
            addr3 => addr3_out,
            addr4 => addr4_out,
            addr5 => addr5_out,
            addr6 => addr6_out,
            btn_4 => dbnc4,
            uart_en => uart_en_signal,
            uart_rst => uart_rst_signal,
            sender_state => sender_state_out


        );

    u4: vga_ctrl
        port map (
            clk => clk,
            clk_enable => div_out,
            hcount =>  hcount_out,
            vcount =>  vcount_out,
            vid => vid_out,
            hs => hs_out,
            vs => vs_out
        );

    u5: rgb2dvi_0
        port map(
            aRst => '0',
            vid_pData => rgb24,
            vid_pVDE => vid_out,
            vid_pHSync => hs_out,
            vid_pVSync => vs_out,
            PixelClk => div_out,
            SerialClk => clk,
            TMDS_Clk_p => clk_p,
            TMDS_Clk_n => clk_n,
            TMDS_Data_p=> data_p,
            TMDS_Data_n=> data_n
        );

    jmp_btn: debounce
        port map(
            clk => clk,
            button => btn,
            debounced_button => dbnc1
        );

    start_btn: debounce
        port map(
            clk => clk,
            button => btn_start,
            debounced_button => dbnc2
        );

    skin_btn: debounce
        port map(
            clk => clk,
            button => btn_skin,
            debounced_button => dbnc3
        );

    diff_btn: debounce
        port map(
            clk => clk,
            button => btn_speed,
            debounced_button => dbnc4
        );

    u6: birdPixels
        port map(
            clk => clk,
            addr => addr2_out,
            pixel_out => birdPixel_out
        );

    u7: bird2Pixels
        port map(
            clk => clk,
            addr => addr3_out,
            pixel_out => bird2Pixel_out
        );

    u8: stevePixels
        port map(
            clk => clk,
            addr => addr4_out,
            pixel_out => bird3Pixel_out
        );
        
    u9: susPixels
        port map(
            clk => clk,
            addr => addr5_out,
            pixel_out => bird4Pixel_out
        );   
        
     u10: gameOverPixels
        port map(
            clk => clk,
            addr => addr6_out,
            pixel_out => gopixels_out
        );     
        

    u11: clock_div_9600
        port map(
            clk => clk,
            div => div_9600
        );

    u12: uart_tx
        port map(
            clk => clk,
            en  => div_9600,
            send => send_signal,
            rst => uart_rst_signal,
            char => char_signal,
            ready => ready_signal,
            tx => RXD
        );

    u13: sender
        port map(
            clk => clk,
            en =>  div_9600,
            rst => uart_rst_signal,
            rdy => ready_signal,
            btn => uart_en_signal,
            send => send_signal,
            char => char_signal,
            stateBtn => sender_state_out

        );


    --    led <= '1' when btn = '1' else '0';
    led <= ledind;
    rgb24 <= vga_r & vga_b & vga_g;
    hdmi_tx_hpd <= '1';

end Behavioral;