library IEEE;
use IEEE.std_logic_1164.all;

entity Xor2x8 is
	port(			
			A, B :	in STD_LOGIC_VECTOR(7 downto 0);
			output:	out STD_LOGIC_VECTOR(7 downto 0)
		);
end Xor2x8;

architecture behavior of Xor2x8 is
begin
	output <= ((not A) and B) or (A and (not B)); 
end behavior;
			
			