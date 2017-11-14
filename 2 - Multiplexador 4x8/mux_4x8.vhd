library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4x8 is
	port(
			clock: in std_logic;
			E0, E1, E2, E3: in std_logic_vector(7 downto 0);
			selector: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end mux_4x8;

architecture behavior of mux_4x8 is
begin
	process(clock, E0, E1, E2, E3, selector)
	begin
		if (clock'event and clock = '1') then
			case selector is
				when "00" => output <= E0;
				when "01" => output <= E1;
				when "10" => output <= E2;
				when "11" => output <= E3;
				when others => output <= "00000000";
			end case;
		end if;
	end process;
end behavior;