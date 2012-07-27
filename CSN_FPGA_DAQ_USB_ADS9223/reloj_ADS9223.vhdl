LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity reloj_ADS9223 is
		
port(
	--entradas
	
	comp: in std_logic;
	control: in std_logic; 
	clk: in std_logic;
	--salidas
	clkOut: out std_logic; 
	clkValOut: out std_logic_vector(3 downto 0) 
	);
end reloj_ADS9223;

architecture control_reloj of reloj_ADS9223 is

--cosas para la maquina de estados

type STATE_TYPE is (E0, E1); 
attribute ENUM_ENCODING: STRING; 
attribute ENUM_ENCODING of STATE_TYPE:type is "00 01";

signal  EA, EP : STATE_TYPE:=E0;  
 
 signal reset: std_logic:='0';
 signal integrando : std_logic;
 
 shared variable cuenta: integer range 0 to 511; 
 shared variable valClk : integer range 0 to 511:=0; --tiempo de integracion dado al condensador, antes valia 10
 shared variable tIntegracion: integer range 0 to 511:= 17; --periodo del reloj = tIntegracion*2*10 (ns)

 signal clkSig: std_logic;
 
 
begin



--proceso para el control de la maquina de estados
process (clk) 
    begin 
 
        if (clk'event and clk= '1') then 
				EA <= EP;
        end if;
		  --EA <= EP;
end process; 


process (EA, comp, control)  
begin 

       case EA is 
			--estado de espera
			when E0 =>
					clkSig<='0';
					cuenta:=0;
					valClk:=0;
					if (comp='1') then --if(LLD ='1') si se activa LLD, comienza la conversion
							EP <= E1;  --todas las asignaciones eran a EP
							clkSig<='1';
				    		cuenta:=0;
							valClk:=1;
					else
							EP <= E0;
					end if;
				
			when E1 =>   --estado de cuenta
					clkSig<=clkSig;
					cuenta:=cuenta + 1;
				   if cuenta> tIntegracion then  -- espero el tiempo de integracion
						clkSig<=not(clkSig);
						cuenta:= 0;
						if (clkSig='1') then --solo incremento en los pulsos altos
							valClk:= valClk +1;
					   end if; 
					end if; 
					
	            if (control ='1') then
						EP <= E0;
					else
						 EP <= E1;
					end if;
					
		end case;
		
		--asigno el valor de clkValOut		
		case valClk is 
			when 1=>
				clkValOut<="001";
			when 2=>
				clkValOut<="010";
			when 3=>
				clkValOut<="011";
			when 4=>
				clkValOut<="100";
			when 5=>
				clkValOut<="101";
			when others=>
				clkValOut<="000";
		end case; 
				
				
			
		
clkOut<=clkSig;
end process; 
	
end control_reloj;
	