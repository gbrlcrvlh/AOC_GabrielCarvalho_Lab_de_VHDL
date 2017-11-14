library IEEE;
use IEEE.std_logic_1164.all;

entity Xor2x8 is
	port(	
			clock: in std_logic;
			A, B :	in std_logic_vector(7 downto 0);
			output:	out std_logic_vector(7 downto 0)
		);
end Xor2x8;

architecture behavior of Xor2x8 is

component And2x8 is 
port ( A, B: in std_logic_vector(7 downto 0);
			R: out std_logic_vector(7 downto 0));
end component;

component Or2x8 is 
port ( A, B: in std_logic_vector(7 downto 0);
			R: out std_logic_vector(7 downto 0));
end component;

component Not2x8 is 
port ( A: in std_logic_vector(7 downto 0);
			R: out std_logic_vector(7 downto 0));
end component;

signal GR1, GR2, ANR, BNR, R: std_logic_vector(7 downto 0);

begin
	AN: Not2x8 port map(A,ANR);
	BN: Not2x8 port map(B,BNR);
	G1: And2x8 port map(ANR,B,GR1);
	G2: And2x8 port map(A,BNR,GR2);
	G3: Or2x8 port map(GR1,GR2,R);
	
	process(clock)
	begin		
		if(clock'event and clock = '1') then			
			output <= R;		
		end if;		
	end process;			
end behavior;
			
			