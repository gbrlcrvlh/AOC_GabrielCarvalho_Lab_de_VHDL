library IEEE;
use IEEE.std_logic_1164.ALL;

entity somadorImediato_x8 is
    Port(
           input: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end somadorImediato_x8;

architecture behavior of somadorImediato_x8 is

begin
	process(input)
	
	variable result, a, b: std_logic_vector(7 downto 0);
	variable cin, cout: std_logic;
	
	begin
		cout := '0';
		a := "00000100";
		b := input;
		for i in 0 to 7 loop
				cin := cout;
				result(i) := (a(i) xor b(i)) xor cin;
				cout := (b(i) and cin) or (a(i) and cin) or (a(i) and b(i));
		end loop;
		output <= result;
	end process;
end behavior;