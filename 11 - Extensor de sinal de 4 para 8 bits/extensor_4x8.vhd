library IEEE;
use IEEE.std_logic_1164.ALL;

entity extensor_4x8 is
    Port(
           input: in  std_logic_vector(3 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end extensor_4x8;

architecture behavior of extensor_4x8 is
begin
	
	output(7 downto 4) <= "0000";
	output(3 downto 0) <= input;
	
end behavior;