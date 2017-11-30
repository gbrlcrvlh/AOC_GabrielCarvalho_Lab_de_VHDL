library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity BancodeRegistradores_x8 is
	port(
			clock, reset, write_register: in std_logic;
			register_adress1, register_adress2: in std_logic_vector(1 downto 0);
			write_data: in std_logic_vector(7 downto 0);
			read_data1: out std_logic_vector(7 downto 0);
			read_data2: out std_logic_vector(7 downto 0)
		  );
end BancodeRegistradores_x8;

architecture behavior of BancodeRegistradores_x8 is
	type REGISTER_TYPE is array (3 downto 0) of std_logic_vector(7 downto 0);
	signal registrador: REGISTER_TYPE;
	
	component FlipFlopD_x8 is
		port (
			clock: IN STD_LOGIC;
			enable: IN STD_LOGIC;
			reset: IN STD_LOGIC;
			input: IN STD_LOGIC_VECTOR(7 downto 0);
			output: OUT STD_LOGIC_VECTOR(7 downto 0)
			);
	end component;	
	component demux_4x1 is
		port(
			clock, enable: in std_logic;
			selector: in std_logic_vector(1 downto 0);
			input: in std_logic_vector(7 downto 0);
			E0, E1, E2, E3: inout std_logic_vector(7 downto 0)
		 );
	end component;


begin
	G1: demux_4x1 port map (clock, write_register, register_adress1, write_data, registrador(0), registrador(1), registrador(2), registrador(3));
	
	G2: FlipFlopD_x8 port map(clock, not write_register, reset, registrador(to_integer(unsigned(register_adress1))), read_data1);
	G3: FlipFlopD_x8 port map(clock, not write_register, reset, registrador(to_integer(unsigned(register_adress2))), read_data2);

end behavior;
		