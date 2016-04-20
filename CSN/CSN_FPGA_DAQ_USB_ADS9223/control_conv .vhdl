LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity control_conv is
		
port(
	--entradas
	clk: in std_logic; --reloj del sistema
	clkVal: in std_logic_vector(2 downto 0);	
	--salidas
	gate: out std_logic;
	clkCnt: out std_logic;
	buffCnt: out std_logic
	);
end control_conv;

architecture controlador of control_conv is

 
begin



--controlador de las sennales de conversion
process (clk,clkVal) --dependera realmente del numero de pulsos de reloj

    begin
	 
	 case clkVal is --uso clkVal como un indicador del numero de estado actual
	 
	  when "001" =>  --en el primero...activo la puerta y espero el tiempo de integracion
			gate<='0';  --abro la puerta
		   clkCnt<='0';
			buffCnt<='0';
	  when "010" =>  --estos son los datos que me interesan
			gate<='0';  --asi que espero tres pulsos para leer
		   clkCnt<='0';  --pulso 1....
			buffCnt<='0';
	  when "011" =>  --pulso 2...
			gate<='0';
		   clkCnt<='0';
			buffCnt<='0';
	  when "100" =>  --pulso3...
			gate<='0';
		   clkCnt<='0';
			buffCnt<='0';
	  when "101" =>  --ya puedo leer!!!!
			gate<='1';  --cierro la puerta
		   clkCnt<='1'; --desactivo el reloj
			buffCnt<='1'; --leo los datos 
               			--se pone un retraso de 100ns para estar seguros de que los datos estan bien
	  when others=>
			gate<='1'; --puerta normalmente cerrada
			clkCnt<='0'; --reloj normalmente activo...esperando la sennal de comparacion
			buffCnt<='0'; --escritura de la fifo desactivada
	  end case;
			

end process; 

	
end controlador;
	