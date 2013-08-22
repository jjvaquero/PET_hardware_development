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
    ----XApp 866  Signals
    ------

    signal AppsSysClk, AppsSysEna : std_logic;
    signal IntRst				: std_logic;
    signal IntEna_d				: std_logic;
    signal IntEna				: std_logic;
    
    signal IntClk				: std_logic;
    signal IntClkDiv			: std_logic;
    
    signal IntBitClkDone		: std_logic;
    --signals included to make it compatible
    signal BitClkReSync         : std_logic;
    signal BitClkAlignWarn      : std_logic;
    signal BitClkInvrtd         : std_logic;
    
    signal IntFrmClkBitSlip_p   : std_logic;
    signal IntFrmClkBitSlip_n   : std_logic;
    signal IntFrmClkSwapMux     : std_logic;
    signal IntFrmClkMsbRegEna   : std_logic;
    signal IntFrmClkLsbRegEna   : std_logic;
    signal SysFrameOut          : std_logic_vector(15 downto 0);
    signal FrmClkOut            : std_logic;		-- out	Frame clock pass-though to DCM.
    signal IntFrmClkRstOut      : std_logic;
    signal FrameSyncWarn        : std_logic;
    
    --signals to move between clock regions
    signal PadToBufMR           :std_logic; 
    signal BufMRToAdcClk        :std_logic;
    

        
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
 
 --Elements from xillinx Xapp866
  component AdcClk_v7 is
 	generic (
 		C_OnChipLvdsTerm	: integer := 1;
 		C_StatTaps			: integer := 31;
 		C_AdcBits			: integer := 14
 		);
     port (
         BitClk_n			: in std_logic;
         BitClk_p			: in std_logic;
         BitClkRst			: in std_logic;
         BitClkEna			: in std_logic;
         BitClkReSync		: in std_logic;
         BitClk_MonClkOut	: out std_logic;
         BitClk_MonClkIn		: in std_logic;
         BitClk_RefClkOut	: out std_logic;
         BitClk_RefClkIn		: in std_logic;
         BitClkAlignWarn 	: out std_logic;
 		 BitClkInvrtd		: out std_logic;
         BitClkDone 			: out std_logic;
         DelCtrlRefClk       : in std_logic;
         BitClkMR            : out std_logic
     );
 end component;
 
 
  component AdcFrm_v7 is
 	generic (
 		C_FAMILY			: string;
 		C_AdcBits			: integer;
 		C_AdcWireInt		: integer;
 		C_OnChipLvdsTerm	: integer;
 		C_FrmPattern		: string
 		);
     port (
         FrmClk_n		: in std_logic;
         FrmClk_p		: in std_logic;
         FrmClkRst		: in std_logic;
         FrmClkEna		: in std_logic;
         FrmClkMR       : in std_logic;
         --FrmClk			: in std_logic;
         --FrmClkDiv		: in std_logic;
         FrmClkDone		: in std_logic;
         FrmClkReSync	: in std_logic;
         FrmClkBitSlip_p	: out std_logic;
         FrmClkBitSlip_n	: out std_logic;
         FrmClkSwapMux	: out std_logic;
         FrmClkMsbRegEna	: out std_logic;
         FrmClkLsbRegEna	: out std_logic;
         FrmClkDat		: out std_logic_vector(15 downto 0); 
         FrmClkOut		: out std_logic;
 --        FrmClkDatVal	: out std_logic;
         FrmClkRstOut	: out std_logic;
         FrmClkSyncWarn	: out std_logic 
         --FrmDlyCe		: in std_logic;
        --FrmDlyRst		: in std_logic;
        --FrmDlyInc		: in std_logic
             );
   end component;

begin

  --LVDS signal mapping
    ibuf0 : IBUFDS  port map (I=>ADC_Data0(0), IB=>ADC_Data0(1), O=>sADC_Data0); 
    ibuf1 : IBUFDS  port map (I=>ADC_Data1(0), IB=>ADC_Data1(1), O=>sADC_Data1);   
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
    ----------
    AppsSysClk <= sprocessing_system7_0_FCLK_CLK0_pin;
    AppsSysEna <='1';
    IntRst<= not(PL_Rst);
    
    
        ------------------------------------------------------------------------------------------------
    -- REFERENCE CLOCK
    -- This is a 200 MHz clock used for the IDELAYCTRL component needed by the ISERDES/IDELAY.
    -- For this design the reference clock is coming from an global clock buffer, and therefore the
    -- IBUFG component on the toplevel is needed (this clock is also used by the button debounce 
    -- logic).
    -- When another clock is used as reference clock make the appropriate connections on the toplevel.
    --
    -- The IDELAYCTRL component is also instantiated here
    -- and some reset and enable synchronisation stuff.
    ------------------------------------------------------------------------------------------------
   -- AdcToplevel_I_IdlyCtrl : IDELAYCTRL
    --	port map (REFCLK => SysRefClk, RST => AppsSysRst, RDY => IntIdlyCtrlRdy);
    --
   -- AdcToplevel_I_Fdpe_Rst : FDPE
   -- 	generic map (INIT => '1')
   -- 	port map (C => AppsSysClk, CE => IntIdlyCtrlRdy, PRE => AppsSysRst, D => Low, Q => IntRst);
    AdcToplevel_I_Fdce_Ena_0 : FDCE
    	generic map (INIT => '0')
    	port map (C => AppsSysClk, CE => AppsSysEna, CLR => IntRst, D => '1', Q => IntEna_d);
    AdcToplevel_I_Fdce_Ena_1 : FDCE
    	generic map (INIT => '0')
    	port map (C => AppsSysClk, CE =>'1', CLR => IntRst, D => IntEna_d, Q => IntEna);
    	
   --clocks modification needed to use the zedboard with the ads6425evm
        
    AdcToplevel_I_AdcClk_v7 : AdcClk_v7
    	generic map (
    		C_OnChipLvdsTerm	=> 0,	-- 1 = termination, 0 = no termination
    		C_StatTaps			=> 17,			-- Number of taps to start from, normally 0.
    		C_AdcBits			=> 12			-- Number of ADC bits, 12, 14, or 16.
    	)
        port map (
            BitClk_n			=> DCLK(1),		-- in	Bit clock input for FPGA pins
            BitClk_p			=> DCLK(0),		-- in
            BitClkRst			=> IntRst,		-- in	System Reset
            BitClkEna			=> IntEna,		-- in 	System Enable
            BitClkReSync		=> BitClkReSync, -- in	Request to re-synchronize the bit clock
            BitClk_MonClkOut	=> IntClk,		-- out	Adjusted Bit Clock to AdcClk, AdcFrm, AdcDataMultiChnl
            BitClk_MonClkIn		=> IntClk,		-- in 	Adjusted Bit Clock input
            BitClk_RefClkOut	=> IntClkDiv,	-- out	Adjusted Word Clock to AdcClk, AdcFrm, AdcDataMultiChnl
            BitClk_RefClkIn		=> IntClkDiv,	-- in 	Adjusted word clock input.
            BitClkAlignWarn 	=> BitClkAlignWarn,	-- out
    		BitClkInvrtd		=> BitClkInvrtd,	-- out
            BitClkDone			=> IntBitClkDone,	-- out	Clock adjustment DONE.
            DelCtrlRefClk       =>  sprocessing_system7_0_FCLK_CLK0_pin,
            BitClkMR            => BufMRToAdcClk
        );
       
      
        AdcToplevel_I_AdcFrm_v7 : AdcFrm_v7
        	generic map (
        		C_FAMILY			=> "7SERIES",			-- "virtex4" or "virtex5"
        		C_OnChipLvdsTerm	=> 0,	-- 1 = termination, 0 = no termination
        		C_AdcBits			=> 12,			--
        		C_AdcWireInt		=> 1,
        		-- C_FrmPattern			-- Pattern to lock the frame to.
                --						-- In 2-wire mode only the LSB byte is used (all_zero_Msb__Bit_Pattern)
                --						-- In 1-wire mode both MSB and LSB are used.
        		C_FrmPattern		=> "000000000000" --copied from Xapp866
        	)
            port map (
                FrmClk_n		=> FCLK(1),			-- in	Frame input for FPGA pins
                FrmClk_p		=> FCLK(0),			-- in
                FrmClkRst		=> IntRst,			-- in	Reset
                FrmClkEna		=> IntEna,			-- in	Enable
                FrmClkMR        => BufMRToAdcClk,    --bufIO and bufR inside the Frm....I should probably change the FrmClk and FrmClkDiv to outputs
                                                    --and use these clocks for that bank data input
                --FrmClk			=> IntClk,			-- in   Adjusted Bit clock
                --FrmClkDiv		=> IntClkDiv,		-- in	Adjusted word clock
                FrmClkDone		=> IntBitClkDone,	-- in 	Adjustment of bit clock DONE from "AdcClk"
                FrmClkReSync	=> '0', --FrameReSync,		-- in	Input from application toplevel.
                FrmClkBitSlip_p	=> IntFrmClkBitSlip_p,	-- out
                FrmClkBitSlip_n	=> IntFrmClkBitSlip_n,	-- out
                FrmClkSwapMux	=> IntFrmClkSwapMux,	-- out
                FrmClkMsbRegEna	=> IntFrmClkMsbRegEna,	-- out
                FrmClkLsbRegEna	=> IntFrmClkLsbRegEna,	-- out
                FrmClkDat		=> SysFrameOut,		-- out
                FrmClkOut		=> FrmClkOut,		-- out	Frame clock pass-though to DCM.
                FrmClkRstOut	=> IntFrmClkRstOut,	-- out
                FrmClkSyncWarn	=> FrameSyncWarn	-- out
        	);
    
    
    FCLKP1 <= sCLkExtIn;
    SData <='1';
    LEDS(0)<= IntBitClkDone;
    

end architecture STRUCTURE;

