----------------------------------------------------------------------------------
--Ejercicio flip flop reset asincrono pagina 54 
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity FLOP2 is
    Port ( clk, RESET, EN, D : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end FLOP2;

architecture FLIP2 of FLOP2 is
signal q_aux: std_logic;
begin
	process (clk, RESET, EN)
	if (reset = '1') then q_aux <='0'
		elsif (clk' event and clk '1')then
			if (EN='1' )then
				q_aux <= D;
			else
				q_aux <= q;
			end if;
		end if;
	end process;
	q <= q_aux;
end FLIP2;


















































