
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity clk_div is
	port(
		clk     : in std_logic;
		--NGATE   : out std_logic;
		Salida  : out std_logic);
end clk_div;

architecture rtl of clk_div is


signal  s : std_logic;
shared variable cuenta : integer range 0 to 10000:= 0;

begin

process(clk)
begin
if clk'event and clk = '1'  then

	cuenta:= cuenta+1;
	 if (cuenta < 5000) then
		s<='0';
	 else
		s<='1';
	 end if;
	 
end if;
end process;


Salida <= s;

end rtl;
