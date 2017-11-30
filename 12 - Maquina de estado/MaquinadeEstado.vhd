library IEEE;
use IEEE.std_logic_1164.all;

entity MdEstado is
	port(
			P, clock, reset: in std_logic;
			R: out std_logic;
			output: out std_logic_vector(1 downto 0)
		 );
end MdEstado;

architecture behavior of MdEstado is
type ESTADO is (A, B, C, D);
signal EstadoAtual, ProximoEstado: ESTADO;
begin
	process(clock, reset)
	begin
		if( reset='1' ) then
			EstadoAtual <= A;
		elsif( clock'event and clock='1' ) then
			EstadoAtual <= ProximoEstado;
		end if;
	end process;
	
	process(EstadoAtual, P)
	begin
		case EstadoAtual is
			when A => R <= '0'; if( P = '1' ) then ProximoEstado <= B; else ProximoEstado <= A; end if; output <= "00";
			when B => R <= '0'; if( P = '1' ) then ProximoEstado <= C; else ProximoEstado <= B; end if; output <= "01";
			when C => R <= '0'; if( P = '1' ) then ProximoEstado <= D; else ProximoEstado <= C; end if; output <= "10";
			when D => R <= '1'; if( P = '1' ) then ProximoEstado <= B; else ProximoEstado <= A; end if; output <= "11";
		end case;
	end process;
end behavior;