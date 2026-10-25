
library ieee;
use ieee.std_logic_1164.all;

entity segment_letters is
    port(
        ch : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity segment_letters;

architecture bhv of segment_letters is
begin
    process(ch)
    begin
        case ch is
            -- Bit order: a b c d e f g dp
            when "000" => display <= "11111010"; -- a
            when "001" => display <= "00111110"; -- b
            when "010" => display <= "00011010"; -- c
            when "011" => display <= "01111010"; -- d
            when "100" => display <= "10001110"; -- f
            when "101" => display <= "11110110"; -- g
            when others => display <= "00000000";
        end case;
    end process;
end architecture bhv;
