----------------------------------------------------------------------------------
--Ejercicio variables pagina 57
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro2 is
    Port ( d, clk : in  STD_LOGIC;
					q : out  STD_LOGIC);
end registro2;

architecture serie of registro2 is

begin
process (clk)
variable a,b : std_logic;
begin
	if (clk' event and clk='1')then
		a:=b;
		b:=a;
		q<=b;
	end if;
end process;
end serie;
























