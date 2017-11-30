library IEEE;
use IEEE.std_logic_1164.all;

entity FlipFlopD_x8 is
	port (
			clock: IN STD_LOGIC;
			enable: IN STD_LOGIC;
			reset: IN STD_LOGIC;
			input: IN STD_LOGIC_VECTOR(7 downto 0);
			output: OUT STD_LOGIC_VECTOR(7 downto 0)
			);
end FlipFlopD_x8;

architecture behavior of FlipFlopD_x8 is
begin
	process(Clock, enable, reset, input)
	begin 
		if(reset = '1') then
			output <= "00000000";
		elsif (clock'event and clock = '1') then
			if(enable = '1') then
				output <= input;
			end if;
		end if;
	end process;
end behavior;