LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Not2x8 IS 
PORT ( A: IN std_logic_vector(7 downto 0);
			R: OUT std_logic_vector(7 downto 0));
END Not2x8;

ARCHITECTURE behavior OF Not2x8 IS
BEGIN
	R <= NOT A;
END behavior;
					