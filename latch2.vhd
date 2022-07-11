----------------------------------------------------------------------------------
--ejercicio 2 latch pagina 51
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch2 is
    Port ( dato, control : in  STD_LOGIC;
						salida : out  STD_LOGIC);
end latch2;

architecture ejemplo  of latch2 is
process ( dato, control)
begin
	if control ='1' then
	 salida <=dato;
	end if;
end process;
end ejemplo ;



















