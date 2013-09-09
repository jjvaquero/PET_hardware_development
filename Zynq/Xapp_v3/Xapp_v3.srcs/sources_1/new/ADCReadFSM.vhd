----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2013 12:18:14 PM
-- Design Name: 
-- Module Name: ADCReadFSM - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADCReadFSM is
    Port ( DivClk : in STD_LOGIC;
           BitClk : in STD_LOGIC;
           bit0 : in STD_LOGIC;
           bit1 : in STD_LOGIC;
           Rst : in STD_LOGIC;
           State : out std_logic_vector( 2 downto 0);
           DataOut : out STD_LOGIC_VECTOR (11 downto 0));          
end ADCReadFSM;

architecture Behavioral of ADCReadFSM is

--states used for the FSM
 type states is (S0,S1,S2,S3,S4,S5);
 signal currState, nextState : states; 
 
 signal datBit0     : std_logic_vector(5 downto 0);
 signal datBit1     : std_logic_vector(5 downto 0);
 signal intRst      : std_logic;

begin

    process (BitClk, Rst) --, intRst)
        begin        
           --if (rising_edge(BitClk)) then  --es DDR, luego prueba a usar rising_edge y SDR       
            if ( Rst = '1')  then
               currState <= S0; 
               --intRst<='0';
              else
                 currState <= nextState;
              end if;
           --end if;
          --if (rising_edge(intRst)) then
              -- currState<= S0;
          --end if;          
           
  end process;
  
   process(currState)
   
   begin
   
        case currState is
            when S0=>
                datBit1(5) <= bit1; datBit0(5) <=bit0;
                nextState <= S1; State<= "001";
            when S1=>
                datBit1(4) <= bit1; datBit0(4) <=bit0;
                nextState <= S2;  State<= "010";            
            when S2=>
                datBit1(3) <= bit1; datBit0(3) <=bit0;
                nextState <= S3; State<= "011";
            when S3=>
                datBit1(2) <= bit1; datBit0(2) <=bit0;
                nextState <= S4;  State<="100";             
            when S4=>
                datBit1(1) <= bit1; datBit0(1) <=bit0;
                nextState <= S5;  State<="101";              
            when S5=>
                datBit1(0) <= bit1; datBit0(0) <=bit0;
                nextState <= S0;  State<="110";
        end case;                
        
   end process;
   
   process(DivClk)  
   begin 
      if (DivClk='1') then
          --DataOut(11 downto 0)<=(datBit1(5),datBit0(5),datBit1(4),datBit0(4),datBit1(3),datBit0(3),datBit1(2),datBit0(2),datBit1(1),datBit0(1),datBit1(0),datBit0(0));
         
         DataOut(11 downto 6) <= datBit1;
         DataOut (5 downto 0) <= datBit0;
        --asignacion decente de los datos
        intRst <='1';  
     else 
        intRst<='0';     
     end if;
     
        --datBit0<=(others=>'0');
        --datBit1<=(others=>'0');      
   end process;
    


end Behavioral;
