LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity control_disparo is
		
port(
	--entradas
	
	NBUSY: in std_logic;
	clk: in std_logic; --reloj del sistema
   LLD: in std_logic;
	--salidas
	--NGATE: out std_logic;
	NGATE: out std_logic;
	NCONVSTART: out std_logic
	);
end control_disparo;

architecture disparador of control_disparo is

--cosas para la maquina de estados

type STATE_TYPE is (E0, E1, E2, E3); 
attribute ENUM_ENCODING: STRING; 
attribute ENUM_ENCODING of STATE_TYPE:type is "0000 0001 0010 0011";

signal  EA, EP        : STATE_TYPE;  
 
 signal reset: std_logic:='0';
 signal integrando : std_logic;
 
 shared variable cuenta_180 : integer range 0 to 511; 
 shared variable t_integracion : integer range 0 to 511:=25; --tiempo de integracion dado al condensador, antes valia 10

 signal conv_sig, ngate_sig: std_logic;
 
 
begin



--proceso para el control de la maquina de estados
process (clk,reset) 

    begin 

        if (reset='0') then 
           	EA <= E0; --maquina de estados
			   cuenta_180 := 0;
        elsif (clk'event and clk= '1') then 
				if integrando = '1' then
					cuenta_180 := cuenta_180 + 1;
				else
					cuenta_180 := 0;
				end if; 
				EA <= EP;
        end if;
		  --EA <= EP;
end process; 


process (EA, LLD, NBUSY)  
begin 


       case EA is 
			when E0 =>   
					ngate_sig<='1';
					conv_sig<='1';
					reset <='1';
					integrando<='0';
					if (LLD='1') then --if(LLD ='1') si se activa LLD, comienza la conversion
							EP <= E1;  --todas las asignaciones eran a EP
					else
							EP <= E0;
					end if;
				
			when E1 =>   --activo NGATE y comienzo a integrar
					ngate_sig<='0';
					conv_sig<='1';
					integrando<='1';
					reset<='1';
				    if  cuenta_180 > t_integracion then  -- espero el tiempo de integracion
						EP <= E2;
						--integrando <='0';
					else
						 EP <= E1;
					end if;
		
           when E2 => --ahora ya aplico lo sennal de conversion, espero un poco 
					ngate_sig<='0';
					conv_sig<='0';
					integrando<='0';
					reset<='1';
				    if (NBUSY ='0') then --cuenta_180 > (t_integracion + 1 )  then
						EP <= E3;
					else
						EP <= E2;
					end if;
					
			when E3 => --ahora ya espero a que termine la conversion
					ngate_sig<='0';
					conv_sig<='0';
					reset<='1';
					integrando<='0';
					if (NBUSY = '1') then
						EP <= E0; 
						--reset<='0'; --no hace falta volver a pasar por reset
					else
						EP<= E3; 
					end if; 
							
       end case; 
		 
--asigno las sennales a los pines correspondientes
NGATE<=ngate_sig;
NCONVSTART<=conv_sig;

end process; 

	

	
end disparador;
	