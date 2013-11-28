----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2013 05:29:22 PM
-- Design Name: 
-- Module Name: AdcChanReader - Behavioral
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

entity AdcChanReaderMultiBank is
    Port (
       PinData0_P : in STD_LOGIC;
       PinData0_N : in STD_LOGIC;
       PinData1_P : in STD_LOGIC;
       PinData1_N : in STD_LOGIC;
       BitClk0 : in STD_LOGIC;
       DivClk0 : in STD_LOGIC;
       BitClk1 : in STD_LOGIC;
       DivClk1 : in STD_LOGIC;
       DataOut : out STD_LOGIC_VECTOR (11 downto 0);
       DataParOut : out std_logic_vector (1 downto 0);
       SyncDone : out STD_LOGIC;
       --state : out STD_LOGIC_VECTOR (1 downto 0);
       Rst  : in std_logic; 
       BitClkDone   : in std_logic;
       BitSlipP : in std_logic;
       BitSlipN : in std_logic
         );
end AdcChanReaderMultiBank;

architecture Behavioral of AdcChanReaderMultiBank is

    component AdcDataReader is
    Port ( PinDataP : in STD_LOGIC;
       PinDataN : in STD_LOGIC;
       BitClk : in STD_LOGIC;
       DivClk : in STD_LOGIC;
       DataOut : out STD_LOGIC_VECTOR (5 downto 0);

      -- state : out STD_LOGIC_VECTOR (1 downto 0);
       Rst  : in std_logic; 
       BitClkDone   : in std_logic; 
       BitSlipP : in std_logic;
       BitSlipN : in std_logic
       );
 end component;
  
  signal IntBitClk0      : std_logic;
  signal IntDivClk0      : std_logic;
  signal IntBitClk1      : std_logic;
  signal IntDivClk1      : std_logic;
  signal IntRst         : std_logic;
  signal IntBitClkDone  : std_logic;
  signal IntDatOut0     : std_logic_vector(5 downto 0);
  signal IntDatOut1     : std_logic_vector(5 downto 0);
  signal IntDataOut     : std_logic_vector (11 downto 0);
  

begin

    --Input singals routing
    IntRst <= Rst;
    IntBitClkDone <= BitClkDone;
    IntBitClk0 <= BitClk0;
    IntDivClk0 <= DivClk0;
    IntBitClk1 <= BitClk1;
    IntDivClk1 <= DivClk1;

    AdcReader0 : AdcDataReader
    Port map (
           PinDataP         =>PinData0_P,
           PinDataN         =>PinData0_N,
           BitClk           => IntBitClk0,
           DivClk           => IntDivClk0,
           DataOut          => IntDatOut0,
           --SyncDone         => IntSyncDone0, --LEDS(5),
           --state            => open, --LEDS(3 downto 2),
           Rst              =>IntRst,
           BitClkDone       =>IntBitClkDone,
           BitSlipP         => BitSlipP,
           BitSlipN         => BitSlipN
       );
       

    AdcReader1 : AdcDataReader
    Port map (
          PinDataP         =>PinData1_P,
          PinDataN         =>PinData1_N,
          BitClk           => IntBitClk1,
          DivClk           => IntDivClk1,
          DataOut          => IntDatOut1,
          --SyncDone         => IntSyncDone1, --LEDS(5),
          --state            => open, --LEDS(3 downto 2),
          Rst              =>IntRst,
          BitClkDone       =>IntBitClkDone,
          BitSlipP         => BitSlipP,
          BitSlipN         => BitSlipN
      );


    --Output Signas routing
    --SyncDone<= IntSyncDone1; --and IntSyncDone0;
--    IntDataOut(11)<= IntDatOut1(5);    IntDataOut(10) <= IntDatOut0(5); 
--    IntDataOut(9)<= IntDatOut1(4);     IntDataOut(8) <= IntDatOut0(4); 
--    IntDataOut(7)<= IntDatOut1(3);     IntDataOut(6) <= IntDatOut0(3); 
--    IntDataOut(5)<= IntDatOut1(2);     IntDataOut(4) <= IntDatOut0(2); 
--    IntDataOut(3)<= IntDatOut1(1);     IntDataOut(2) <= IntDatOut0(1); 
--    IntDataOut(1)<= IntDatOut1(0);     IntDataOut(0) <= IntDatOut0(0); 

    IntDataOut(11)<= IntDatOut1(5);    IntDataOut(5) <= IntDatOut0(5); 
    IntDataOut(10)<= IntDatOut1(4);    IntDataOut(4) <= IntDatOut0(4); 
    IntDataOut(9)<= IntDatOut1(3);     IntDataOut(3) <= IntDatOut0(3); 
    IntDataOut(8)<= IntDatOut1(2);     IntDataOut(2) <= IntDatOut0(2); 
    IntDataOut(7)<= IntDatOut1(1);     IntDataOut(1) <= IntDatOut0(1); 
    IntDataOut(6)<= IntDatOut1(0);     IntDataOut(0) <= IntDatOut0(0); 
    
    DataOut<= IntDataOut; 
    
    --process to generate the parity data needed for the FIFO
    process (DivClk0)
     variable tmp : std_logic;    
    begin
      tmp:='0';
      for I in 0 to 7 loop
         tmp:=tmp xor IntDataOut(I);
      end loop;
      DataParOut(0)<=tmp;
      tmp:='0';
      for I in 8 to 11 loop
         tmp:=tmp xor IntDataOut(I);
      end loop;
      DataParOut(1)<=tmp; 
    end process;
    
    
end Behavioral;

