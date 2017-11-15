library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ROM_x8 is
	port (
			clock: in std_logic;
			reset: in std_logic;
			enable: in std_logic;
			leitor: in std_logic;
			endereco: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(7 downto 0)
			);
end ROM_x8;

architecture behavior of ROM_x8 is
	type ROM_TYPE is array (0 to 15) of std_logic_vector(7 downto 0);
	
	constant memoria : ROM_TYPE := (
		0 => "00000000",
		1 => "00000001",
		2 => "00000010",
		3 => "00000011",
		4 => "00000100",
		5 => "00000101",
		6 => "00000110",
		7 => "00000111",
		8 => "00001000",
		9 => "00001001",
	  10 => "00001010",
	  11 => "00001011",
	  12 => "00001100",
	  13 => "00001101",
	  14 => "00001110",
	  15 => "00011000",
 OTHERS => "11111111"
			);
begin
	process(clock, reset, leitor, endereco)
	begin
		if( reset = '1' ) then
			output <= "00000000";
		elsif( clock'event and  clock = '1' ) then
			if( Enable = '1' ) then
				if( leitor = '1' ) then
					output <= memoria(conv_integer(endereco));
				else
					output <= "00000000";
				end if;
			end if;
		end if;
	end process;
end behavior;
		