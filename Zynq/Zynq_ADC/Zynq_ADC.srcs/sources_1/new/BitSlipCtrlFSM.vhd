----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2013 02:20:54 PM
-- Design Name: 
-- Module Name: BitSlipCtrlFSM - Behavioral
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

entity BitSlipCtrlFSM is
    Port ( DataIn : in STD_LOGIC_VECTOR (2 downto 0);
           PatternIn : in std_logic_vector(2 downto 0);
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           BitSlip : out STD_LOGIC;
           --FCLK     : in STD_LOGIC;
           State : out STD_LOGIC_VECTOR (1 downto 0);
           Done : out STD_LOGIC);
end BitSlipCtrlFSM;

architecture Behavioral of BitSlipCtrlFSM is

--states used for the FSM
 type states is (S0,S1,S2,S3,S4);
 signal currState, nextState : states; 
  attribute CLOCK_SIGNAL : string;
  attribute CLOCK_SIGNAL of currState, nextState : signal is "yes";

begin

 process (Clk, Rst)
   begin        
       if (rising_edge(Clk)) then         
         if ( Rst = '0') then 
          currState <= S0; 
         else
            currState <= nextState;
         end if;
        end if;
   end process;
   
   process(currState)
    variable counter : natural range 0 to 63;
     
   begin 
       done<='0';
       case currState is
           when S0=> --used only to set counter :=0
               counter:=0;
               nextState<=S1; 
               state<=b"00";
               bitSlip<='0';
               --dataOut<=(others=>'0');
           when S1 =>
               --check if pattern is the same
              state<=b"01";
              counter:=0;
              if (DataIn = PatternIn) then
                    nextState <= S3;  --now it should be done....
                    done<='1';
                   -- counter:=0;
                    bitslip<='0'; 
               else 
                   bitSlip<='1'; --assert bitSlip for one clkDiv_Cycle
                   nextState<=S2;              
               end if;
            when S2 =>
               --deassert bitSlip for at least three clock cycles
               bitSlip<='0'; state<=b"10";
               --dataOut<=(others=>'0');
               if (counter >= 5) then  -->=2
                   nextState<=S1;
                   counter:= 0;
              else
                 counter := counter +1;
                 nextState<=S2;
              end if;
            when S3 =>
               bitSlip<='0';  state<=b"11";
               --dataOut<=dataIn;
               if (DataIn = PatternIn) then
                   nextState <= S3;
                   --para terminar
                   counter:= counter+1; 
                   if (counter >= 40) then    
                        counter:=41;
                        nextState<= S4;
                   end if;                   
               else               
                   nextState <=S0;
                   counter:=counter;
               end if;    
              --estado final alcanzado tras conseguir 10 valores iguales seguidos  
              when S4=>
                bitSlip<='0';   state<=b"11";
                done<='1';   
                counter:=counter; 
                if (DataIn = PatternIn) then
                    nextState <= S4; 
                else 
                    nextState <= S0;
                end if;               
        end case; 
        
        
     end process;




end Behavioral;
