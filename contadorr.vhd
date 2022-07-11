----------------------------------------------------------------------------------
--Ejercicio contadores asignacion mediante atributos pagina 61
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity contadorr is
    Port ( clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
	 --attribute pin_numbers of contador : entity is
	  --clk: "1 Q(3):14  Q(2):15  Q(1):16  Q(0):17" ;
end contadorr;

architecture pins of contadorr is
begin
	process(clk)
	begin
		if(clk' event and clk='1') then
			q <= q+1;
		end if;
	end process;
end pins;

