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
       ADC_Data2: in std_logic_vector(1 downto 0);
       ADC_Data3: in std_logic_vector(1 downto 0);
       DCLK: in std_logic_vector(1 downto 0)
    
    
  );
end module_1_stub;

architecture STRUCTURE of module_1_stub is

    signal sLED_DutyCycle : std_logic_vector(31 downto 0);
    signal sADC_DataIn : std_logic_vector(31 downto 0):=(others => '0');
    signal sADC_Data: std_logic_vector(11 downto 0);
    signal sprocessing_system7_0_FCLK_CLK0_pin : std_logic;
    signal PL_Rst, sClkExtIn: std_logic;
    signal sADC_Data1,  sADC_Data0, sDCLK, sFCLK: std_logic;
    
    -----
    ----XApp 524 Signals
    ------
    signal DCLK_p       :std_logic;
    signal DCLK_n       :std_logic;
    signal FCLK_p       :std_logic;
    signal FCLK_n       :std_logic;
    signal AppsSysClk   :std_logic;
    signal AppsSysEna   :std_logic;
    signal IntRst       :std_logic;
    signal IntBitClkDone :std_logic;
    signal Data_p       :std_logic_vector((C_AdcChnls*2)-1 downto 0);
    signal Data_n       :std_logic_vector((C_AdcChnls*2)-1 downto 0); 
    

    

        
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
    );
  end component;

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of module_1 : component is "user_black_box";
 
 
 component PWM_Controller is
    port (
     Clk : in std_logic;
     DutyCycle : in std_logic_vector(31 downto 0);
 	PWM_out : out std_logic_vector(6 downto 0)
     );
 end component;
 
 component AdcToplevel is
 	generic (
         C_AdcChnls          : integer := 2;     -- Number of ADC in a package 
         C_AdcWireInt        : integer := 2;     -- 2 = 2-wire, 1 = 1-wire interface
         C_BufioLoc          : string  := "BUFIO_X0Y6";
         C_BufrLoc           : string  := "BUFR_X0Y6";
         C_AdcBits           : integer := 12;
         C_StatTaps          : integer := 16;
 		C_AdcUseIdlyCtrl	: integer := 1;	     -- 0 = No, 1 = Yes
 		--C_AdcIdlyCtrlLoc	: string  := "IDELAYCTRL_X0Y1";
 		C_FrmPattern        : string  := "000000111000"  -- Read above text!
 		 		-- The same applies for a 12-bit ADC device.
         --      C_FrmPattern        : string    := "111111000000";      -- 1-wire, 12 bit.
         --      C_FrmPattern        : string    := "000000111000";      -- 2-wire, 12 bit.
         --
 	);
     port (
 		DCLK_p	           : in std_logic;
 		DCLK_n	           : in std_logic;  -- Not used.
 		FCLK_p	           : in std_logic;
 		FCLK_n	           : in std_logic;
 		DATA_p	           : in std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
 		DATA_n	           : in std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
         -- application connections
         SysRefClk          : in std_logic;		-- 200 MHz for IODELAYCTRL from application
         AdcIntrfcRst       : in std_logic;
         AdcIntrfcEna       : in std_logic;
         AdcReSync          : in std_logic;
         AdcFrmSyncWrn      : out std_logic;
         AdcBitClkAlgnWrn   : out std_logic;
 		AdcBitClkInvrtd    : out std_logic;
 		AdcBitClkDone      : out std_logic;
 		AdcIdlyCtrlRdy     : out std_logic;
 			-- Data from the frame clock
         AdcFrmDataOut      : out std_logic_vector(15 downto 0);
         	-- ADC memory data output
         AdcMemClk          : in std_logic; -- Application clock
         AdcMemRst		   : in std_logic; -- Application reset 
         AdcMemEna          : in std_logic; -- Application Enable
         AdcMemDataOut      : out std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
         DataOutToPS        : out std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
         AdcMemFlags        : out std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
         AdcMemFull         : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
         AdcMemEmpty        : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0)
     );
 end component;
 


begin

  --LVDS signal mapping
    --ibuf0 : IBUFDS  port map (I=>ADC_Data0(0), IB=>ADC_Data0(1), O=>sADC_Data0); 
    --ibuf1 : IBUFDS  port map (I=>ADC_Data1(0), IB=>ADC_Data1(1), O=>sADC_Data1);   
    --ibuf2 : IBUFGDS port map (I=>DCLK(0), IB=>DCLK(1), O=>sDCLK);
    --ibuf3 : IBUFGDS port map (I=>FCLK(0), IB=>FCLK(1), O=>sFCLK);
    


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
    	PWM_out =>LEDS(7 downto 1)
    );
    
    
    --------------
    --Xapp port mappings
    AdcIO_I_Ibufgds_Dclk_0 : IBUFGDS
    	generic map (DIFF_TERM	=> FALSE, IOSTANDARD	=> "LVDS_25")
    	port map (I => DCLK(0), IB => DCLK(1), O => DCLK_p);
    DCLK_n <= '0';
    --
    AdcIo_I_Ibufds_Fclk_0 : IBUFDS_DIFF_OUT
    	generic	map (IOSTANDARD	=> "LVDS_25", DIFF_TERM	=> FALSE)
    	port map (I	=> FCLK(0), IB => FCLK(1),
    				O => FCLK_p, OB => FCLK_n);
    --
    AdcIo_I_Ibufds_DI_0_0 : IBUFDS_DIFF_OUT
    	generic map (IOSTANDARD => "LVDS_25", DIFF_TERM	=> FALSE)
    	port map (I => ADC_Data0(0), IB => ADC_Data0(1),
    				O => DATA_p(0), OB => DATA_n(0));
    AdcIo_I_Ibufds_DI_1_0 : IBUFDS_DIFF_OUT
    	generic map (IOSTANDARD => "LVDS_25", DIFF_TERM	=> FALSE)
    	port map (I => ADC_Data1(0), IB => ADC_Data1(1),
    				O => DATA_p(1), OB => DATA_n(1));
    				
    AdcIo_I_Ibufds_DI_2_0 : IBUFDS_DIFF_OUT
        generic map (IOSTANDARD => "LVDS_25", DIFF_TERM	=> FALSE)
        port map (I => ADC_Data2(0), IB => ADC_Data2(1),
                    O => DATA_p(2), OB => DATA_n(2));
    AdcIo_I_Ibufds_DI_3_0 : IBUFDS_DIFF_OUT
        generic map (IOSTANDARD => "LVDS_25", DIFF_TERM	=> FALSE)
        port map (I => ADC_Data3(0), IB => ADC_Data3(1),
                    O => DATA_p(3), OB => DATA_n(3));
    
    ----------
    AppsSysClk <= sprocessing_system7_0_FCLK_CLK0_pin;
    AppsSysEna <='1';
    IntRst<= not(PL_Rst);
    
    

    	
   --clocks modification needed to use the zedboard with the ads6425evm
    ADC1 :  AdcToplevel
    	generic map (
            C_AdcChnls          => C_AdcChnls,    -- Number of ADC in a package 
            C_AdcWireInt        => C_AdcWireInt,    -- 2 = 2-wire, 1 = 1-wire interface
            C_BufioLoc          => "BUFIO_X0Y1",
            C_BufrLoc           => "BUFR_X0Y1",
            C_AdcBits           => 12,
            C_StatTaps          => 16,
    		C_AdcUseIdlyCtrl	=> 1,     -- 0 = No, 1 = Yes
    		--C_AdcIdlyCtrlLoc	: string  := "IDELAYCTRL_X0Y1";
    		C_FrmPattern        => "000000111000"  -- Read above text!
    		 		-- The same applies for a 12-bit ADC device.
            --      C_FrmPattern        : string    := "111111000000";      -- 1-wire, 12 bit.
            --      C_FrmPattern        : string    := "000000111000";      -- 2-wire, 12 bit.
            --
    	)
        port map (
    		DCLK_p	           => DCLK_p,
    		DCLK_n	           => DCLK_n,  -- Not used.
    		FCLK_p	           => FCLK_p,
    		FCLK_n	           => FCLK_n,
    		DATA_p	           => Data_p((C_AdcChnls*C_AdcWireInt)-1 downto 0),
    		DATA_n	           => Data_n((C_AdcChnls*C_AdcWireInt)-1 downto 0),
            -- application connections
            SysRefClk          =>AppsSysClk,		-- 200 MHz for IODELAYCTRL from application
            AdcIntrfcRst       => IntRst,
            AdcIntrfcEna       =>AppsSysEna,
            AdcReSync          =>'0',
            --AdcFrmSyncWrn      : out std_logic;
            --AdcBitClkAlgnWrn   : out std_logic;
    		--AdcBitClkInvrtd    : out std_logic;
    		AdcBitClkDone      => IntBitClkDone,
    		--AdcIdlyCtrlRdy     : out std_logic;
    			-- Data from the frame clock
           -- AdcFrmDataOut      : out std_logic_vector(15 downto 0);
            	-- ADC memory data output
            AdcMemClk          => AppsSysClk, -- Application clock
            AdcMemRst		   => IntRst,-- Application reset 
            AdcMemEna          => AppsSysEna, -- Application Enable
            DataOutToPS        =>sADC_DataIn
          --  AdcMemDataOut      =>sADC_DataIn --: out std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
            --AdcMemFlags        : out std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
            --AdcMemFull         : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
            --AdcMemEmpty        : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0)
        );
   
    
    
    FCLKP1 <= sCLkExtIn;
    SData <='0';
    LEDS(0)<= IntBitClkDone;
    

end architecture STRUCTURE;

