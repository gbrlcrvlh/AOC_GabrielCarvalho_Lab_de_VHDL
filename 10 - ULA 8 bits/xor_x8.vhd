library IEEE;
use IEEE.std_logic_1164.all;

entity xor_x8 is
	port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end xor_x8;

architecture behavior of xor_x8 is
begin
	process(input_A, input_B)
	begin
		output <= input_A xor input_B;
	end process;
end behavior;