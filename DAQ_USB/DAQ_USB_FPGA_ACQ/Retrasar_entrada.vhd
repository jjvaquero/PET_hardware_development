----------------------------------------------------------------------------
----------------------------------------------------------------------------
--ESTE COMPONENTE SE ENCARGA DE RETARDAR LA SE�AL DE DISPARO DE LA VENTANA--
----EL TIEMPO SER� PROPORCIONAL AL NUMERO DE BIESTABLES Y LA F DE RELOJ-----
-- Solo funciona bien con se�ales activas a nivel alto, si no provoca estado
-- de incertidumbre al comienzo de su funcionamiento                   -----
----------------------------------------------------------------------------
----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Retrasar_entrada is
	port(
		Entrada : in std_logic;
		clk     : in std_logic;
		--NGATE   : out std_logic;
		Salida  : out std_logic);
end Retrasar_entrada;

architecture rtl of Retrasar_entrada is

signal q0_Entrada, q1_Entrada, q2_Entrada, q3_Entrada, q4_Entrada, q5_Entrada, curr_val: std_logic; 
--signal fs_Entrada, fb_Entrada : std_logic;

signal  s : std_logic;
--signal  jk: std_logic_vector(1 downto 0); 
--signal intermedia: std_logic;

begin


process(clk,Entrada)
begin
if clk'event and clk = '1'  then
	q0_Entrada <= Entrada;
	--NGATE<= Entrada;
end if;
end process;

process(clk)
begin
if clk'event and clk = '1' then
	q1_Entrada <= q0_Entrada;
end if;
end process;

process(clk)
begin
if clk'event and clk = '1' then
	q2_Entrada <= q1_Entrada;
end if;
end process;

process(clk)
begin
if clk'event and clk = '1' then
	q3_Entrada <= q2_Entrada;
end if;
end process;

process(clk)
begin
if clk'event and clk = '1' then
	q4_Entrada <= q3_Entrada;
end if;
end process;

process(clk)
begin
if clk'event and clk = '1' then
	q5_Entrada <= q4_Entrada;
end if;
end process;

--fs_Entrada <= q0_Entrada and q1_Entrada and q2_Entrada and (not q3_Entrada) and (not q4_Entrada) and (not q5_Entrada);
--fb_Entrada <= q5_Entrada and q4_Entrada and q3_Entrada and (not q0_Entrada) and (not q1_Entrada) and (not q2_Entrada);

--jk <= fs_Entrada & fb_Entrada;
--Salida <= s;
Salida <= q5_Entrada;

--  process (clk)
--  begin  -- process
--    if clk'event and clk = '1' then
--      case jk is
--        when "00"   =>
--          --la salida no cambia
--          s <= '0';
--        when "01"   =>
--          s <= '0';
--        when "10"   =>
--          s <= '1';
--        when "11"   =>
--          s <= '0';
--        when others => null;
--      end case;
--    end if;
--  end process;



end rtl;
