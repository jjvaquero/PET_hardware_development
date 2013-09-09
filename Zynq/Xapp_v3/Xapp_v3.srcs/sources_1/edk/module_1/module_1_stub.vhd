-------------------------------------------------------------------------------
-- module_1_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity module_1_stub is
  generic(
    C_AdcChnls          : integer := 2;     -- Number of ADC in a package 
    C_AdcWireInt        : integer := 2     -- 2 = 2-wire, 1 = 1-wire interface
    );
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB_pin : in std_logic;
    processing_system7_0_PS_CLK_pin : in std_logic;
    processing_system7_0_PS_PORB_pin : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    
    --This signals will only be used inside, no need to route them to pins on the FPGA
    --LED_DutyCycle : out std_logic_vector(31 downto 0);
    --processing_system7_0_FCLK_CLK0_pin : out std_logic;
    --ADC_DataIn : in std_logic_vector(31 downto 0);
    --processing_system7_0_FCLK_RESET0_N_pin : out std_logic;
    --processing_system7_0_FCLK_CLK1_pin : out std_logic;
    --processing_system7_0_FCLK_RESET1_N_pin : out std_logic
       LEDS : out std_logic_vector(7 downto 0); 
       --pongo ademas el pin para la salida del reloj
       FCLK :  in std_logic_vector(1 downto 0);
       --relojes auxiliares para que planaahead no se los cargue
       FCLKP1: out std_logic;  --reloj usado para el conversor,sal por JA4
       --FCLKP2: out std_logic;  --TODO borrar...sale por JB4
       --FCLKP3: out std_logic;  --sale por JB2
       --used to control the sync pattern
       SData: out std_logic;
       --pines para datos
       ADC_Data1: in std_logic_vector(1 downto 0);
       ADC_Data0: in std_logic_vector(1 downto 0);
      -- ADC_Data2: in std_logic_vector(1 downto 0);
       --ADC_Data3: in std_logic_vector(1 downto 0);
       DCLK: in std_logic_vector(1 downto 0)
       --BTNC : in std_logic 
       --BTNU : in std_logic
    
    
  );
end module_1_stub;

architecture STRUCTURE of module_1_stub is

    signal sLED_DutyCycle : std_logic_vector(31 downto 0);
    signal sADC_DataIn : std_logic_vector(31 downto 0):=(others => '0');
    --signal sADC_Data: std_logic_vector(11 downto 0);
    signal botones : std_logic_vector(1 downto 0);
    signal datBuff  : std_logic_vector(11 downto 0);
    signal sprocessing_system7_0_FCLK_CLK0_pin : std_logic;
    signal PL_Rst, sClkExtIn: std_logic;
    signal sADC_Data1,  sADC_Data0, sDCLK, sFCLK: std_logic;
    
    --Xapp
    signal IntRst       : std_logic;
    signal IntBitClkDone : std_logic;
    signal IntBitClk    : std_logic;
    signal IntDivClk    : std_logic;
    signal delayRefClk  : std_logic;

    

    

        
  component module_1 is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB_pin : in std_logic;
      processing_system7_0_PS_CLK_pin : in std_logic;
      processing_system7_0_PS_PORB_pin : in std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic; 
      LED_DutyCycle : out std_logic_vector(31 downto 0);
      processing_system7_0_FCLK_CLK0_pin : out std_logic;
      ADC_DataIn : in std_logic_vector(31 downto 0);
      processing_system7_0_FCLK_RESET0_N_pin : out std_logic;
      processing_system7_0_FCLK_CLK1_pin : out std_logic;
      processing_system7_0_FCLK_RESET1_N_pin : out std_logic
      --axi_gpio_1_GPIO_IO_I_pin : in std_logic_vector( 1 downto 0)
    );
  end component;
  

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of module_1 : component is "user_black_box";
 
 
 component PWM_Controller is
    port (
     Clk : in std_logic;
     DutyCycle : in std_logic_vector(31 downto 0);
 	 LED : out std_logic --_vector(6 downto 0)
     );
 end component;
 
 component AdcClock is
 	generic (
 	   C_AdcBits   : integer := 12;
 	   C_StatTaps  : integer := 16
 	);
     port (
         BitClk				: in std_logic;
         BitClkRst			: in std_logic;
         BitClkEna			: in std_logic;
         BitClkReSync		: in std_logic;
         --BitClk_MonClkOut	: out std_logic;   -- CLK output
         BitClk_MonClkIn		: in std_logic;    -- ISERDES.CLK input
         --BitClk_RefClkOut	: out std_logic;   -- CLKDIV & logic output
         BitClk_RefClkIn		: in std_logic;    -- CLKDIV & logic input
         BitClkAlignWarn 	: out std_logic;
 		 BitClkInvrtd		: out std_logic;
         BitClkDone 			: out std_logic;
         BitClk34            : out std_logic;
         DivClk34            : out std_logic;
         BitClk35            : out std_logic;
         DivClk35            : out std_logic
     );
 end component;
 
--  component ADCReadFSM is
--     Port ( DivClk : in STD_LOGIC;
--            BitClk : in STD_LOGIC;
--            bit0 : in STD_LOGIC;
--            bit1 : in STD_LOGIC;
--            Rst : in STD_LOGIC;
--            State : out std_logic_vector( 2 downto 0);
--            DataOut : out STD_LOGIC_VECTOR (11 downto 0));
-- end component;

    component AdcDataReader is
    Port ( PinDataP : in STD_LOGIC;
           PinDataN : in STD_LOGIC;
           BitClk : in STD_LOGIC;
           DivClk : in STD_LOGIC;
           DataOut : out STD_LOGIC_VECTOR (5 downto 0);
           SyncDone : out STD_LOGIC;
           state : out STD_LOGIC_VECTOR (1 downto 0);
           Rst  : in std_logic; 
           BitClkDone   : in std_logic
           );
     end component;
 
 


begin

  --LVDS signal mapping
   -- ibuf0 : IBUFDS  port map (I=>ADC_Data0(0), IB=>ADC_Data0(1), O=>sADC_Data0); 
    --ibuf1 : IBUFDS  port map (I=>ADC_Data1(0), IB=>ADC_Data1(1), O=>sADC_Data1);   
    ibuf2 : IBUFGDS port map (I=>DCLK(0), IB=>DCLK(1), O=>sDCLK);
    ibuf3 : IBUFGDS port map (I=>FCLK(0), IB=>FCLK(1), O=>sFCLK);
    --ioClk : BUFIO   port map (I=> sDCLK, O => IntBitClk);
    --IntDivClk <= sFCLK;
    --ibuf1 : IBUF port map (I => BTNU, O=> botones(0));
  

  module_1_i : module_1
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB_pin => processing_system7_0_PS_SRSTB_pin,
      processing_system7_0_PS_CLK_pin => processing_system7_0_PS_CLK_pin,
      processing_system7_0_PS_PORB_pin => processing_system7_0_PS_PORB_pin,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      LED_DutyCycle => sLED_DutyCycle,
      processing_system7_0_FCLK_CLK0_pin => sprocessing_system7_0_FCLK_CLK0_pin,
      ADC_DataIn => sADC_DataIn,
      --processing_system7_0_FCLK_RESET0_N_pin => processing_system7_0_FCLK_RESET0_N_pin,
      processing_system7_0_FCLK_CLK1_pin => sClkExtIn,
      processing_system7_0_FCLK_RESET1_N_pin => PL_Rst
    );
    
    
    PWM:PWM_Controller 
    port map(
        Clk =>sprocessing_system7_0_FCLK_CLK0_pin,
        DutyCycle =>sLED_DutyCycle,
    	LED =>LEDS(7)
    );
    
    AdcClk : AdcClock 
      port map (
            BitClk				=> sDCLK,
            BitClkRst			=> IntRst,
            BitClkEna			=> '1',
            BitClkReSync		=> '0',
            --BitClk_MonClkOut	=> IntBitClk,   -- CLK output
            BitClk_MonClkIn		=> IntBitClk,    -- ISERDES.CLK input
            --BitClk_RefClkOut	=> IntDivClk,   -- CLKDIV & logic output
            BitClk_RefClkIn		=> IntDivClk,    -- CLKDIV & logic input
            BitClkAlignWarn 	=> open,
    		BitClkInvrtd		=> open,
            BitClkDone 			=> IntBitClkDone, 
            BitClk34            => IntBitClk,
            DivClk34            => IntDivClk,
            BitClk35            => open,
            DivClk35            => open
        );
        
--     ADCReader : ADCReadFSM 
--         Port map ( 
--            DivClk      => sFCLK,
--            BitClk      => IntBitClk,
--            bit0        => sADC_Data0,
--            bit1        => sADC_Data1,
--            Rst         => IntRst,
--            State       => LEDS(4 downto 2),
--            DataOut     => datBuff --sADC_DataIn(11 downto 0)
--        );   

    AdcReader1 : AdcDataReader
    Port map (
           PinDataP         =>ADC_Data0(0),
           PinDataN         =>ADC_Data0(1),
           BitClk           => IntBitClk,
           DivClk           => IntDivClk,
           DataOut          => sADC_DataIn(5 downto 0),
           SyncDone         => LEDS(5),
           state            => LEDS(3 downto 2),
           Rst              =>IntRst,
           BitClkDone       =>IntBitClkDone
           );
           
   
     AdcReader2 : AdcDataReader
     Port map (
                  PinDataP         =>ADC_Data1(0),
                  PinDataN         =>ADC_Data1(1),
                  BitClk           => IntBitClk,
                  DivClk           => IntDivClk,
                  DataOut          => sADC_DataIn(11 downto 6),
                  SyncDone         => open, --LEDS(5),
                  state            => open, --LEDS(3 downto 2),
                  Rst              =>IntRst,
                  BitClkDone       =>IntBitClkDone
                  );

        
        -- IDELAYCTRL is needed for calibration
        BUFG_DlyCtrl : BUFG
            port map (
            O => delayRefClk, -- 1-bit output: Clock output
            I => sprocessing_system7_0_FCLK_CLK0_pin -- 1-bit input: Clock input
            );
        
        AdcClk_delayctrl : IDELAYCTRL
            port map (
             --RDY    => DELAY_LOCKED,
             REFCLK => delayRefClk,
             RST    => IntRst
             );
    
 
    
    ----------
    --AppsSysClk <= sprocessing_system7_0_FCLK_CLK0_pin;
    --AppsSysEna <='1';
    IntRst<= not(PL_Rst);
    
    


    --sADC_DataIn(31 downto 12) <= (others =>'0');
    --sADC_DataIn (11 downto 0) <= datBuff;
   --sADC_DataIn(11)<= datBuff(11); sADC_DataIn(9)<= datBuff(10); sADC_DataIn(7)<= datBuff(9); 
   -- sADC_DataIn(5)<= datBuff(8); sADC_DataIn(3)<= datBuff(7); sADC_DataIn(1)<= datBuff(6); 
   -- sADC_DataIn(10)<= datBuff(5); sADC_DataIn(8)<= datBuff(4); sADC_DataIn(6)<= datBuff(3); 
    --sADC_DataIn(4)<= datBuff(2); sADC_DataIn(2)<= datBuff(1); sADC_DataIn(0)<= datBuff(0); 
    
    FCLKP1 <= sCLkExtIn;
    SData <='1';
    LEDS (1)<='0';
    LEDS(6)<='0'; LEDS(4) <= '0'; -- <= (others=>'0');
    LEDS(0)<= IntBitClkDone;
    

end architecture STRUCTURE;

