library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity controls is
    port(
        -- Timing Signals
        clk, en, rst: in std_logic;

        -- Register File IO
        rID1, rID2: out std_logic_vector(4 downto 0);
        wr_enR1, wr_enR2: out std_logic;
        regrD1, regrD2: in std_logic_vector(15 downto 0);
        regwD1, regwD2: out std_logic_vector(15 downto 0);

        -- Framebuffer IO
        fbRST : out std_logic;
        fbAddr1: out std_logic_vector(11 downto 0);
        fbDin1: in std_logic_vector(15 downto 0);
        fbDout1: out std_logic_vector(15 downto 0);
        fbWr_en: out std_logic;

        -- Instruction Memory IO
        irAddr: out std_logic_vector(13 downto 0);
        irWord: in std_logic_vector(31 downto 0);

        -- Data Memory IO
        dAddr: out std_logic_vector(14 downto 0);
        d_wr_en: out std_logic;
        dOut: out std_logic_vector(15 downto 0);
        dIn: in std_logic_vector(15 downto 0);

        -- ALU IO
        aluA, aluB: out std_logic_vector(15 downto 0);
        aluOp: out std_logic_vector(3 downto 0);
        aluResult: in std_logic_vector(15 downto 0);

        -- UART IO
        ready, newChar: in std_logic;
        send: out std_logic;
        charRec: in std_logic_vector(7 downto 0);
        charSend: out std_logic_vector(7 downto 0)

    );
end controls;

architecture fsm of controls is

    type state is (fetch, decode, Rops, Iops, Jops, calc, store, jr, recv, rpix, wpix, send, equals, nequal, ori, lw, sw, jmp, jal, clrscr, finish);
    signal currentState: state:= fetch;
    
    signal pc: std_logic_vector(15 downto 0);

begin

    process(clk)
    begin
        if rising_edge(clk) and en = '1' then
            case currentState is
                when fetch =>
                    rID1 <= "00001";
                    currentState <= decode;
                when fetch1 =>
                    pc <= unsigned(regrD1(13 downto 0));
                    currentState <= decode;  
                    
                
                
                
                
                when others =>
                    currentState: finish;
            end case;
        end if;
    end process;
end fsm;
