----------------------------------------------------------------------------------
--Ejercicio Contador reset cargar en paralelo pagina 65
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity cont2 is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           clk, LOAD, ENP, RESET : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end cont2;

architecture arq_cont of cont2 is
begin
process(clk, RESET, LOAD, ENP)
	begin
		if(RESET ='1')then
		Q <="0000";
		elsif(clk' event and clk='1')then
		if(LOAD ='0' and ENP ='-')then
			Q<= P;
		elsif(LOAD='1' and ENP ='0')then
			Q<=Q;
		elsif(LOAD ='1' and ENP ='1')then
			Q <= Q+1;
		end if;
	end if;
end process;
end arq_cont;

