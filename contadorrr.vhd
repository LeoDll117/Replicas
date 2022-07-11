----------------------------------------------------------------------------------
--Ejercicio Contador reset enable pagina 61
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
entity contadorrr is
    Port ( clk, reset : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contadorrr;

architecture modulo of contadorrr is
begin
	process (clk, reset)
	begin
		if(clk' event and clk = '1')then
			if(reset = '1' or q ="1001")then
				q<="0000";
			else
				q<=q+1;
			end if;
		end if;
	end process;
end modulo;

