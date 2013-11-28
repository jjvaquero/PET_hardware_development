----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/30/2013 12:39:39 PM
-- Design Name: 
-- Module Name: BufRClkAlign - Behavioral
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

entity BufRClkAlign is
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           bufRClr : out STD_LOGIC;
           bufMRCE : out STD_LOGIC);
end BufRClkAlign;

architecture Behavioral of BufRClkAlign is

 type states is (S0,S1,S2,S3);
signal currState, nextState : states; 

begin

    process (Clk, Rst)
    begin        
        if (rising_edge(Clk)) then         
          if ( Rst = '1') then
           currState <= S0; 
          else
             currState <= nextState;
          end if;
         end if;
    end process;
    
    process(currState)
        begin 
           case currState is
               when S0=>
                    bufMRCE<='0';
                    bufRClr<='0';
                    nextState<=S1;
               when S1=>
                    bufMRCE<='0';
                    bufRClr<='1';
                    nextState<=S2;
               when S2=>
                    bufMRCE<='0';
                    bufRClr<='0';
                    nextState<=S3;
               when S3=>
                    bufMRCE<='1';
                    bufRClr<='0';
                    nextState<=S3;
           end case;
    end process;


end Behavioral;
