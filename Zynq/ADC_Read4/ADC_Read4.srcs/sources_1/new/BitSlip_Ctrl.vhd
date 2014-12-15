----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/26/2013 11:43:24 AM
-- Design Name: 
-- Module Name: BitSlip_Ctrl - Behavioral
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

entity BitSlip_Ctrl is
    Port ( dataIn : in STD_LOGIC_VECTOR (11 downto 0);
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           bitSlip : out STD_LOGIC;
           done : out STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR(11 downto 0);
           delayEn : out STD_LOGIC_VECTOR(1 downto 0)
           );
end BitSlip_Ctrl;

architecture Behavioral of BitSlip_Ctrl is

--states used for the FSM
 type states is (S0,S1,S2,S3,S4);
 signal currState, nextState : states; 
 
 
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
     variable counter : integer;
      variable datTmp : std_logic_vector(5 downto 0);
    begin 
        delayEn<=b"00"; --by deafault not active
        done<='1';
        case currState is
            when S0=> --used only to set counter :=0
                counter:=0;
                nextState<=S1;
                --dataOut<=(others=>'0');
            when S1 =>
                --check if pattern is the same
               done<='1';
               if (dataIn = b"111111000000") then
                     nextState <= S3;  --now it should be done....
                     dataOut<=dataIn;
                     counter:=0;
                     bitslip<='0'; 
                else 
                    bitSlip<='1'; --assert bitSlip for one clkDiv_Cycle
                    nextState<=S2;
                
                end if;
             when S2 =>
                --deassert bitSlip for at least three clock cycles
                bitSlip<='0';
                done<='1';
                --dataOut<=(others=>'0');
                if (counter >= 2) then
                    nextState<=S1;
                    counter:= 0;
               else
                  counter := counter +1;
                  nextState<=S2;
               end if;
             when S3 =>
                bitSlip<='0'; --<= '0';
                done<='1';  --de-assert sdata so that ADC starts working
                --dataOut<=dataIn;
                if (dataIn = b"111111000000") then
                    nextState <= S3;
                    dataOut<=dataIn;
                    --para terminar
                    counter:= counter+1; 
                    if (counter >= 2) then
                         done<='0';
                         counter:=11;
                         nextState<= S4;
                    end if;                   
                else
                    datTmp := (dataIn(11),dataIn(9),dataIn(7), dataIn(5),dataIn(3),dataIn(1));
                    if  (not(datTmp = b"111000")) then
                        delayEn(0)<='1';
                   end if;
                   datTmp := (dataIn(10),dataIn(8),dataIn(6), dataIn(4),dataIn(2),dataIn(0));
                   if  (not(datTmp = b"111000")) then
                        delayEn(1)<='1';
                    end if;                   
                   -- delayEn<=b"11"; --modifies the delay value
                    --luego poner 11
                    nextState <=S0;
                    done<='1';
                end if;    
               --estado final alcanzado tras conseguir 10 valores iguales seguidos  
               when S4=>
                 bitSlip<='0';
                 done<='0';
                 dataOut<=dataIn;                          
         end case; 
         
         
      end process;           
                                      
end Behavioral;
