----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2013 02:20:54 PM
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
library UNISIM;
	use UNISIM.VCOMPONENTS.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BitSlipCtrlFSM_v2 is
    Port ( DataIn : in STD_LOGIC_VECTOR (5 downto 0);
           PatternIn : in std_logic_vector(5 downto 0);
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           BitSlipP : out STD_LOGIC;
           BitSlipN : out STD_LOGIC;
           --FCLK     : in STD_LOGIC;
           State : out STD_LOGIC_VECTOR (1 downto 0);
           Done : out STD_LOGIC);
end BitSlipCtrlFSM_v2;

architecture Behavioral of BitSlipCtrlFSM_v2 is

--states used for the FSM
 type states is (S0,S1,S2,S3,S4,S5,S6);
 signal currState, nextState : states; 
  attribute CLOCK_SIGNAL : string;
  attribute CLOCK_SIGNAL of currState : signal is "yes";
  
  signal intBitSlipP : std_logic;
  signal intBitSlipN : std_logic;
  


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
    variable counter : natural range 0 to 255;
     
   begin 
       done<='0';
       intBitSlipP<='0';
       intBitSlipN<='0';
       case currState is
           when S0=> --used only to set counter :=0
               counter:=0;
               nextState<=S1; 
               state<=b"00";
               --dataOut<=(others=>'0');
           when S1 =>
               --check if pattern is the same
              state<=b"01";
              counter:=0;
              if (DataIn(5 downto 3) = PatternIn(5 downto 3)) then
                    nextState <= S3;  --now it should be done....
                    --done<='1';
                   -- counter:=0;                  
               else 
                   intBitSlipP<='1'; --assert bitSlip for one clkDiv_Cycle
                   nextState<=S2;              
               end if;
            when S2 =>
               --deassert bitSlip for at least three clock cycles
               state<=b"10";
               --dataOut<=(others=>'0');
               if (counter >= 5) then  -->=2
                   nextState<=S3;  --try now bitslipN
                   counter:= 0;
              else
                 counter := counter +1;
                 nextState<=S2;
              end if;
          --modified to activate the bitslips one after the other
          when S3 =>
                --check if pattern is the same
               state<=b"01";
               counter:=0;
               if (DataIn(2 downto 0) = PatternIn(2 downto 0)) then
                     nextState <= S5;  --now it should be done....
                     --done<='1';     
                else 
                    intBitSlipN<='1'; --assert bitSlip for one clkDiv_Cycle
                    nextState<=S4;              
                end if;
             when S4 =>
                --deassert bitSlip for at least three clock cycles
                state<=b"10";
                --dataOut<=(others=>'0');
                if (counter >= 5) then  -->=2
                    nextState<=S1;
                    counter:= 0;
               else
                  counter := counter +1;
                  nextState<=S4;
               end if;
                   
            when S5 =>
               state<=b"11";
               done<='0';   
               if (DataIn = PatternIn) then
                   nextState <= S5;
                   --para terminar
                   counter:= counter+1; 
                   if (counter >= 20) then    --100
                        --counter:=110;
                        nextState<= S6;
                   end if;                   
               else               
                   nextState <=S0;
                   counter:=0;
               end if;    
              --estado final alcanzado tras conseguir 10 valores iguales seguidos  
              when S6=>
                state<=b"11";
                done<='1';   
                counter:=0; 
                if (DataIn = PatternIn) then
                    nextState <= S6; 
                else 
                    nextState <= S0; --S0;
                end if;               
        end case; 
        
        
     end process;



        process (Clk)
        
        begin
             if (rising_edge(Clk)) then

                 BitSlipP <= IntBitSlipP;
                 BitSlipN <= IntBitSlipN;
                             
               -- end loop;
     
             end if;
        end process;
 

end Behavioral;
