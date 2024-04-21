library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sender is
    port (
        rst, clk, en, btn, rdy: in std_logic;
        send: out std_logic;
        char: out std_logic_vector(7 downto 0)

    );

end sender;

architecture Behavioral of sender is

    type state_type is (idle, busyA, busyB, busyC);
    signal state: state_type:= idle;
    constant N: integer:= 25;
    signal i: integer range 0 to N-1:= 0;
    signal testCounter: integer range 0 to N:= 0;

    type word is array (0 to N-1) of std_logic_vector(7 downto 0);
    signal NETID : word := (x"53",x"63",x"6F",x"72",x"65",x"3A", x"30", x"30", x"30", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"1B", x"5B", x"6A"); --kjr150

    signal tempCounter: integer range 0 to 80:= 0;
    signal rst_prev, btn_prev: std_logic;
    signal tensCounter: integer range 0 to 9;
    signal hundCounter: integer range 0 to 99;


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