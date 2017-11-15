library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_x8 is
	port(
			clock, ler, escrever: in std_logic;
			endereco: in std_logic_vector(3 downto 0);
			datain: in std_logic_vector(7 downto 0);
			dataout: out std_logic_vector(7 downto 0)
		  );
end RAM_x8;

architecture behavior of RAM_x8 is
	type RAM_type is array (15 downto 0) of std_logic_vector(7 downto 0);
	signal memoria: RAM_type;
begin
	process (endereco, clock, escrever, ler)

	begin
			if (clock'event AND clock = '1') then
				if ( escrever= '1' and ler= '0' ) then
					memoria(to_integer(unsigned(endereco))) <= datain;
				elsif( escrever= '0' and ler= '1' ) then
					dataout <= memoria(to_integer(unsigned(endereco)));
				else
					dataout <= "11111111";
				end if;
			end if;
	end process;
end behavior; 