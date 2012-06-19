LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity control_tot is
		
port(
	--entradas
	 LLD: in std_logic;
	clk: in std_logic; --reloj del sistema

	--salidas
	--NGATE: out std_logic;
	NREAD: out std_logic;
	dataOut: out std_logic_vector(15 downto 0)
	);
end control_tot;

architecture contador of control_tot is

--cosas para la maquina de estados

type STATE_TYPE is (E0, E1); 
attribute ENUM_ENCODING: STRING; 
attribute ENUM_ENCODING of STATE_TYPE:type is "0000 0001";

signal  EA, EP        : STATE_TYPE;  
 
 signal reset: std_logic:='0';
 signal contando : std_logic;
 
 shared variable contador_tiempo : std_logic_vector(15 downto 0) ; 
 signal new_data: std_logic;
 
 
begin



--proceso para el control de la maquina de estados
process (clk,reset) 

    begin 

        if (reset='0') then 
           	EA <= E0; --maquina de estados
			   contador_tiempo := (others => '0');
        else
				if contando = '1' then
					contador_tiempo := contador_tiempo or "0000000000000001";
				else
					contador_tiempo := (others => '0');
				end if; 
				EA <= EP;
        end if;
		  --EA <= EP;
end process; 


process (EA, LLD)  
begin 


       case EA is 
			when E0 =>   
					reset <='1';
					new_data<='1';
					contando<='0';
					if (LLD='1') then --if(LLD ='1') si se activa LLD, comienza la conversion
							EP <= E1;  --todas las asignaciones eran a EP
							contando<='1';
							new_data<='0';
					else
							EP <= E0;
					end if;
				
			when E1 =>   --activo NGATE y comienzo a integrar
					contando<='1';
					reset <='1';
					new_data<='0';
				    if  (LLD='0') then  -- espero el tiempo de integracion
						EP <= E0;
						 contando<='1';
					   new_data<='1';
						--integrando <='0';
					else
						 EP <= E1;
					end if;
							
       end case; 
		 
end process; 

	
 --proceso para la escritura en memoria
process(new_data)  --(NBUSY)

begin
 --proceso2: process begin
 -- wait until (NBUSY'event and NBUSY='1');
-- if (NBUSY='1' and LLD='0') then
 if (new_data='1') then  
   dataOut<=contador_tiempo;
	NREAD<='1'; --preparo para escribir
	--new_data<='0';
 else
    NREAD<='0'; --after 100ns;
 end if;
 end process; -- proceso2;
	
end contador;
	