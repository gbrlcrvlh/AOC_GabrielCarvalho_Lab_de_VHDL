library IEEE;
use IEEE.std_logic_1164.all;

entity nand_x8 is
	port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end nand_x8;

architecture behavior of nand_x8 is

	component and_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	
	component not_x8 is
		port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	
	signal aux: std_logic_vector(7 downto 0);
	
begin
	G1: and_x8 port map(input_A, input_B, aux);
	G2: not_x8 port map(aux, output);
end behavior;