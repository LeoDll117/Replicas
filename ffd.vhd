----------------------------------------------------------------------------------
--ejercico flip flop pagina 52
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ffd is
    Port ( D, clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture arq_ffd of ffd is

begin
	process(clk)begin
		if (clk' event and clk='1')then
			Q <=D;
		end if;
	end process;
end arq_ffd;

