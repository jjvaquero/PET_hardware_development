LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity control_disparo is
		
port(
	--entradas
	
	NBUSY: in std_logic;
	clk: in std_logic; --reloj del sistema
   Comp: in std_logic;
	dataIn: in std_logic_vector(11 downto 0);
	--salidas
	--NGATE: out std_logic;
	DesInt: out std_logic;
	NCONVSTART: out std_logic;
	NREAD : out std_logic;
	dataOut: out std_logic_vector(15 downto 0)
	);
end control_disparo;

architecture disparador of control_disparo is

--cosas para la maquina de estados

type STATE_TYPE is (E0, E1, E2, E3); 
attribute ENUM_ENCODING: STRING; 
attribute ENUM_ENCODING of STATE_TYPE:type is "0000 0001 0010 0011";

signal  EA, EP        : STATE_TYPE;  
 
 signal reset: std_logic:='0';
 signal integrando : std_logic:='0';
 
 shared variable cuenta_180 : integer range 0 to 511:=0; 
 shared variable t_integracion : integer range 0 to 511:=5; --tiempo de integracion dado al condensador, antes valia 10

 signal conv_sig, desInt_sig, new_data: std_logic;
 
 
begin



--proceso para el control de la maquina de estados
process (clk,reset) 

    begin 

        if (reset='0') then 
           	EA <= E0; --maquina de estados
			   cuenta_180 := 0;
        elsif (clk'event and clk= '1') then 
				if (integrando='1') then
					cuenta_180 := cuenta_180 + 1;
				else
					cuenta_180 := 0;
				end if; 
				EA <= EP;
        end if;
		  ---EA <= EP;
end process; 


process (EA, Comp, NBUSY,clk)  
begin 


       case EA is 
			when E0 =>   
					desInt_sig<='1';
					conv_sig<='1';
					reset <='1';
					integrando<='0';
					new_data<='1';
					if (Comp='0') then --if(LLD ='1') si se activa LLD, comienza la conversion
							EP <= E1;  --todas las asignaciones eran a EP
							new_data<='0';
					else
							EP <= E0;
					end if;
				
			when E1 =>   --comienzo a integrar
					--conv_sig<='1';
					desInt_sig<='1';
					conv_sig<='1';
					integrando<='1';
					reset <='1';
					new_data<='0';
					--conv_sig<='0';
				    if  cuenta_180 > t_integracion then  -- espero el tiempo de integracion
						EP <= E2;
						conv_sig<='0';
					else
						 EP <= E1;
					end if;
		
           when E2 => --ahora ya aplico lo sennal de conversion, espero un poco 
					--ngate_sig<='0';
					desInt_sig<='1';
					conv_sig<='0';
					integrando<='1';
					new_data<='0';
					reset <='1';
					--no coge bien lo de NBUSY = '0'...por ello espero un tiempo fijo
				    if (NBUSY ='0') or (cuenta_180> 20) then 
						EP <= E3;
					else
						EP <= E2;
					end if;
					
			when E3 => --ahora ya espero a que termine la conversion
					--ngate_sig<='0';
					conv_sig<='0';
					integrando<='0';
					desInt_sig<='1';
					reset <='1';
					new_data<='0';
					if (NBUSY = '1') and (Comp='1')then
					   desInt_sig<='0'; --cierro la puerta al terminar 
						EP <= E0; 		
						new_data<='1';
						--if cuenta_180 > t_integracion then
						--	EP<= E0; --hago esto para dar tiempo a la puerta
						--	t_integracion:=0;
						--end if;
						--reset<='0'; --no hace falta volver a pasar por reset
					else
						EP<= E3; 
					end if; 
							
       end case; 
		 
--asigno las sennales a los pines correspondientes
NCONVSTART<=conv_sig;
DesInt<=desInt_sig;
--NREAD<=new_data;

end process; 

 --proceso para la escritura en memoria
process(new_data)  --(NBUSY)

begin
 --proceso2: process begin
 -- wait until (NBUSY'event and NBUSY='1');
-- if (NBUSY='1' and LLD='0') then
 if (new_data='1') then
   
   dataOut(15 downto 12)<="0000";
	dataOut(11 downto 0)<=dataIn(11 downto 0);
	NREAD<='1'; --preparo para escribir
	--new_data<='0';
 else
    NREAD<='0'; --after 100ns;
 end if;
 end process; -- proceso2;


	
end disparador;
	