library IEEE;
use IEEE.std_logic_1164.all;

entity ULA_x8 is
	port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			opcode: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end ULA_x8;

architecture behavior of ULA_x8 is
	component mux_10x8 is
		port(
			E0, E1: in std_logic_vector(7 downto 0);
			selector: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
begin
	G1: mux_10x8 port map(input_A, input_B, opcode, output);
end behavior;