LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity adapt_fifo is --lo uso para adapatar la salida de la fifo
		
port(
   --entradas
	dataIn: in std_logic_vector(11 downto 0);
	clk: in std_logic; --reloj del sistema
	--salida
	dataOut: out std_logic_vector(15 downto 0)
	);
end adapt_fifo;

architecture adaptador of adapt_fifo is

 
begin

	
 --proceso para que los datos sean compatibles con una fifo de 16
process(clk) 

begin
  
   dataOut(15 downto 12)<="0000";
	dataOut(11 downto 0)<=dataIn(11 downto 0);

 end process; -- proceso2;
	
end adaptador;
	