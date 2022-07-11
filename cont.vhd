----------------------------------------------------------------------------------
--Ejercicio contador con integer pagina 62
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use ieee.std_logic_arith.all;
entity cont is
    Port ( clk, reset : in  STD_LOGIC;
           Q : inout integer range 0 to 15);
end cont;

architecture arq_cont of cont is
begin
	process(clk, reset)
	begin
		if(clk' event and clk='1')then
			if(reset='1' or Q =9) then
				Q<=0;
			else
				Q <= q+1;
			end if;
		end if;
	end process;
end arq_cont;

