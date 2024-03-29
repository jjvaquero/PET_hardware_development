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
--       FCLKP2: out std_logic;  --TODO borrar...sale por JB4
--       FCLKP3: out std_logic;  --sale por JB2
       --used to control the sync pattern
       SData: out std_logic;
       --pines para datos
       
       ADC_DataA0: in std_logic_vector(1 downto 0);     --IO bank34
       ADC_DataA1: in std_logic_vector(1 downto 0);     --IO bank34
       -- ojo...los datos de B van en bancos diferentes....
       --B0 usa el banco 34 y B1 el banco 35
       ADC_DataB0: in std_logic_vector(1 downto 0);     --IO bank 34
       ADC_DataB1: in std_logic_vector(1 downto 0);     --IO bank 35
       ADC_DataC0: in std_logic_vector(1 downto 0);     --IO bank 35
       ADC_DataC1: in std_logic_vector(1 downto 0);     --IO bank 35
       ADC_DataD0: in std_logic_vector(1 downto 0);     --IO bank 35 
       ADC_DataD1: in std_logic_vector(1 downto 0);     --IO bank 35
     
       DCLK: in std_logic_vector(1 downto 0);
       --BTNC : in std_logic 
       --BTNU : in std_logic
       
       --Pins that are tied to GND in the ADS6425 EVM
       FMC_LA02_P: out std_logic;
       FMC_LA02_N: out std_logic;
       FMC_LA04_P: out std_logic;
       FMC_LA04_N: out std_logic;
       FMC_LA05_P: out std_logic;
       FMC_LA05_N: out std_logic;    
       FMC_LA06_P: out std_logic;
       FMC_LA06_N: out std_logic;
       FMC_LA10_P: out std_logic;
       FMC_LA10_N: out std_logic;
       FMC_LA23_P: out std_logic;
       FMC_LA23_N: out std_logic;
       FMC_LA27_P: out std_logic;
       FMC_LA27_N: out std_logic;
       FMC_LA29_P: out std_logic;
       FMC_LA29_N: out std_logic;    
       FMC_LA30_P: out std_logic;
       FMC_LA30_N: out std_logic;
       FMC_LA31_P: out std_logic;
       FMC_LA31_N: out std_logic;    
       FMC_LA32_P: out std_logic;
       FMC_LA32_N: out std_logic;
       FMC_LA33_P: out std_logic;
       FMC_LA33_N: out std_logic
                  
    
  );
end module_1_stub;

architecture STRUCTURE of module_1_stub is

    signal sLED_DutyCycle : std_logic_vector(31 downto 0);
    signal sADC_DataInCD : std_logic_vector(31 downto 0):=(others => '0');
    signal sADC_DataInAB : std_logic_vector(31 downto 0):=(others => '0');
    --signal sADC_Data: std_logic_vector(11 downto 0);
    signal botones : std_logic_vector(1 downto 0);
    signal datBuff  : std_logic_vector(11 downto 0);
    signal sprocessing_system7_0_FCLK_CLK0_pin : std_logic;
    signal PL_Rst, sClkExtIn: std_logic;
    signal sADC_Data1,  sADC_Data0, sDCLK, sFCLK: std_logic;
    
    --Xapp
    signal IntRst       : std_logic;
    signal IntBitClkDone : std_logic;
    signal IntBitClk34    : std_logic;
    signal IntDivClk34    : std_logic;
    signal delayRefClk  : std_logic;
    signal IntSyncDone  : std_logic;
    signal IntBitSlip_P  : std_logic;
    signal IntBitSlip_N  : std_logic;
    signal IntBitClk35  : std_logic;
    signal IntDivClk35  : std_logic;
    signal IntDataIn    : std_logic;
    signal fifoParInAB    : std_logic_vector ( 3 downto 0);
    signal fifoDataInAB   : std_logic_vector (31 downto 0):=(others => '0');
    signal fifoParInCD    : std_logic_vector ( 3 downto 0);
    signal fifoDataInCD   : std_logic_vector (31 downto 0):=(others => '0');
    signal sfifoControlPins : std_logic_vector ( 1 downto 0); 
    signal IntSinycOut : std_logic;

    

    

        
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
      --processing_system7_0_FCLK_CLK0_pin : out std_logic;
      --ADC_DataIn : in std_logic_vector(31 downto 0);
      fifoControlPins : out std_logic_vector (1 downto 0);
      fifoDataOutAB : in std_logic_vector (31 downto 0);
      fifoDataOutCD : in std_logic_vector (31 downto 0);
      --data_Int : in std_logic;
      processing_system7_0_FCLK_RESET0_N_pin : out std_logic;
      processing_system7_0_FCLK_CLK1_pin : out std_logic;
      processing_system7_0_FCLK_CLK2_pin : out std_logic;
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
 	   C_StatTaps  : integer := 7
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
 


--    component AdcDataReader is
--    Port ( PinDataP : in STD_LOGIC;
--           PinDataN : in STD_LOGIC;
--           BitClk : in STD_LOGIC;
--           DivClk : in STD_LOGIC;
--           DataOut : out STD_LOGIC_VECTOR (5 downto 0);
--           SyncDone : out STD_LOGIC;
--           state : out STD_LOGIC_VECTOR (1 downto 0);
--           Rst  : in std_logic; 
--           BitClkDone   : in std_logic
--           );
--     end component;
 
    component AdcChanReader is
    Port (
       PinData0_P : in STD_LOGIC;
       PinData0_N : in STD_LOGIC;
       PinData1_P : in STD_LOGIC;
       PinData1_N : in STD_LOGIC;
       BitClk : in STD_LOGIC;
       DivClk : in STD_LOGIC;
       DataOut : out STD_LOGIC_VECTOR (11 downto 0);
       DataParOut : out std_logic_vector ( 1 downto 0 );
       --SyncDone : out STD_LOGIC;
       --state : out STD_LOGIC_VECTOR (1 downto 0);
       Rst  : in std_logic; 
       BitClkDone   : in std_logic;
       BitSlipP : in std_logic;
       BitSlipN : in std_logic
         );
    end component;
    
   component AdcChanReaderMultiBank is
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
    end component;
    
    component AdcFrameSync is
        Port ( PinDataP : in STD_LOGIC;
               PinDataN : in STD_LOGIC;
               BitClk : in STD_LOGIC;
               DivClk : in STD_LOGIC;
               DataOut : out STD_LOGIC_VECTOR (5 downto 0);
               SyncDone : out STD_LOGIC;
               state : out STD_LOGIC_VECTOR (1 downto 0);
               Rst  : in std_logic; 
               BitClkDone   : in std_logic;
               BitSlipP : out std_logic;
               BitSlipN : out std_logic;
               NDataInt  : out std_logic
               );
    end component;

begin

  --LVDS signal mapping
   -- ibuf0 : IBUFDS  port map (I=>ADC_Data0(0), IB=>ADC_Data0(1), O=>sADC_Data0); 
    --ibuf1 : IBUFDS  port map (I=>ADC_Data1(0), IB=>ADC_Data1(1), O=>sADC_Data1);   
    ibuf2 : IBUFGDS port map (I=>DCLK(0), IB=>DCLK(1), O=>sDCLK);
    --ibuf3 : IBUFGDS port map (I=>FCLK(0), IB=>FCLK(1), O=>sFCLK);
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
      --processing_system7_0_FCLK_CLK0_pin => sprocessing_system7_0_FCLK_CLK0_pin,
      processing_system7_0_FCLK_CLK2_pin => sprocessing_system7_0_FCLK_CLK0_pin,
      --ADC_DataIn => sADC_DataIn,
      --data_Int => IntDataIn,
      fifoControlPins => sfifoControlPins,
      fifoDataOutCD => sADC_DataInCD,
      fifoDataOutAB => sADC_DataInAB,
      --processing_system7_0_FCLK_RESET0_N_pin => processing_system7_0_FCLK_RESET0_N_pin,
      processing_system7_0_FCLK_CLK1_pin => sClkExtIn,
      processing_system7_0_FCLK_RESET1_N_pin => PL_Rst
    );
    
    
--    PWM:PWM_Controller 
--    port map(
--        Clk =>sprocessing_system7_0_FCLK_CLK0_pin,
--        DutyCycle =>sLED_DutyCycle,
--    	LED =>LEDS(7)
--    );
    
    AdcClk : AdcClock 
      port map (
            BitClk				=> sDCLK,
            BitClkRst			=> IntRst,
            BitClkEna			=> '1',
            BitClkReSync		=> '0',
            --BitClk_MonClkOut	=> IntBitClk,   -- CLK output
            BitClk_MonClkIn		=> IntBitClk35,    -- ISERDES.CLK input
            --BitClk_RefClkOut	=> IntDivClk,   -- CLKDIV & logic output
            BitClk_RefClkIn		=> IntDivClk35,    -- CLKDIV & logic input
            BitClkAlignWarn 	=> open,
    		BitClkInvrtd		=> open,
            BitClkDone 			=> IntBitClkDone, 
            BitClk34            => IntBitClk34,
            DivClk34            => IntDivClk34,
            BitClk35            => IntBitClk35,
            DivClk35            => IntDivClk35
        );
        


--    AdcReader1 : AdcDataReader
--    Port map (
--           PinDataP         =>ADC_Data0(0),
--           PinDataN         =>ADC_Data0(1),
--           BitClk           => IntBitClk,
--           DivClk           => IntDivClk,
--           DataOut          => sADC_DataIn(5 downto 0),
--           SyncDone         => LEDS(5),
--           state            => LEDS(3 downto 2),
--           Rst              =>IntRst,
--           BitClkDone       =>IntBitClkDone
--           );
           
   
--     AdcReader2 : AdcDataReader
--     Port map (
--                  PinDataP         =>ADC_Data1(0),
--                  PinDataN         =>ADC_Data1(1),
--                  BitClk           => IntBitClk,
--                  DivClk           => IntDivClk,
--                  DataOut          => sADC_DataIn(11 downto 6),
--                  SyncDone         => open, --LEDS(5),
--                  state            => open, --LEDS(3 downto 2),
--                  Rst              =>IntRst,
--                  BitClkDone       =>IntBitClkDone
--                  );
        AdcFrame1 : AdcFrameSync 
        Port map (
           PinDataP     => FCLK(0),
           PinDataN     => FCLK(1),
           BitClk       => IntBitClk34,
           DivClk       => IntDivClk34,
           DataOut      =>open,
           SyncDone     => IntSyncDone,
           state        => open,
           Rst          => IntRst,
           BitClkDone   => IntBitClkDone,
           BitSlipP     => IntBitSlip_P,
           BitSlipN     => IntBitSlip_N,
           NDataInt      => IntDataIn
           );


       AdcReader_C: AdcChanReader 
        Port map (
           PinData0_P       => ADC_DataC0(0), 
           PinData0_N       => ADC_DataC0(1),
           PinData1_P       => ADC_DataC1(0),
           PinData1_N       => ADC_DataC1(1),
           BitClk           => IntBitClk35,
           DivClk           => IntDivClk35,
           DataOut          => fifoDataInCD(11 downto 0),
           DataParOut       =>fifoParInCD ( 1 downto 0),
           --SyncDone         => open, --IntSyncDone, --LEDS(5),
           --state : out STD_LOGIC_VECTOR (1 downto 0);
           Rst              => IntRst,
           BitClkDone       => IntBitClkDone,
           BitSlipP         => IntBitSlip_P,
           BitSlipN         => IntBitSlip_N
             );

         --testing C channel output
--            ibuf0 : IBUFDS  port map (I=>ADC_DataC0(0), IB=>ADC_DataC0(1), O=>sADC_Data0); 
--            ibuf1 : IBUFDS  port map (I=>ADC_DataC1(0), IB=>ADC_DataC1(1), O=>sADC_Data1);   
--            FCLKP2<=sADC_Data0;
--            FCLKP3<=sADC_Data1;
             
         AdcReader_D: AdcChanReader 
         Port map (
            PinData0_P       => ADC_DataD0(0),
            PinData0_N       => ADC_DataD0(1),
            PinData1_P       => ADC_DataD1(0),
            PinData1_N       => ADC_DataD1(1),
            BitClk           => IntBitClk35,
            DivClk           => IntDivClk35,
            DataOut          => fifoDataInCD(27 downto 16),
            DataParOut       =>fifoParInCD ( 3 downto 2),
    
            Rst              => IntRst,
            BitClkDone       => IntBitClkDone,
            BitSlipP         => IntBitSlip_P,
            BitSlipN         => IntBitSlip_N
              );

     -- fifoParIn(3 downto 2)<= b"00";
        fifoDataInCD(31 downto 28) <=b"0000";
        fifoDataInCD(15 downto 12) <=b"0000";

        
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
             
     
            -- FIFO18E1: 18Kb FIFO (First-In-First-Out) Block RAM Memory
    -- 7 Series
    -- Xilinx HDL Libraries Guide, version 14.5
        FIFO18E1_CD : FIFO18E1
        generic map (
            ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
            ALMOST_FULL_OFFSET => X"0080", -- Sets almost full threshold
            DATA_WIDTH => 36,--18   -- Sets data width to 4-36 --18
            DO_REG => 1, -- Enable output register (1-0) Must be 1 if EN_SYN = FALSE
            EN_SYN => FALSE, -- Specifies FIFO as dual-clock (FALSE) or Synchronous (TRUE)
            FIFO_MODE => "FIFO18_36", --FIFO18", -- Sets mode to FIFO18 or FIFO18_36
            FIRST_WORD_FALL_THROUGH => FALSE, -- Sets the FIFO FWFT to FALSE, TRUE
            INIT => X"00000000", -- Initial values on output port
            SIM_DEVICE => "7SERIES", -- Must be set to "7SERIES" for simulation behavior
            SRVAL => X"00000000" -- Set/Reset value for output port
        )
        port map (
            -- Read Data: 32-bit (each) output: Read output data
            DO => sADC_DataInCD, -- 32-bit output: Data output
            DOP => open, -- 4-bit output: Parity data output
            -- Status: 1-bit (each) output: Flags and other FIFO status outputs
            ALMOSTEMPTY => open, -- 1-bit output: Almost empty flag
            ALMOSTFULL => open, -- 1-bit output: Almost full flag
            EMPTY => open, -- 1-bit output: Empty flag
            FULL => open, -- 1-bit output: Full flag
            RDCOUNT => open, -- 12-bit output: Read count
            RDERR => open, -- 1-bit output: Read error
            WRCOUNT => open, -- 12-bit output: Write count
            WRERR => open, -- 1-bit output: Write error
            -- Read Control Signals: 1-bit (each) input: Read clock, enable and reset input signals
            RDCLK => sfifoControlPins(1), -- 1-bit input: Read clock
            RDEN => sfifoControlPins(0), -- 1-bit input: Read enable
            REGCE => '1', -- 1-bit input: Clock enable
            RST => IntRst, -- 1-bit input: Asynchronous Reset
            RSTREG => IntRst, -- 1-bit input: Output register set/reset
            -- Write Control Signals: 1-bit (each) input: Write clock and enable input signals
            WRCLK => IntDivClk35, -- 1-bit input: Write clock
            WREN => not(sfifoControlPins(0)), -- 1-bit input: Write enable --'1'
            -- Write Data: 32-bit (each) input: Write input data
            DI => fifoDataInCD, -- 32-bit input: Data input
            DIP => fifoParInCD -- 4-bit input: Parity input
        );
                -- End of FIFO18E1_inst instantiation
                
                
     AdcReader_A: AdcChanReader 
     Port map (
        PinData0_P       => ADC_DataA0(0),
        PinData0_N       => ADC_DataA0(1),
        PinData1_P       => ADC_DataA1(0),
        PinData1_N       => ADC_DataA1(1),
        BitClk           => IntBitClk34,
        DivClk           => IntDivClk34,
        DataOut          => fifoDataInAB(11 downto 0),
        DataParOut       =>fifoParInAB ( 1 downto 0),
        --SyncDone         => open, --IntSyncDone, --LEDS(5),
        --state : out STD_LOGIC_VECTOR (1 downto 0);
        Rst              => IntRst,
        BitClkDone       => IntBitClkDone,
        BitSlipP         => IntBitSlip_P,
        BitSlipN         => IntBitSlip_N
          );
          
      AdcReader_B: AdcChanReaderMultiBank 
      Port map (
         PinData0_P       => ADC_DataB0(0),
         PinData0_N       => ADC_DataB0(1),
         PinData1_P       => ADC_DataB1(0),
         PinData1_N       => ADC_DataB1(1),
         BitClk0           => IntBitClk34,
         DivClk0           => IntDivClk34,
         BitClk1           => IntBitClk35,
         DivClk1           => IntDivClk35,
         DataOut          => fifoDataInAB(27 downto 16),
         DataParOut       =>fifoParInAB ( 3 downto 2),
         --SyncDone         => open, --IntSyncDone, --LEDS(5),
         --state : out STD_LOGIC_VECTOR (1 downto 0);
         Rst              => IntRst,
         BitClkDone       => IntBitClkDone,
         BitSlipP         => IntBitSlip_P,
         BitSlipN         => IntBitSlip_N
       );
       
           -- fifoParIn(3 downto 2)<= b"00";
          fifoDataInAB(31 downto 28) <=b"0000";
          fifoDataInAB(15 downto 12) <=b"0000";

                
       FIFO18E1_AB : FIFO18E1
       generic map (
           ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
           ALMOST_FULL_OFFSET => X"0080", -- Sets almost full threshold
           DATA_WIDTH => 36,--18   -- Sets data width to 4-36 --18
           DO_REG => 1, -- Enable output register (1-0) Must be 1 if EN_SYN = FALSE
           EN_SYN => FALSE, -- Specifies FIFO as dual-clock (FALSE) or Synchronous (TRUE)
           FIFO_MODE => "FIFO18_36", --FIFO18", -- Sets mode to FIFO18 or FIFO18_36
           FIRST_WORD_FALL_THROUGH => FALSE, -- Sets the FIFO FWFT to FALSE, TRUE
           INIT => X"00000000", -- Initial values on output port
           SIM_DEVICE => "7SERIES", -- Must be set to "7SERIES" for simulation behavior
           SRVAL => X"00000000" -- Set/Reset value for output port
       )
       port map (
           -- Read Data: 32-bit (each) output: Read output data
           DO => sADC_DataInAB, -- 32-bit output: Data output
           DOP => open, -- 4-bit output: Parity data output
           -- Status: 1-bit (each) output: Flags and other FIFO status outputs
           ALMOSTEMPTY => open, -- 1-bit output: Almost empty flag
           ALMOSTFULL => open, -- 1-bit output: Almost full flag
           EMPTY => open, -- 1-bit output: Empty flag
           FULL => open, -- 1-bit output: Full flag
           RDCOUNT => open, -- 12-bit output: Read count
           RDERR => open, -- 1-bit output: Read error
           WRCOUNT => open, -- 12-bit output: Write count
           WRERR => open, -- 1-bit output: Write error
           -- Read Control Signals: 1-bit (each) input: Read clock, enable and reset input signals
           RDCLK => sfifoControlPins(1), -- 1-bit input: Read clock
           RDEN => sfifoControlPins(0), -- 1-bit input: Read enable
           REGCE => '1', -- 1-bit input: Clock enable 
           RST => IntRst, -- 1-bit input: Asynchronous Reset
           RSTREG => IntRst, -- 1-bit input: Output register set/reset
           -- Write Control Signals: 1-bit (each) input: Write clock and enable input signals
           WRCLK => IntDivClk35, -- 1-bit input: Write clock
           WREN => not(sfifoControlPins(0)), -- 1-bit input: Write enable --1
           -- Write Data: 32-bit (each) input: Write input data
           DI => fifoDataInAB, -- 32-bit input: Data input
           DIP => fifoParInAB -- 4-bit input: Parity input
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
    SData <='0'; -- not(IntSyncDone); --'1';
    --LEDS (1)<='0';
    LEDS(7)<=not(IntSinycOut ); 
    LEDS(6) <=IntSinycOut ;
    LEDS(5 downto 0) <= (others=>'0');
    --LEDS(0)<= '0'; --IntBitClkDone;
    --LEDS(1) <= '0'; --IntBitSlip_N;
    
    process (IntDivClk35) 
    
    begin
      
      if (rising_edge(IntDivClk35)) then
        IntSinycOut <= IntSyncDone;
      end if;
    
    end process;
    
    
    
        --Pins that are tied to GND in the ADS6425 EVM
    FMC_LA02_P<='0';
    FMC_LA02_N<='0';
    FMC_LA04_P<='0';
    FMC_LA04_N<='0';
    FMC_LA05_P<='0';
    FMC_LA05_N<='0';
    FMC_LA06_P<='0';
    FMC_LA06_N<='0';
    FMC_LA10_P<='0';
    FMC_LA10_N<='0';
    FMC_LA23_P<='0';
    FMC_LA23_N<='0';
    FMC_LA27_P<='0';
    FMC_LA27_N<='0';
    FMC_LA29_P<='0';
    FMC_LA29_N<='0';
    FMC_LA30_P<='0';
    FMC_LA30_N<='0';
    FMC_LA31_P<='0';
    FMC_LA31_N<='0';
    FMC_LA32_P<='0';
    FMC_LA32_N<='0';
    FMC_LA33_P<='0';
    FMC_LA33_N<='0';
    

end architecture STRUCTURE;

