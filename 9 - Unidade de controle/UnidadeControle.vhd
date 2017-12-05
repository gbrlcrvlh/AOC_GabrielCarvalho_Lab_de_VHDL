library IEEE;
use IEEE.std_logic_1164.all;

entity unidadecontrole is
	port(
			clock      : in std_logic;
			opcode     : in std_logic_vector(3 downto 0);
			PCescCond,
			PCesc,
			MemParaReg,
			regEscrita, 
			ULAfonteA,
			MemLeitura,
			MemEscrita : out std_logic;                     -- flags de 1 bit
			ULAfonteB,
			PCfonte    : out std_logic_vector(1 downto 0);  -- flags de 2 bits
			ULAop      : out std_logic_vector(3 downto 0)   -- flags de 4 bits
		  );
end unidadecontrole;

architecture behavior of unidadecontrole is

type estados is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
signal prox_estado, atual_estado : estados;
begin
	process(clock)
		begin
			if( clock'event and  clock = '1' ) then
				atual_estado <= prox_estado;
			end if;
	end process;
	
	process(clock, opcode, atual_estado)
		begin
			case atual_estado is
				when s0 =>                                                 -- Busca da instrução e incremento do PC
							prox_estado <= s1;
				when s1 =>                                                 -- Decodificação da instrução
							if    (opcode = "1010" OR opcode = "1011") then      -- SE LW OU SW
								prox_estado <= s2;
							elsif (opcode = "1101" OR opcode = "1110") then      -- SE JUMP CONDICIONAL
								prox_estado <= s8;
							elsif (opcode = "1111") then                         -- SE JUMP
								prox_estado <= s9;
							else                                                 -- SE TIPO R
								prox_estado <= s6;
							end if;
				when s2 =>                                                 -- Cálculo do endereço (LW ou SW)
							if( opcode = "1010" ) then                           -- SE FOR LW
								prox_estado <= s3;
							else                                                 -- SE FOR SW
								prox_estado <= s5;
							end if;
				when s3 =>                                                 -- Acesso à memória (LW)
							prox_estado <= s4;
				when s4 =>                                                 -- Escrita no Reg (LW final)
							prox_estado <= s0;
				when s5 =>                                                 -- Acesso à memória (SW final)
							prox_estado <= s0;
				when s6 =>                                                 -- Execução do tipo R
							if( opcode = "0110" OR opcode = "0111" ) then        -- SE TIPO EQ OU EQI
								prox_estado <= s0;
							else
								prox_estado <= s7;
							end if;
				when s7 =>                                                 -- Escrita no reg (R final)
							prox_estado <= s0;
				when s8 =>                                                 -- Calculo do desvio condicional (Final BEQ\BNE)
							prox_estado <= s0;
				when s9 =>                                                 -- Desvio incodicional (Final J)
							prox_estado <= s0;
			end case;		
	end process;
	
	process(clock, atual_estado, opcode)
		begin
			PCescCond  <= '0';
			PCesc      <= '0';
			MemParaReg <= '0';
			regEscrita <= '0'; 
			ULAfonteA  <= '0';
			MemLeitura <= '0';
			MemEscrita <= '0';
			ULAfonteB  <= "00";
			PCfonte    <= "00";
			ULAop      <= "0000";
			
			case atual_estado is
				when s0 =>
							ULAfonteA <= '0';
							ULAfonteB <= "01";
							ULAop <= "0000";
							PCesc <= '1';
				when s1 =>
							ULAfonteA <= '0';
							ULAfonteB <= "11";
							ULAop <= "0000";
				when s2 =>
							ULAfonteA <= '0';
							ULAfonteB <= "10";
							ULAop <= "0000";
				when s3 =>
							MemLeitura <= '1';
				when s4 =>
							regEscrita <= '1';
							MemParaReg <= '1';
				when s5 =>
							MemEscrita <= '1';
				when s6 =>
							ULAfonteA <= '1';
							if( opcode(0) = '1' ) then -- é imediato
								ULAfonteB <= "01";
							else
								ULAfonteB <= "00";
							end if;
							ULAop <= opcode;
				when s7 =>
							regEscrita <= '1';
							MemParaReg <= '0';
				when s8 =>
							ULAfonteA <= '1';
							ULAfonteB <= "00";
							ULAop <= opcode;
							PCescCond  <= '1';
							PCfonte <= "01";
				when s9 =>
							PCesc  <= '1';
							PCfonte <= "10";
			end case;
	end process;
end behavior;
		