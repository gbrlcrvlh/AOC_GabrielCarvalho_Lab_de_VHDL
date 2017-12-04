library IEEE;
use IEEE.std_logic_1164.all;

entity not_x8 is
	port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end not_x8;

architecture behavior of not_x8 is
begin
	process(input_A)
	begin
		output <= not input_A;
	end process;
end behavior;