----------------------------------------------------------------------------------
--ejercicio flip flop D pagina 54
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FLOP is
    Port ( D, clk, RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FLOP;

architecture FLIP of FLOP is

begin
process(clk, D, RESET) begin
	if RESET='1' then
		Q<='0';
		elsif(clk' event and clk='1')then
		Q <=D;
	end if;
end process;
end FLIP;






























