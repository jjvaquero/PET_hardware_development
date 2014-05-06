LIBRARY IEEE;

use IEEE.STD_LOGIC_1164.ALL;


entity control_fifo is
		
port(
	--entradas
	
	n_data: in std_logic; --n_data = nbusy1 and nbusy2 and ....and de todas las nbusy
	dataIn_1: in std_logic_vector(11 downto 0);
	dataIn_2: in std_logic_vector(11 downto 0);
	clk: in std_logic; --reloj del sistema
	--salidas
	--NGATE: out std_logic;
	nRead1 : out std_logic;
	nRead2 : out std_logic;
	nRead3 : out std_logic; --de momento esta no la utilizare
	dataOut: out std_logic_vector(15 downto 0);
	fifo_clk: out std_logic
	);
end control_fifo;

architecture lectura of control_fifo is

--cosas para la maquina de estados

type STATE_TYPE is (E0, E1, E2, E3, E4 ,E5); 
attribute ENUM_ENCODING: STRING; 
attribute ENUM_ENCODING of STATE_TYPE:type is "0000 0001 0010 0011 0100 0101";

signal  EA, EP        : STATE_TYPE;  
 
 signal reset: std_logic:='0';
  shared variable leido: integer range 0 to 512;
  signal leyendo : std_logic:='0';
  signal fifo_control : std_logic;
 --signal s_write : std_logic;
  
 
begin



--proceso para el control de la maquina de estados
process (clk,reset) 

    begin 

        if (reset='0') then 
           	EA <= E0; --maquina de estados
        elsif (clk'event and clk= '1') then 
				EA <= EP;
				if leyendo = '1' then
						leido := leido +1;
				else 
						leido:= 0;
				end if;
        end if;
		  --EA <= EP;
		  
		 -- s_write <=fifo_clk;
end process; 


process (EA, n_data, clk)  
begin 
	
		nRead1<='1'; --las read llevan logica inversa
		nRead2<='1';
		nRead3<='1';

       case EA is 
			when E0 =>   
					--nRead1<='1'; --las read llevan logica inversa
					--nRead2<='1';
					--nRead3<='1';
					reset <='1';
					fifo_control<='0';
					if (n_data='1') then --tengo un dato nuevo para leer 
							nRead1<='0';
							leyendo<='0';
							EP <= E1;  --todas las asignaciones a EP
					else
							EP <= E0;
					end if;
				
			when E1 =>   --leo el primer conversor
					nRead1<='0'; --las read llevan logica inversa
					--nRead2<='1';
					--nRead3<='1';
					reset <='1';
					leyendo<='1';
					fifo_control<='0';
					--s_write<='0'; 
					dataOut(15 downto 12)<="0001"; 
					dataOut(11 downto 0)<=dataIn_1(11 downto 0);
					if (leido > 3) then
					   leyendo<='0';
						fifo_control<='1';
						EP<=E2; 
					else
						EP<=E1; 
					end if;
						
		
			when E2 =>   --leo el segundo conversor
					nRead1<='0'; --las read llevan logica inversa
					--nRead2<='1';
					--nRead3<='1';
					reset <='1';
					leyendo<='1';
					fifo_control<='0';
					--s_write<='0'; 
					dataOut(15 downto 12)<="0010";
					dataOut(11 downto 0)<=dataIn_2(11 downto 0);
					if (leido > 3) then
						nRead1<='1';
						nRead2<='0';
						leyendo <='0';
						fifo_control<='1';
						EP<=E3; 
					else
						EP<=E2; 
					end if;
					
			when E3 =>   --leo el tercer conversor
					--nRead1<='1'; --las read llevan logica inversa
					nRead2<='0';
					reset <='1';
					leyendo<='1';
					fifo_control<='0';
					--s_write<='0'; 
					dataOut(15 downto 12)<="0100";
					dataOut(11 downto 0)<=dataIn_1(11 downto 0);
					--if (fifo_clk = '1') then
					if (leido > 3) then
						leyendo<='0';
						fifo_control<='1';
						EP<=E4; 
					else
						EP<=E3; 
					end if;
					
			 when E4 =>   --leo el cuarto conversor
					--nRead1<='1'; --las read llevan logica inversa
					nRead2<='0';
					reset <='1';
					--s_write<='0';
					fifo_control<='0';
				   leyendo<='1';	
					dataOut(15 downto 12)<="1000";
					dataOut(11 downto 0)<=dataIn_2(11 downto 0);
					--dataOut(15 downto 12)<="0000"; --0001
					--dataOut(11 downto 0)<=(others=>'0');
					--dataOut(2 downto 0)<="100";
					if (leido > 3 ) then --pongo el n_data=0 para que espera nueva conversion
						nRead2<='1';
						nRead3<='0';
						leyendo<='0';
						fifo_control<='1';
						EP<=E5; 
					else
						EP<=E4; 
					end if;
					
			when E5 =>   --leo el quinto
					--nRead1<='1'; --las read llevan logica inversa
					nRead3<='0';
					reset <='1';
					leyendo<='1';
					fifo_control<='0';
					--s_write<='0'; 
					dataOut(15 downto 12)<="1100";
					dataOut(11 downto 0)<=dataIn_1(11 downto 0);
					--if (fifo_clk = '1') then
					if (leido > 3) and (n_data = '0') then --pongo el n_data=0 para que espera nueva conversion
						leyendo<='0';
						fifo_control<='1';
						EP<=E0; 
					else
						EP<=E5; 
					end if;
					
				
							
       end case; 
		 
fifo_clk<=fifo_control; --leyendo;
nRead3<='1'; --creo que esto es lo que me la esta liando...
end process; 

	
	
end lectura;
	