----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2013 03:11:33 PM
-- Design Name: 
-- Module Name: ADC_Serdes - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADC_Serdes is
    Port ( ClkIn : in STD_LOGIC;
           In0 : in STD_LOGIC;
           In1 : in STD_LOGIC;
           DataClk: in STD_LOGIC;
           Data : out STD_LOGIC_VECTOR (31 downto 0);
           ClkOut : out STD_LOGIC);
end ADC_Serdes;

architecture Behavioral of ADC_Serdes is
 --shared 
  shared variable cuenta : integer:=0;
begin
  
  
  process(ClkIn)  --, DataClk)

   variable data_tmp : std_logic_vector(23 downto 0);
   constant comp : integer :=24;
  begin
  --if (ClkIn'event and ClkIn = '1') then
    data_tmp( cuenta ):=In0;
    data_tmp( (cuenta+1)):=In1;
    cuenta:=(cuenta+2);
   if ( cuenta >= comp ) then
       -- data_tmp(12):=ClkIn; --truco para Xillinx
       ClkOut<=ClkIn; --'1';
       Data(4 downto 0)<= std_logic_vector(to_unsigned(cuenta,5)); --data_tmp;
       cuenta:=0;
    else
       ClkOut<='0'; --'0';
       
    end if;
    
    --Data(11 downto 0)<=std_logic_vector(to_unsigned(count,12));
    Data(31 downto 5)<=(others => '0');
    
    
    end process;
   
    --basura metida por culpa de xillinx que me quita laspistas...
    --warning map no se que 701...    
  --end if;
   -- process(DataClk)
  --  begin
   -- if   rising_edge(DataClk) then -- then 
       -- data_tmp(12):=DataClk; --truco para Xillinx
    --    nein<='1';
       -- ClkOut<='1';
    --else
    --     nein<='0';
    --end if;  
    

    

            
 -- end process;

end Behavioral;
