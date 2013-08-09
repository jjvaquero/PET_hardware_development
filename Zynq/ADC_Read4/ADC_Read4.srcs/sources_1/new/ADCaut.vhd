----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2013 04:51:02 PM
-- Design Name: 
-- Module Name: ADCaut - Behavioral
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

--lo defino como una automata de estados para la lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADCaut is
    Port ( Clk : in STD_LOGIC;
           DatClk : in STD_LOGIC;
           DatIn : in STD_LOGIC_VECTOR (1 downto 0);
           DatOut : out STD_LOGIC_VECTOR (11 downto 0);
           DatRead : in STD_LOGIC);
end ADCaut;

architecture Behavioral of ADCaut is

--define the states used
type states is (S1,S2,S3);
signal currState : states;
 shared variable datTmp : std_logic_vector(11 downto 0);
--counting variable
 shared variable count: integer :=0;

begin

  process(Clk, DatClk, DatRead)

   --currState<=S1;
  begin
  
    case currState is
        --first wait for DatClk
        when S1 =>
            --count:=0;
            datTmp := (others=>'0');
            --DatOut<= datTmp;
            if rising_edge(DatClk) then
                currState<= S2;
            else
                currState<= S1;
            end if;
        --counting state, wait to read 12 bits
        when S2 =>
            if ( not(falling_edge(DatClk))) then
                datTmp(count) := DatIn(0); 
                count:=count+1;
                datTmp(count) := DatIn(1);
                 count:=count+1;
            end if;
            if ( count >= 12) then
                count:= 0;
                DatOut<= datTmp;
                currState <= S3;                                
            else
                --DatOut(7 downto 0) <= std_logic_vector(to_unsigned(count,8));
                currState<=S2;
            end if;
        when S3 =>
            --wait for the data to be read
            DatOut<=datTmp;
            if rising_edge(DatRead) then
                currState <= S1; 
            else
                currState <=S3;
            end if;
        when others =>
            currState <= S1;
        end case;
        
    end process;         
           


end Behavioral;
