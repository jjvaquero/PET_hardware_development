-------------------------------------------------------------------------------
-- module_1_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
    LEDS : out std_logic_vector(7 downto 0); 
    --pongo ademas el pin para la salida del reloj
    FCLK :  in std_logic_vector(1 downto 0);
    --relojes auxiliares para que planaahead no se los cargue
    FCLKP2: out std_logic;
    FCLKP3: out std_logic;
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
  signal PL_Rst: std_logic;
  signal s_aux, sADC_Data1,  sADC_Data0, sDCLK, sFCLK: std_logic;
  signal dat_aux : std_logic;
  signal data_In: std_logic_vector (1 downto 0);
  signal clk_Feedback, clk_Bit, clk_Div : std_logic;
  signal sBitSlip: std_logic;
  signal sDelay: std_logic_vector(1 downto 0);





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
      LED_DutyCycle : out std_logic_vector(31 downto 0); --sLED_DutyCycle,
      processing_system7_0_FCLK_CLK0_pin: out std_logic;  --PL clocks from the PS
      processing_system7_0_FCLK_RESET0_N_pin : out std_logic;  --reset used in my PL
      processing_system7_0_FCLK_RESET1_N_pin : out std_logic;
      ADC_DataIn: in std_logic_vector(31 downto 0) --lo conecto a sADC_DataIn     
      --LEDS: out std_logic_vector(7 downto 0)
    );
  end component;
  
  component PWM_Controller is
  port(
    Clk: in std_logic; 
    DutyCycle: in std_logic_vector(31 downto 0);
    PWM_out : out std_logic_vector(7 downto 0); 
    REL1: out std_logic
    );
  end component;
  
   component BitSlip_Ctrl is
      Port ( dataIn : in STD_LOGIC_VECTOR (11 downto 0);
             Clk : in STD_LOGIC;
             Rst : in STD_LOGIC;
             bitSlip : out STD_LOGIC;
             done : out STD_LOGIC;
             dataOut : out STD_LOGIC_VECTOR(11 downto 0);
             delayEn : out STD_LOGIC_Vector(1 downto 0)
             );
   end component;
   
   

  
--   component ADC_Serdes is
--   port(
--        ClkIn : in STD_LOGIC;
--        In0 : in STD_LOGIC;
--        In1 : in STD_LOGIC;
--        DataClk: in STD_LOGIC;
--        Data : out STD_LOGIC_VECTOR (31 downto 0);
--        ClkOut : out STD_LOGIC
--        );
--   end component;
   
   component IBUFDS 
   port( I : in std_logic; 
        IB : in std_logic; 
         O : out std_logic ); 
   end component; 
   
   component IBUFGDS 
   port( I : in std_logic; 
        IB : in std_logic; 
         O : out std_logic ); 
   end component; 
   
--   --probando el mmcm
--  component clk_wiz_v3_6_0 is
--   port
--    (-- Clock in ports
--     CLK_IN1           : in     std_logic;
--     CLKFB_IN          : in     std_logic;
--     -- Clock out ports
--     CLK_OUT1          : out    std_logic;
--     CLK_OUT2          : out    std_logic;
--     CLKFB_OUT         : out    std_logic
--    );
--   end component;
   

   --probando el selectIO
   component selectio_wiz_v4_1_0 is
   generic
    (-- width of the data for the system
     sys_w       : integer := 2;
     -- width of the data for the device
     dev_w       : integer := 12);
   port
    (
     -- From the system into the device
     DATA_IN_FROM_PINS       : in    std_logic_vector(sys_w-1 downto 0);
     DATA_IN_TO_DEVICE       : out   std_logic_vector(dev_w-1 downto 0);
   
     BITSLIP                 : in    std_logic;                    -- Bitslip module is enabled in NETWORKING mode
                                                                   -- User should tie it to '0' if not needed
    
   -- Clock and reset signals
     CLK_IN                  : in    std_logic;                    -- Single ended Fast clock from IOB
     CLK_DIV_OUT             : out   std_logic;                    -- Slow clock output
     CLK_RESET               : in    std_logic;                    -- Reset signal for Clock circuit
     IO_RESET                : in    std_logic);                   -- Reset signal for IO circuit
   end component;
   
   --probando automata de lectura
--    component ADCaut is
--       Port ( Clk : in STD_LOGIC;
--              DatClk : in STD_LOGIC;
--              DatIn : in STD_LOGIC_VECTOR (1 downto 0);
--              DatOut : out STD_LOGIC_VECTOR (11 downto 0);
--              DatRead : in STD_LOGIC);
--    end component;
  
  

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of module_1 : component is "user_black_box";

begin

  --mapeo primero las sennales LVDS
  ibuf0 : IBUFDS  port map (I=>ADC_Data0(0), IB=>ADC_Data0(1), O=>sADC_Data0); 
  ibuf1 : IBUFDS  port map (I=>ADC_Data1(0), IB=>ADC_Data1(1), O=>sADC_Data1);   
  ibuf2 : IBUFGDS port map (I=>DCLK(0), IB=>DCLK(1), O=>sDCLK);
  ibuf3 : IBUFGDS port map (I=>FCLK(0), IB=>FCLK(1), O=>sFCLK);

        
  
  
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
      --LEDS=>LEDS
      LED_DutyCycle => sLED_DutyCycle,
      processing_system7_0_FCLK_CLK0_pin => sprocessing_system7_0_FCLK_CLK0_pin,
      --processing_system7_0_FCLK_RESET0_N_pin => sprocessing_system7_0_FCLK_RESET0_N_pin,
      processing_system7_0_FCLK_RESET1_N_pin => PL_Rst,
      ADC_DataIn => sADC_DataIn
    );
    
    PWM1 : PWM_Controller
    port map(
        Clk => sprocessing_system7_0_FCLK_CLK0_pin, 
        DutyCycle => sLED_DutyCycle, 
        PWM_out => LEDS,
        REL1=>s_aux
        );
        
        
    BitSlipCtrl1 : BitSlip_Ctrl 
    Port map ( 
       dataIn => sADC_Data, --sADC_DataIn(11 downto 0),
        Clk => clk_Div,
        Rst => PL_Rst,
        bitSlip => sBitSlip,
        --done -- lo dejo sin conectar de momento...lo podria sacar por algun pin
        done =>dat_aux,
        dataOut=> sADC_DataIn(11 downto 0),
        delayEn=> sDelay
        );

   
   --senales de SelectIO
   --meto aqui un delay que asumo sera igual para ambos datos..sino..luego delays independientes...
   --con sus respectivos
   
   data_In(0) <= sADC_Data0; 
--   IDELAY_inst1 : IDELAYE2
--   generic map (
--        CINVCTRL_SEL => "FALSE", -- Enable dynamic clock inversion (FALSE, TRUE)
--        DELAY_SRC => "IDATAIN", -- Delay input (IDATAIN, DATAIN)
--        HIGH_PERFORMANCE_MODE => "FALSE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
--        IDELAY_TYPE => "VARIABLE", -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
--        IDELAY_VALUE => 0, -- Input delay tap setting (0-31)
--        PIPE_SEL => "FALSE", -- Select pipelined mode, FALSE, TRUE
--        REFCLK_FREQUENCY => 200.0, -- IDELAYCTRL clock input frequency in MHz (190.0-210.0).
--        SIGNAL_PATTERN => "DATA" -- DATA, CLOCK input signal
--   )
--   port map (
--        --CNTVALUEOUT => CNTVALUEOUT, -- 5-bit output: Counter value output
--        DATAOUT => data_In(0), -- 1-bit output: Delayed data output
--        C => clk_Div, -- 1-bit input: Clock input
--        CE => sDelay, -- 1-bit input: Active high enable increment/decrement input
--        CINVCTRL => '0', --CINVCTRL, -- 1-bit input: Dynamic clock inversion input
--        CNTVALUEIN => b"00000", --CNTVALUEIN, -- 5-bit input: Counter value input
--        DATAIN => '0', --DATAIN, -- 1-bit input: Internal delay data input
--        IDATAIN => sADC_Data0, -- 1-bit input: Data input from the I/O
--        INC => '1', -- 1-bit input: Increment / Decrement tap delay input
--        LD => '0', --LD, -- 1-bit input: Load IDELAY_VALUE input
--        LDPIPEEN =>'0', -- LDPIPEEN, -- 1-bit input: Enable PIPELINE register to load data input
--        REGRST => not(PL_Rst) -- 1-bit input: Active-high reset tap-delay input
--   );

   data_In(1) <= sADC_Data1;
--   IDELAY_inst2 : IDELAYE2
--   generic map (
--        CINVCTRL_SEL => "FALSE", -- Enable dynamic clock inversion (FALSE, TRUE)
--        DELAY_SRC => "IDATAIN", -- Delay input (IDATAIN, DATAIN)
--        HIGH_PERFORMANCE_MODE => "FALSE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
--        IDELAY_TYPE => "VARIABLE", -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
--        IDELAY_VALUE => 0, -- Input delay tap setting (0-31)
--        PIPE_SEL => "FALSE", -- Select pipelined mode, FALSE, TRUE
--        REFCLK_FREQUENCY => 200.0, -- IDELAYCTRL clock input frequency in MHz (190.0-210.0).
--        SIGNAL_PATTERN => "DATA" -- DATA, CLOCK input signal
--   )
--   port map (
--        --CNTVALUEOUT => CNTVALUEOUT, -- 5-bit output: Counter value output
--        DATAOUT => data_In(1), -- 1-bit output: Delayed data output
--        C => clk_Div, -- 1-bit input: Clock input
--        CE => sDelay, -- 1-bit input: Active high enable increment/decrement input
--        CINVCTRL => '0', --CINVCTRL, -- 1-bit input: Dynamic clock inversion input
--        CNTVALUEIN => b"00000", --CNTVALUEIN, -- 5-bit input: Counter value input
--        DATAIN => '0', -- DATAIN, -- 1-bit input: Internal delay data input
--        IDATAIN => sADC_Data1, -- 1-bit input: Data input from the I/O
--        INC => '1', -- 1-bit input: Increment / Decrement tap delay input
--        LD => '0', --LD, -- 1-bit input: Load IDELAY_VALUE input
--        LDPIPEEN => '0', -- LDPIPEEN, -- 1-bit input: Enable PIPELINE register to load data input
--        REGRST => not(PL_Rst) -- 1-bit input: Active-high reset tap-delay input
--   ); 
   
--   MMCM1: clk_wiz_v3_6_0 
--    port map
--     (-- Clock in ports
--      CLK_IN1           =>sDCLK,
--      CLKFB_IN          => clk_Feedback,
--      -- Clock out ports
--      CLK_OUT1          =>clk_Bit,
--      CLK_OUT2          =>clk_Div,
--      CLKFB_OUT         =>clk_Feedback
--     );

--   BUFIO_inst : BUFIO port map ( I=> sDCLK, O=>clk_Bit);
--   BUFR_inst : BUFR
--    generic map (
--        BUFR_DIVIDE => "3", -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
--       SIM_DEVICE => "7SERIES" -- Must be set to "7SERIES"
--            )
--    port map (
--            O => clk_Div, -- 1-bit output: Clock output port
--        CE =>'1', -- 1-bit input: Active high, clock enable (Divided modes only)
--        CLR =>'0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
--       I => sDCLK -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
--   );
   
   

   SelIO: selectio_wiz_v4_1_0
   port map(
     -- From the system into the device
     DATA_IN_FROM_PINS       =>data_In,
     DATA_IN_TO_DEVICE       =>sADC_Data,
   
     BITSLIP                 =>sBitSlip,                    -- Bitslip module is enabled in NETWORKING mode
                                                                   -- User should tie it to '0' if not needed
    
   -- Clock and reset signals
     CLK_IN                  =>sDCLK,                   -- Single ended Fast clock from IOB
     CLK_DIV_OUT             =>clk_Div,                    -- Slow clock output
     CLK_RESET               =>'0',                    -- Reset signal for Clock circuit
     IO_RESET                =>not(PL_Rst)                   -- Reset signal for IO circuit
  );
     
   
--        ADCInput: ADCaut 
--        port map    (
--            Clk => sDCLK,
--            DatClk => sFCLK, 
--            DatIn => data_In,
--            DatOut => sADC_DataIn(11 downto 0),
--            DatRead => dat_aux
--            );
            
--       ADC_In: ADC_Serdes 
--       port map(
--            ClkIn => sDCLK,
--            In0   => sADC_Data0,
--            In1   => sADC_Data1,
--            DataClk => sFCLK,
--            Data  => sADC_DataIn, --(11 downto 0),
--            ClkOut =>dat_aux                  
--            );
            
    sADC_DataIn(31 downto 12)<=(others => '0');
    FCLKP2<=dat_aux; --sDCLK; --s_aux;
    FCLKP3<=sDelay(0); --sFCLK;  --dat_aux;

end architecture STRUCTURE;

