------------------------------------------------------------------------------------------------
---  Modified version of the Xapp866version by Xillinx ---- RChil
--
------------------------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------------------------
--
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
	use IEEE.std_logic_arith.all;

library UNISIM;
	use UNISIM.VCOMPONENTS.all;
---------------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------------
--		GENERICS
-- C_OnChipLvdsTerm		-- 1 = termination, 0 = no termination
-- C_StatTaps			-- Number of taps to start from, normally 0.
-- C_AdcBits			-- Number of bits of the ADC 12, 14 or 16
--		PORTS
-- BitClk_n				-- Bit clock input
-- BitClk_p				-- Bit clock input
-- BitClkRst			-- Reset
-- BitClkEna			-- Enable
-- BitClk_MonClkOut		-- BUFIO.O Aligned clock output (BitClk).
-- BitClk_MonClkIn		-- Aligned Bit Clock input from BUFIO.O.
-- BitClk_RefClkOut		-- BUFR.O Aligned clock output (BitClkDiv).
-- BitClk_RefClkIn		-- Aligned Word clock input from BUFR.O.
-- BitClkAlignWarn		-- Alignment failure warning
-- BitClkInvrtd			-- BitClk is 180-degrees inverted and phase aligned
-- BitClkDone 			-- Bit clock adjustement DONE.
---------------------------------------------------------------------------------------------------
entity AdcClk_v7 is
	generic (
		C_OnChipLvdsTerm	: integer := 1;
		C_StatTaps			: integer := 17; --31 max value used
 		C_AdcBits			: integer := 12
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
        BitClkMR            : out std_logic   --to be used in other IO banks 
    );
end AdcClk_v7;

---------------------------------------------------------------------------------------------------
-- Arcitecture section
---------------------------------------------------------------------------------------------------
architecture AdcClk_struct of AdcClk_v7 is
---------------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------------
-- Components are instantiated by means / through the use of library references.
---------------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
---------------------------------------------------------------------------------------------------
-- Constants
	function TermOrNot (Term : integer) return boolean is
	begin
		if (Term = 0) then
			return FALSE;
		else
			return TRUE;
		end if;
	end TermOrNot;

constant Low:       std_logic := '0';
constant High :     std_logic := '1';
--	
-- Signals
signal IntBitClkRst				: std_logic;
---------- ISRDS signals ------------------
signal IntClkCtrlDlyCe			: std_logic;
signal IntClkCtrlDlyInc			: std_logic;
signal IntClkCtrlDlyRst			: std_logic;

signal IntClkCtrl_InClk			: std_logic;
signal IntClkCtrl_OutClk		: std_logic;
signal IntBitClk_MonClkOut		: std_logic;
signal IntClkCtrl_MonClk		: std_logic;
signal IntClkCtrl_RefClk		: std_logic;
signal IntClkCtrlIsrdsMtoS1		: std_logic;
signal IntClkCtrlIsrdsMtoS2		: std_logic;
signal IntClkCtrlOut			: std_logic_vector(7 downto 0);
---------- Controller signals -------------
signal IntCal					: std_logic;
signal IntVal					: std_logic;
signal IntCalVal				: std_logic_vector (1 downto 0);
signal IntProceedCnt			: std_logic_vector (2 downto 0);
signal IntproceedCntTc			: std_logic;
signal IntproceedCntTc_d		: std_logic;
signal IntProceed				: std_logic;
signal IntProceedDone			: std_logic;

type StateType is (Idle, A, B, C, D, E, F, G, G1, H, K, K1, K2, IdlyIncDec, Done);
signal State : StateType;
signal ReturnState : StateType;

signal PassedSubState		: std_logic;
signal IntNumIncDecIdly		: std_logic_vector (4 downto 0);
signal IntAction			: std_logic_vector (1 downto 0);
signal IntClkCtrlDone 		: std_logic;
signal IntClkCtrlAlgnWrn	: std_logic;
signal IntClkCtrlInvrtd		: std_logic;
signal IntTurnAroundBit		: std_logic;
signal IntCalValReg			: std_logic_vector (1 downto 0);
signal IntTimeOutCnt		: std_logic_vector (3 downto 0);
signal IntStepCnt	 		: std_logic_vector (4 downto 0);

--new signals used on the 7series
signal data_in_from_pins_delay  :std_logic;
signal clk_in_int_inv       :std_logic;
signal REF_CLOCK            :std_logic;
signal MRClk                : std_logic;
---------------------------------------------------------------------------------------------------
-- Attributes
---------------------------------------------------------------------------------------------------
--
begin

clk_in_int_inv <= not(IntClkCtrl_MonClk);
---------------------------------------------------------------------------------------------------
-- Bit clock input buffer
---------------------------------------------------------------------------------------------------
AdcClk_I_Ibufds : IBUFDS
	generic map (
		DIFF_TERM	=> TermOrNot(C_OnChipLvdsTerm),
		IOSTANDARD	=> "LVDS_25"
	)
	port map (
		I	=> BitClk_p,
		IB	=> BitClk_n,
		O	=> IntClkCtrl_InClk
	);


---------------------------------------------------------------------------------------------------
-- Bit clock capture ISERDES Master-Slave combination
---------------------------------------------------------------------------------------------------
IntClkCtrlDlyRst <= BitClkRst;

--

-- ISERDESE2: Input SERial/DESerializer with Bitslip
-- 7 Series
-- Xilinx HDL Libraries Guide, version 14.5

--IDelay that will be used

AdcClk_idelaye2 : IDELAYE2
      generic map (
        CINVCTRL_SEL           => "FALSE",            -- TRUE, FALSE
        DELAY_SRC              => "IDATAIN",        -- IDATAIN, DATAIN
        HIGH_PERFORMANCE_MODE  => "TRUE",             -- TRUE, FALSE
        IDELAY_TYPE            => "VARIABLE",          -- FIXED, VARIABLE, or VAR_LOADABLE
        IDELAY_VALUE           => 17,                -- 0 to 31
        REFCLK_FREQUENCY       => 200.0,
        PIPE_SEL               => "FALSE",
        SIGNAL_PATTERN         => "DATA"           -- CLOCK, DATA
        )
        port map (
        DATAOUT                => data_in_from_pins_delay,
        DATAIN                 => '0', -- Data from FPGA logic
        C                      => IntClkCtrl_RefClk,
        CE                     => IntClkCtrlDlyCe, --IN_DELAY_DATA_CE,
        INC                    => IntClkCtrlDlyInc, --IN_DELAY_DATA_INC,
        IDATAIN                => IntClkCtrl_InClk, -- Driven by IOB
        LD                     => IntClkCtrlDlyRst,
        REGRST                 => IntBitClkRst,
        LDPIPEEN               => '0',
        CNTVALUEIN             => "00000",
        CNTVALUEOUT            => open,
        CINVCTRL               => '0'
        );
        
      
-- IDELAYCTRL is needed for calibration
BUFG_DlyCtrl : BUFG
    port map (
    O => REF_CLOCK, -- 1-bit output: Clock output
    I => DelCtrlRefClk -- 1-bit input: Clock input
    );

AdcClk_delayctrl : IDELAYCTRL
    port map (
     --RDY    => DELAY_LOCKED,
     REFCLK => REF_CLOCK,
     RST    => IntBitClkRst
     );



AdcClk_I_Isrds : ISERDESE2
    generic map (
        DATA_RATE => "SDR", -- DDR, SDR
        DATA_WIDTH => 8, -- Parallel data width (2-8,10,14)
        DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
        DYN_CLK_INV_EN => "FALSE", -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
        INTERFACE_TYPE => "NETWORKING", -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
        IOBDELAY => "IFD", -- NONE, BOTH, IBUF, IFD
        NUM_CE => 2, -- Number of clock enables (1,2)
        OFB_USED => "FALSE", -- Select OFB path (FALSE, TRUE)
        SERDES_MODE => "MASTER" -- MASTER, SLAVE
        )
    port map (
        O 			=> IntClkCtrl_OutClk,			-- Clock to BUFIO.I
        Q1 			=> IntClkCtrlOut(0),
        Q2 			=> IntClkCtrlOut(1),
        Q3 			=> IntClkCtrlOut(2),
        Q4 			=> IntClkCtrlOut(3),
        Q5 			=> IntClkCtrlOut(4),
        Q6 			=> IntClkCtrlOut(5),
        Q7          => IntClkCtrlOut(6),
        Q8          => IntClkCtrlOut(7),


        --BITSLIP => Low,  -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
        -- CLKDIV when asserted (active High). Subsequently, the data seen on the
        -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
        -- position every time Bitslip is invoked (DDR operation is different from
        -- SDR).
        -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
        --CE1 => CE1,
        --CE2 => CE2,
        --CLKDIVP => CLKDIVP, -- 1-bit input: TBD
                -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
       
        CLK			=> IntClkCtrl_MonClk,		-- Clock from BUFIO.O = BitClk
        CLKB        => clk_in_int_inv,                     -- Locally inverted clock
        CLKDIV		=> IntClkCtrl_RefClk,		-- Clock from BUFR.O = BitClkDiv
        CLKDIVP     => '0',
        OCLK		=> '0',
        OCLKB             => '0',
        DYNCLKDIVSEL      => '0',
        DYNCLKSEL         => '0',
        OFB               => '0',
      
        -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
        --DYNCLKDIVSEL => DYNCLKDIVSEL, -- 1-bit input: Dynamic CLKDIV inversion
        --DYNCLKSEL => DYNCLKSEL, -- 1-bit input: Dynamic CLK/CLKB inversion
        -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
        D => '0',		-- Clock from clock input IBUFDS
        DDLY => data_in_from_pins_delay, -- 1-bit input: Serial data from IDELAYE2
       -- OFB => OFB, -- 1-bit input: Data feedback from OSERDESE2                    
        BITSLIP 	=> Low,
        CE1			=> BitClkEna,
       	CE2			=> BitClkEna,
        RST =>IntBitClkRst, -- 1-bit input: Active high asynchronous reset
        -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
        SHIFTIN1 	=> Low,
        SHIFTIN2 	=> Low,
        SHIFTOUT1   => open,
        SHIFTOUT2   => open
    );

--


--clock modifications to use the Zedboard
BUFMR_inst : BUFMR
 port map (
     O => MRClk, -- 1-bit output: Clock output (connect to BUFIOs/BUFRs)
     I => IntClkCtrl_OutClk -- 1-bit input: Clock input (Connect to IBUF)
 );    
BitClkMR  <= MRClk;

--
--            Input from ISERDES.O	  -- Output and CLK for all ISERDES
AdcClk_I_Bufio : BUFIO
	port map (I => MRClk, --IntClkCtrl_OutClk,
	   O => IntBitClk_MonClkOut);
BitClk_MonClkOut <= IntBitClk_MonClkOut;
IntClkCtrl_MonClk <= BitClk_MonClkIn;
--
Gen_Bufr_Div_3 : if (C_AdcBits = 12) generate
	AdcClk_I_Bufr : BUFR
		generic map (BUFR_DIVIDE => "3", -- 12-bit = DIV by 3
					SIM_DEVICE => "7SERIES") --"VIRTEX4")  --modified to make it compatible with 7-series FPGAs
--                 ISERDES.CLK, from BUFIO.O -- ISERDES.CLKDIV, word clock for all ISERDES.
		port map  (I => MRClk, --IntClkCtrl_OutClk, -- IntBitClk_MonClkOut, --modified to make it compatible with 7-series FPGAs
		            O => BitClk_RefClkOut,
					CE => High, CLR => Low);
end generate;
--
Gen_Bufr_Div_4 : if (C_AdcBits /= 12) generate
	AdcClk_I_Bufr : BUFR
		generic map (BUFR_DIVIDE => "4", -- 14- and 16-bit = DIV by 4
					SIM_DEVICE => "7SERIES") --"VIRTEX5") --modified to make it compatible with 7-series FPGAs
--                 ISERDES.CLK, from BUFIO.O -- ISERDES.CLKDIV, word clock for all ISERDES.
		port map  (I => MRClk, --IntClkCtrl_OutClk, -- IntBitClk_MonClkOut, --modified to make it compatible with 7-series FPGAs
		            O => BitClk_RefClkOut,
					CE	=> High, CLR => Low);
end generate;
IntClkCtrl_RefClk <= BitClk_RefClkIn;
---------------------------------------------------------------------------------------------------
-- Bit clock re-synchronizer
---------------------------------------------------------------------------------------------------
IntBitClkRst <= BitClkRst or BitClkReSync;
---------------------------------------------------------------------------------------------------
-- Bit clock controller for clock alignment input.
---------------------------------------------------------------------------------------------------
-- This input section makes sure 64 bits are captured before action is taken to pass to
-- the statemachine for evaluation.
-- 8 samples of the Bit Clock are taken by the ISERDES and then transferred to the parallel
-- FPGA world. The Proceed counter needs 8 reference clock rising edges before terminal count.
-- The Proceed counter terminal count then loads the 2 control bits (made from the sampled clock)
-- into an intermediate register (IntCalVal).
--
-- IntCal = '1' when all outputs of the ISERDES are '1 else it's '0'.
-- IntVal = '1' when all outputs are '0' or '1'.
--
IntCal <= IntClkCtrlOut(7) and IntClkCtrlOut(6) and IntClkCtrlOut(5) and
			IntClkCtrlOut(4) and IntClkCtrlOut(3) and IntClkCtrlOut(2) and
			IntClkCtrlOut(1) and IntClkCtrlOut(0);
IntVal <= '1' when (IntClkCtrlOut = "11111111" or IntClkCtrlOut = "00000000") else '0';
--
AdcClk_Proceed_PROCESS : process (BitClkEna, IntBitClkRst, IntClkCtrl_RefClk, IntProceedDone, IntClkCtrlDone)
begin
	if (IntBitClkRst = '1') then
		IntProceedCnt <= (others => '0');
		IntProceedCntTc_d <= '0';
		IntCalVal <= (others => '0');
		IntProceed <= '0';
	elsif (IntClkCtrl_RefClk'event and IntClkCtrl_RefClk = '1') then
		if (BitClkEna = '1' and IntClkCtrlDone = '0') then
			IntProceedCnt <= IntProceedCnt + 1;
			IntProceedCntTc_d <= IntProceedCntTc;
			if (IntProceedCntTc_d = '1') then
				IntCalVal <= IntCal & IntVal;
			end if;
			if (IntProceedCntTc_d = '1') then
				IntProceed <= '1';
			elsif (IntProceedDone = '1') then
				IntProceed <= '0';
			end if;
		end if;
	end if;
end process;
IntProceedCntTc <= '1' when (IntProceedCnt = "110") else '0';
---------------------------------------------------------------------------------------------------
-- Bit clock controller for clock alignment state machine.
---------------------------------------------------------------------------------------------------
BitClkAlignWarn <= IntClkCtrlAlgnWrn;
BitClkInvrtd <= IntClkCtrlInvrtd;
BitClkDone <= IntClkCtrlDone;

AdcClk_State_PROCESS : process (IntClkCtrl_RefClk, IntBitClkRst, BitClkEna, IntProceed, IntCalVal)
subtype ActCalVal is std_logic_vector (4 downto 0);
begin
	if (IntBitClkRst = '1') then
		State				<= Idle;
		ReturnState			<= Idle;
		PassedSubState		<= '0';
		--
		IntNumIncDecIdly	<= "00000";	-- Max. 32
		IntAction			<= "00";			
		IntClkCtrlDlyInc	<= '1';
		IntClkCtrlDlyCe		<= '0';
		IntClkCtrlDone 		<= '0';
		IntClkCtrlAlgnWrn	<= '0';
		IntClkCtrlInvrtd	<= '0';
		IntTurnAroundBit	<= '0';
		IntProceedDone		<= '0';
		IntClkCtrlDone		<= '0';
		IntCalValReg		<= (others => '0');		-- 2-bit
		IntTimeOutCnt		<= (others => '0');		-- 4-bit
		IntStepCnt	 		<= (others => '0');		-- 5-bit
	elsif (IntClkCtrl_RefClk'event and IntClkCtrl_RefClk = '1') then
		if (BitClkEna = '1' and IntClkCtrlDone = '0') then
		case State is 
			when Idle =>
				IntProceedDone <= '0';
				PassedSubState <= '0';
				case ActCalVal'(IntAction(1 downto 0) & IntCalVal (1 downto 0) & IntProceed) is
					when "00001" => State <= A;
					when "01001" => State <= B;
					when "10001" => State <= B;
					when "11001" => State <= B;
					when "01111" => State <= C;
					when "01101" => State <= D;
					when "01011" => State <= D;
					when "00011" => State <= E;
					when "00101" => State <= E;
					when "00111" => State <= E;
					when "10011" => State <= F;
					when "11011" => State <= F;
					when "10101" => State <= F;
					when "11101" => State <= F;
					when "10111" => State <= F;
					when "11111" => State <= F;
					when others => State <= Idle;
				end case;
			when A => 						-- First time and sampling in jitter or cross area.
				IntAction <= "01";					-- Set the action bits and go to next step.
				State <= B;
			when B =>						-- Input is samples in jitter or clock cross area.
				if (PassedSubState = '1') then
					PassedSubState <= '0';			-- Clear the the pass through the sub state bit.
					IntProceedDone <= '1';			-- Reset the proceed bit.
					State <= Idle;					-- Return for a new sample of the input.
				elsif (IntTimeOutCnt = "1111") then	-- When arriving here something is wrong.
					IntTimeOutCnt <= "0000";		-- Reset the counter.
					IntAction <= "00";				-- reset the action bits.
					IntClkCtrlAlgnWrn <= '1';		-- Raise a FLAG.
					IntProceedDone <= '1';			-- Reset the proceed bit.
					State <= Idle;					-- Retry, return for a new sample of the input.
				else
					IntTimeOutCnt <= IntTimeOutCnt + 1;
					IntNumIncDecIdly <= "00010";	-- Number increments or decrements to do.
					ReturnState <= State;			-- This state is the state to return too.
					IntProceedDone <= '1';			-- Reset the proceed bit.
					IntClkCtrlDlyInc <= '1';		-- Set for increment.
					State <= IdlyIncDec;			-- Jump to the Increment/decrement sub-state.
				end if;
			when C =>						-- After first sample in jitter or cross, sample is now high.
				IntNumIncDecIdly <= "00010";		-- Number increments or decrements to do.
				ReturnState <= Done;				-- This state is the state to return too.
				IntClkCtrlDlyInc	<= '0';			-- Set for decrement.
				State <= IdlyIncDec;
			when D =>						-- Same as in C but with indication of 180-degrees shift.
				IntClkCtrlInvrtd <= '1';
				State <= C;
			when E =>						-- First saple with valid data.
				IntCalValReg <= IntCalVal;			-- Register the sampled value
				IntAction <= "10";
				IntProceedDone <= '1';				-- Reset the proceed bit.
				IntNumIncDecIdly <= "00001";		-- Number increments or decrements to do.
				ReturnState <= Idle;				-- When increment is done return sampling.
				IntClkCtrlDlyInc <= '1';			-- Set for increment
				State <= IdlyIncDec;				-- Jump to the Increment/decrement sub-state.
			when F =>						-- Next samples with valid data.
				if (IntCalVal /= IntCalValReg) then
					State <= G;						-- When the new CalVal value is different from the first.
				else
					if (IntStepCnt = "11111") then 	-- Step counter at the end, 31.
						if (IntTurnAroundBit = '0') then 
							State <= H;				-- No edge found and first time here.
						elsif (IntCalValReg = "11") then
							State <= K;			-- A turnaround already happend.
						else					-- No edge is found (large 1/2 period).
							State <= K1;		-- Move the clock edge to near the correct
						end if;					-- edge.
					else
						IntStepCnt <= IntStepCnt + 1;
						IntNumIncDecIdly <= "00001";-- Number increments or decrements to do.
						IntProceedDone <= '1';		-- Reset the proceed bit.
						ReturnState <= Idle;		-- When increment is done return sampling.
						IntClkCtrlDlyInc <= '1';	-- Set for increment
						State <= IdlyIncDec;		-- Jump to the Increment/decrement sub-state.
					end if;
				end if;
			when G =>
				if (IntCalValReg /= "01") then
					IntClkCtrlInvrtd <= '1';
					State <= G1;
				else
					State <= G1;
				end if;
			when G1 =>
				if (IntTimeOutCnt = "00") then
					State <= Done;
				else
					IntNumIncDecIdly <= "00010";-- Number increments or decrements to do.
					ReturnState <= Done;		-- After decrement it's finished.
					IntClkCtrlDlyInc <= '0';	-- Set for decrement
					State <= IdlyIncDec;		-- Jump to the Increment/decrement sub-state.
				end if;
			when H =>
				IntTurnAroundBit <= '1';			-- Indicate that the Idelay jumps to 0.
				IntStepCnt <= IntStepCnt + 1;		-- Set all registers to zero.
				IntAction <= "00";					-- Take one step to let the counter flow over and 
				IntCalValReg <= "00";				-- The idelay turn over to 0.
				IntTimeOutCnt <= "0000";			-- Start sampling from scratch.
				IntNumIncDecIdly <= "00001";		-- Number increments or decrements to do.
				IntProceedDone <= '1';				-- Reset the proceed bit.
				ReturnState <= Idle;				-- After increment go sampling for new.
				IntClkCtrlDlyInc <= '1';			-- Set for increment.
				State <= IdlyIncDec;				-- Jump to the Increment/decrement sub-state.
			when K =>
				IntNumIncDecIdly <= "11111";		-- Number increments or decrements to do.
				ReturnState <= K2;					-- After increment it is done.
				IntClkCtrlDlyInc <= '1';			-- Set for increment.
				State <= IdlyIncDec;				-- Jump to the Increment/decrement sub-state.
			when K1 =>
				IntNumIncDecIdly <= "11110";		-- Number increments or decrements to do.
				ReturnState <= K2;					-- After increment it is done.
				IntClkCtrlDlyInc <= '1';			-- Set for increment.
				State <= IdlyIncDec;				-- Jump to the Increment/decrement sub-state.
			when K2 =>
				IntNumIncDecIdly <= "00001";		-- Number increments or decrements to do.
				ReturnState <= Done;				-- After increment it is done.
				IntClkCtrlDlyInc <= '1';			-- Set for increment.
				State <= IdlyIncDec;				-- Jump to the Increment/decrement sub-state.
			--
			when IdlyIncDec =>				-- Increment or decrement by enable.
				if (IntNumIncDecIdly /= "00000") then			-- Check the number of tap jumps
					IntNumIncDecIdly <= IntNumIncDecIdly - 1;	-- If not 0 do a jump and decrement.
					IntClkCtrlDlyCe <= '1';						-- Do the jump. enable it.
				else
					IntClkCtrlDlyCe <= '0';			-- when it is enabled, disbale it
					PassedSubState <= '1';			-- Set a check bit "I've been here and passed".
					State <= ReturnState;			-- Return to origin.
				end if;
			when Done =>					-- Alignment done.
				IntClkCtrlDone <= '1';				-- Alignment is done.
		end case;
		end if;
	end if;
end process;
--
----------------------------------------------------------------------------------------------------
--
end  AdcClk_struct;