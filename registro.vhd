------------------------------------------------------------------------------------
--Ejercicio registro serie pagina 56
--Leonardo Peralta
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
    Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end registro;

architecture serie of registro is
signal (a,b: in std_logic);
begin
	process (clk)
		begin
			if (clk' event and clk='1')then
				a<=d;
				b<=a;
				q<=d;
			end if;
end serie;


























