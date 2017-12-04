library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shiftLeft_x8 is
	port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end shiftLeft_x8;

architecture behavior of shiftLeft_x8 is
	signal aux: std_logic_vector(7 downto 0);
begin
	process(input_A)
	begin
		aux <= input_A(6 downto 0) & '0';
		output <= aux(6 downto 0) & '0';
	end process;
end behavior;