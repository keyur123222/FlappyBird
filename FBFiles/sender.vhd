library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sender is
    port (
        rst, clk, en, btn, rdy: in std_logic;
        send: out std_logic;
        char: out std_logic_vector(7 downto 0);
        stateBtn: in std_logic
    );

end sender;

architecture Behavioral of sender is

    type state_type is (idle, busyA, busyB, busyC);
    signal state: state_type:= idle;
    constant N: integer:= 25;
    signal i: integer range 0 to N-1:= 0;
    signal testCounter: integer range 0 to N:= 0;

    constant N2: integer:= 34;
    signal i2: integer range 0 to N2-1:= 0;
    signal testCounter2: integer range 0 to N2:= 0;



    type word is array (0 to N-1) of std_logic_vector(7 downto 0);
    signal NETID : word := (x"53",x"63",x"6F",x"72",x"65",x"3A", x"30", x"30", x"30", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"1B", x"5B", x"6A"); --kjr150

    type word2 is array
 (0 to N2-1) of std_logic_vector(7 downto 0);
    signal ctrl : word2 := (x"44",x"69",x"66",x"66",x"69",x"63", x"75", x"6C", x"74", x"79", x"20", x"53", x"6B", x"69", x"6E", x"1B", x"5B", x"31", x"3B", x"30", x"48", x"53", x"74", x"61", x"72", x"74", x"20", x"4A", x"75", x"6D", x"70", x"1B", x"5B", x"6A"); --kjr150


    signal tempCounter, tempCounter2: integer range 0 to 80:= 0;

    signal rst_prev, btn_prev, btn1_prev, btn2_prev: std_logic;
    signal tensCounter: integer range 0 to 9;
    signal hundCounter: integer range 0 to 99;

    type state2 is (start, playing);
    signal currentState2: state2:= start;


begin

    process(clk)
    begin
        if rising_edge(clk) then
            btn_prev <= btn;
            if btn = '1' then
                if btn /= btn_prev then
                    tensCounter <= tensCounter + 1;
                    hundCounter <= hundCounter + 1;
                    NETID(8) <= NETID(8) + 1;
                    if tensCounter = 9 then
                        tensCounter <= 0;
                        NETID(8) <= x"30";
                        NETID(7) <= NETID(7) + 1;
                    end if;
                    if hundCounter = 99 then
                        hundCounter <= 0;
                        NETID(8) <= x"30";
                        NETID(7) <= x"30";
                        NETID(6) <= NETID(6) + 1;
                    end if;
                end if;
            end if;

            rst_prev <= rst;
            if rst = '1' then
                if rst /= rst_prev then
                    send <= '0';
                    char <= (others => '0');
                    i <= 0;
                    testCounter <= 0;
                    state <= idle;
                    tempCounter <= 0;
                    tensCounter <= 0;
                    hundCounter <= 0;
                        NETID(8) <= x"30";
                        NETID(7) <= x"30";
                        NETID(6) <= x"30";
                end if;
            elsif en = '1' then
                tempCounter <= tempCounter + 1;
                case state is
                    when idle =>
                        if rdy = '1' and tempCounter = 80 and i < N then
                            send <= '1';
                            char <= NETID(i);
                            i <= i+1;
                            testCounter <= testCounter + 1;
                            state <= busyA;
                        elsif rdy = '1' and tempCounter = 80 and i = N then
                            i <= 0;
                        elsif testCounter = N then
                            i <= 0;
                            testCounter <= 0;
                            state <= idle;
                        end if;
                    when busyA =>
                        state <= busyB;
                    when busyB =>
                        send <= '0';
                        state <= busyC;
                    when busyC =>
                        if rdy = '1' and btn = '0' then
                            state <= idle;
                        else
                            state <= busyC;
                        end if;
                end case;
            end if;
        end if;
    end process;

end Behavioral;