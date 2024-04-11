
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity hdmi_top is
    port (
        clk: in std_logic;
        data_p, data_n: out std_logic_vector(2 downto 0);
        clk_p, clk_n: out std_logic;
        hdmi_tx_hpd: out std_logic
    );
end hdmi_top;

architecture Behavioral of hdmi_top is

    component pixel_pusher_hdmi is
        port (
            clk         : in  STD_LOGIC;
            clk_enable  : in  STD_LOGIC;
            vs          : in  STD_LOGIC;
            pixel       : in  STD_LOGIC_VECTOR(7 downto 0);
            hcount      : in  STD_LOGIC_VECTOR(9 downto 0);
            vid         : in  STD_LOGIC;
            R           : out STD_LOGIC_VECTOR(7 downto 0);
            G           : out STD_LOGIC_VECTOR(7 downto 0);
            B           : out STD_LOGIC_VECTOR(7 downto 0);
            addr        : out STD_LOGIC_VECTOR(17 downto 0)
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

    component rgb2dvi_0 is
        PORT (
            TMDS_Clk_p : OUT STD_LOGIC;
            TMDS_Clk_n : OUT STD_LOGIC;
            TMDS_Data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); -- RGB(HDMI)          
            TMDS_Data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            aRst : IN STD_LOGIC;
--            aRst_n : IN STD_LOGIC;
            vid_pData : IN STD_LOGIC_VECTOR(23 DOWNTO 0); --RGB
            vid_pVDE : IN STD_LOGIC;   --vid
            vid_pHSync : IN STD_LOGIC; --hs
            vid_pVSync : IN STD_LOGIC; --vs
            PixelClk : IN STD_LOGIC;   --pixelclk
            SerialClk : IN STD_LOGIC   --serialclk
        );
    end component;



    signal div_out, vs_out, hs_out, vid_out: std_logic;
    signal addr_out: std_logic_vector (17 downto 0);
    signal pixel_out: std_logic_vector(7 downto 0);
    signal hcount_out, vcount_out: std_logic_vector(9 downto 0);
    signal rgb24: std_logic_vector(23 downto 0);
    signal vga_r, vga_g, vga_b: std_logic_vector(7 downto 0);

    signal arst, arst_n: std_logic;



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
            vid => vid_out,
            R => vga_r,
            G => vga_g,
            B => vga_b,
            addr => addr_out
        );

    u4: vga_ctrl
        port map (
            clk => clk,
            clk_enable => div_out,
            hcount =>  hcount_out,
            vcount =>  vcount_out, -- not connected to anything
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
    rgb24 <= vga_r & vga_b & vga_g;
    hdmi_tx_hpd <= '1';

end Behavioral;
