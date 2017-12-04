library IEEE;
use IEEE.std_logic_1164.all;

entity mux_10x8 is
	port(
			E0, E1: in std_logic_vector(7 downto 0);
			selector: in std_logic_vector(3 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
end mux_10x8;

architecture behavior of mux_10x8 is
	component and_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component or_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component not_x8 is
		port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component nand_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component nor_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component xor_x8 is
		port(
			input_A, input_B: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component somador_x8 is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	component subtrador_x8 is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	

	component shiftLeft_x8 is
		port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
	component shiftRight_x8 is
		port(
			input_A: in std_logic_vector(7 downto 0);
			output: out std_logic_vector(7 downto 0)
		 );
	end component;
signal out0,out1,out2,out3,out4,out5,out6,out7, out8, out9: std_Logic_vector(7 downto 0);
begin
	
	pAND: and_x8 port map(E0, E1, out0);
	pOR: or_x8 port map(E0, E1, out1);
	pNOT: not_x8 port map(E0, out2);
	pNAND: nand_x8 port map(E0, E1, out3);
	pNOR: nor_x8 port map(E0, E1, out4);
	pXOR: xor_x8 port map(E0, E1, out5);
	pSOMADOR: somador_x8 port map(E0, E1, out6);
	pSUBTRADOR: subtrador_x8 port map(E0, E1, out7);
	pSHIFTLEFT: shiftLeft_x8 port map(E0, out8);
	pSHIFTRIGHT: shiftRight_x8 port map(E0, out9);
	process(out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, selector)
	begin
		case selector is
			when "0000" => output <= out0;
			when "0001" => output <= out1;
			when "0010" => output <= out2;
			when "0011" => output <= out3;
			when "0100" => output <= out4;
			when "0101" => output <= out5;
			when "0110" => output <= out6;
			when "0111" => output <= out7;
			when "1000" => output <= out8;
			when "1001" => output <= out9;
			when others => output <= "00000000";
		end case;
	end process;
end behavior;