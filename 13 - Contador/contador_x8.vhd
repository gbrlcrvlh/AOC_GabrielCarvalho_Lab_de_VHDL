library IEEE;
use IEEE.std_logic_1164.ALL;

entity contador_x8 is
    Port(
			  clock, reset, enable: in std_logic;
           output: out std_logic_vector(7 downto 0)
			);
end contador_x8;

architecture behavior of contador_x8 is
	
begin
	process(clock, reset, enable)
	variable count, a, b: std_logic_vector(7 downto 0);
	variable cin, cout: std_logic;
	begin
		if( reset = '1' ) then
			count := "00000000";
		elsif( clock'event and  clock = '1' ) then
			if( enable = '1' ) then
				cout := '0';
				a := count;
				b := "00000001";
				for i in 0 to 7 loop
					cin := cout;
					count(i) := (a(i) xor b(i)) xor cin;
					cout := (b(i) and cin) or (a(i) and cin) or (a(i) and b(i));
				end loop;
			end if;	
		end if;
		output <= count;
	end process;
end behavior;