library IEEE;
use IEEE.std_logic_1164.ALL;

entity subtrador_x8 is
    Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end subtrador_x8;

architecture behavior of subtrador_x8 is
	component somador_x8 is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	
	component not_x8 is
		port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	signal aux, complement2: std_logic_vector(7 downto 0);
begin
	G1: not_x8 port map(input2, aux);
	G2: somador_x8 port map(aux, "00000001", complement2);
	G3: somador_x8 port map(input, complement2, output);
end behavior;