LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY And2x8 IS 
PORT ( A, B: IN std_logic_vector(7 downto 0);
			R: OUT std_logic_vector(7 downto 0));
END And2x8;

ARCHITECTURE behavior of And2x8 IS
BEGIN
	R <= A AND B;
END behavior;
					