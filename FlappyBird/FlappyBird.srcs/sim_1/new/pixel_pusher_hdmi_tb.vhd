
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity pixel_pusher_hdmi_tb is
end pixel_pusher_hdmi_tb;



architecture Behavioral of pixel_pusher_hdmi_tb is

    component pixel_pusher_hdmi is
        port (
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
            addr2: out integer;

            pipeY1, pipeY2: in integer;
            pipeEn: out std_logic


        );
    end component;

    component debounce is
        port (
            clk : in std_logic;
            button : in std_logic;
            debounced_button : out std_logic

        );
    end component;

    component clock_div is
        port(
            clk  : in std_logic;        -- 125 Mhz clock
            div : out std_logic        -- led, '1' = on
        );
    end component;


    signal clk_tb, btn_tb, led_tb, dbnc1: std_logic;
    signal y1_tb, y2_tb: integer range 0 to 480;

    signal clk_en_tb: std_logic;
    signal vs_tb: std_logic;
    signal pixel_tb, bird_pixel_tb:STD_LOGIC_VECTOR(7 downto 0);
    signal hcount_tb: STD_LOGIC_VECTOR(9 downto 0);
    signal vcount_tb: STD_LOGIC_VECTOR(9 downto 0) ;
    signal vid_tb: std_logic;
    signal R_tb: STD_LOGIC_VECTOR(7 downto 0);
    signal G_tb: STD_LOGIC_VECTOR(7 downto 0);
    signal B_tb: STD_LOGIC_VECTOR(7 downto 0);
    signal addr_tb: STD_LOGIC_VECTOR(17 downto 0);

    signal pipeY1_tb, pipeY2_tb: integer;
    signal pipeEn_tb: std_logic;

    signal dbnc2: std_logic;
    signal addr2_tb: integer;

begin

    t1: pixel_pusher_hdmi
        port map(
            clk        => clk_tb,
            clk_enable  => clk_en_tb,
            vs          => vs_tb,
            pixel       => pixel_tb,
            hcount      => hcount_tb,
            vcount      => vcount_tb,
            vid         => vid_tb,
            R           =>  R_tb,
            G           => G_tb,
            B           => B_tb,
            addr        => addr_tb,

            btn_up => dbnc1,
            led_ind =>  led_tb,

            pipeY1 => pipeY1_tb,
            pipeY2 => pipeY2_tb,
            pipeEn => pipeEn_tb,

            start_btn => dbnc2,
            birdPixel => bird_pixel_tb,
            addr2 => addr2_tb

        );

    t2: debounce
        port map(
            clk => clk_tb,
            button => btn_tb,
            debounced_button => dbnc1
        );

    t3: clock_div
        port map(
            clk => clk_tb,
            div => clk_en_tb

        );




    clk_gen_proc: process
    begin
        wait for 4 ns;
        clk_tb <= '1';

        wait for 4 ns;
        clk_tb <= '0';

    end process clk_gen_proc;


    stimulus: process
    begin

        btn_tb <= '1';
        wait for 20.1ms;
        btn_tb <= '0';
        wait for 5 ms;

        btn_tb <= '1';
        wait for 20.1ms;
        btn_tb <= '0';


        wait;
    end process;

    dbnc2 <= '1';






end Behavioral;
