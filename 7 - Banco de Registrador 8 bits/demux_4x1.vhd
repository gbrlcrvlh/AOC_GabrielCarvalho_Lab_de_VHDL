library IEEE;
use IEEE.std_logic_1164.all;

entity demux_4x1 is
	port(
			clock, enable: in std_logic;
			selector: in std_logic_vector(1 downto 0);
			input: in std_logic_vector(7 downto 0);
			E0, E1, E2, E3: inout std_logic_vector(7 downto 0)
		 );
end demux_4x1;

architecture behavior of demux_4x1 is
begin
	process(clock, enable, selector, input, E0, E1, E2, E3)
	begin
		if (clock'event and clock = '1') then
			if (enable = '1') then
				case selector is
					when "00" => E0 <= input;
					when "01" => E1 <= input;
					when "10" => E2 <= input;
					when "11" => E3 <= input;
				end case;
			end if;
		end if;
	end process;
end behavior;