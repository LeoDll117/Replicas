----------------------------------------------------------------------------------
--Ejercicio contadores pagina 59
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity contador is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Behavioral of contador is

begin
	process(clk)
	begin
		if (clk'  event and clk='1')then
			q<= q+1;
		end if;
	end process;
end Behavioral;



























