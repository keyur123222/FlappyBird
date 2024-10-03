--
-- written by Gregory Leonberg
-- fall 2017
--
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity uart is
    port (

        clk, en, send, rst          : in std_logic;
        charSend                    : in std_logic_vector (7 downto 0);
        ready, tx                   : out std_logic

    );
end uart;

architecture structural of uart is
    component uart_tx port
(
            clk, en, send, rst  : in std_logic;
            char                : in std_logic_vector (7 downto 0);
            ready, tx           : out std_logic
        );
    end component;


begin

    t_x: uart_tx port map(
            clk => clk,
            en => en,
            send => send,
            rst => rst,
            char => charSend,
            ready => ready,
            tx => tx);

end structural;
