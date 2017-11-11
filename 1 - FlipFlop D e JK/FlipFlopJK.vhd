library IEEE;
use IEEE.std_logic_1164.all;

entity FlipFlopJK_x8 is
	port (
			clock: IN STD_LOGIC;
			enable: IN STD_LOGIC;
			reset: IN STD_LOGIC;
			jump: IN STD_LOGIC;
			kill: IN STD_LOGIC;
			output: OUT STD_LOGIC
			);
end FlipFlopJK_x8;

architecture behavior of FlipFlopJK_x8 is
	signal out_value: STD_LOGIC := '0';
begin
	process(clock, enable, reset, jump, kill)
	begin 
		if(reset = '1') then
			out_value <= '0';
			output <= '0';
		elsif (clock'event and clock = '1') then
		
			if(jump = '1' and kill = '1') then
				output <= not out_value;
				out_value <= not out_value;
			elsif (jump = '1' and kill = '0') then
				out_value <= '1';
				output <= '1';
			elsif (jump = '0' and kill = '1') then
				out_value <= '0';
				output <= '0';
			end if;
			
		end if;
	end process;
end behavior;