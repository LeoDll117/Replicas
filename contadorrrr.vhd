----------------------------------------------------------------------------------
--Ejercicio contador ascendente descendente pagina 63
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity contadorrrr is
    Port ( clk : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contadorrrr;

architecture a_contador of contadorrrr is

begin
	process(UP, clk)
	begin
		if(clk' event and clk ='1')then
			if(UP ='0') then
				Q <= Q+1;
			else
				Q <= Q-1;
			end if;
		end if;
	end process;
end a_contador;

