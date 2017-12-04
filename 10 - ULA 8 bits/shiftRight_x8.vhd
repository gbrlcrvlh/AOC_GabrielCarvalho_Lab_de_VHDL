library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shiftRight_x8 is
	port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end shiftRight_x8;

architecture behavior of shiftRight_x8 is
	signal aux: std_logic_vector(7 downto 0);
begin
	process(input_A)
	begin
		aux <= input_A(7) & input_A(7 downto 1);
		output <= aux(7) & aux(7 downto 1);
	end process;
end behavior;