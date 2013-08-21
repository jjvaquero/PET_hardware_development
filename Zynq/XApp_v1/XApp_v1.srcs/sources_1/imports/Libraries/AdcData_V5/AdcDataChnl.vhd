------------------------------------------------------------------------------------------------
-- © Copyright 2007-2010, Xilinx, Inc. All rights reserved.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
------------------------------------------------------------------------------------------------
--
-- Disclaimer:
--      This disclaimer is not a license and does not grant any rights to the materials
--      distributed herewith. Except as otherwise provided in a valid license issued to you
--      by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE MATERIALS
--      ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
--      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED
--      TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR
--      PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort, including
--      negligence, or under any other theory of liability) for any loss or damage of any
--      kind or nature related to, arising under or in connection with these materials,
--      including for any direct, or any indirect, special, incidental, or consequential
--      loss or damage (including loss of data, profits, goodwill, or any type of loss or
--      damage suffered as a result of any action brought by a third party) even if such
--      damage or loss was reasonably foreseeable or Xilinx had been advised of the
--      possibility of the same.
--
-- CRITICAL APPLICATIONS
--      Xilinx products are not designed or intended to be fail-safe, or for use in any
--      application requiring fail-safe performance, such as life-support or safety devices
--      or systems, Class III medical devices, nuclear facilities, applications related to
--      the deployment of airbags, or any other applications that could lead to death,
--      personal injury, or severe property or environmental damage (individually and
--      collectively, "Critical Applications"). Customer assumes the sole risk and
--      liability of any use of Xilinx products in Critical Applications, subject only to
--      applicable laws and regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES. 
--
--      Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:        Xilinx
-- \   \   \/    Version: 
--  \   \        Filename:      AdcDataChnl.vhd
--  /   /        Date Last Modified: Oct 2010
-- /___/   /\    Date Created:       18/05/06
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:      Virtex-5
-- Author:      Marc Defossez
-- Entity Name: AdcDataChnl
-- Purpose: 	Data bits interface for a Texas Instruments ADC of the ADS6xyz family.
-- Tools:       ISE_12.3 (XST / ISIM)
-- Limitations: none
--
-- Revision History:
--    Rev. 08 Oct 2010
--      Design adapted for ISE_12.3.
--      Design adapted for use with Eclipse (Galileo or Helios)
--      and Simplifide IDE plugin. This is done to ease design changes
--      and adaptations in the future. There is nothing that stops one
--      to use a different standalone editor to alter the files.
--      This doesn't mean that Eclipse/Simplifide is a must to change the
--      files, anybody using a normal editor (notepad, Uedit, or other) can
--      do whatever wanted with the design files. 
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
library UNISIM;
use UNISIM.VCOMPONENTS.ISERDES;
use UNISIM.VCOMPONENTS.IBUFDS;
use UNISIM.VCOMPONENTS.IBUFDS_DIFF_OUT;
------------------------------------------------------------------------------------------------
-- Entity pin description
------------------------------------------------------------------------------------------------
--		GENERICS
-- C_AdcBits			-- Can be 12, 14 or 16.
-- C_AdcBytOrBitMode	-- 1 = BIT mode, 0 = BYTE mode.
-- C_AdcMsbOrLsbFst		-- 0 = MSB first, 1 = LSB first.
-- C_AdcWireInt			-- 0 = 1-wire, 1 = 2-wire.
-- C_OnChipLvdsTerm		-- 1 = termination, 0 = no termination.
--		PORTS
-- Dat0In_n		-- Data input N of channel 0.
-- Dat0In_p		-- Data input P of channel 0.
-- Dat1In_n		-- Data input N of channel 1.
-- Dat1In_p		-- Data input P of channel 1.
-- DatClk		-- Fast bit clock.
-- DatClkDiv	-- slow word clock.
-- DatRstIn		-- Reset generated by the frame module.
-- DatEna		-- enable.
-- DatDone		-- Indication the the clock is aligned and ready.
-- DatBitSlip_p	-- Perform a bitslip for the rising edge clocked ISERDES.
-- DatBitSlip_n	-- Perform a bitslip for the falling edge clocked ISERDES.
-- DatSwapMux	-- Perform a bit swap on the ISERDES output data.
-- DatMsbRegEna	-- Enable Msb register in 1-wire mode.
-- DatLsbRegEna	-- Enable Lsb register in 1-wire mode.
-- DatRstIn		-- Reset generated by frame module.
-- DatOut		-- output bits of the interface.
--				-- 1-wire mode:	Channel B = 31:16  Channel A = 15:0
--				-- 2-wire mode:	Channel A = 15:0
-- Dat0DlyCe	-- Enable of the IDELAY
-- Dat0DlyRst	-- Reset of the IDELAY
-- Dat0DlyInc	-- Increment of the IDELAY
-- Dat1DlyCe	-- Enable of the IDELAY
-- Dat1DlyRst	-- Reset of the IDELAY
-- Dat1DlyInc	-- Increment of the IDELAY

--
------------------------------------------------------------------------------------------------
entity AdcDataChnl is
	generic (
		C_AdcBits			: integer;		-- Can be 12, 14 or 16
		C_AdcBytOrBitMode	: integer;		-- 1 = BIT mode, 0 = BYTE mode,
		C_AdcMsbOrLsbFst	: integer;		-- 0 = MSB first, 1 = LSB first
		C_AdcWireInt		: integer;		-- 0 = 1-wire, 1 = 2-wire.
		C_OnChipLvdsTerm	: integer		-- 1 = termination, 0 = no termination
		);
    port (
        DatD0_n			: in std_logic;
		DatD0_p			: in std_logic;
		DatD1_n			: in std_logic;
		DatD1_p			: in std_logic;
		DatClk			: in std_logic;
		DatClkDiv		: in std_logic;
		DatRstIn		: in std_logic;
		DatEna			: in std_logic;
		DatDone			: in std_logic;
		DatBitSlip_p	: in std_logic;
        DatBitSlip_n	: in std_logic;
        DatSwapMux		: in std_logic;
        DatMsbRegEna	: in std_logic;
        DatLsbRegEna	: in std_logic;
		DatOut			: out std_logic_vector (31 downto 0);
		--
		Dat0DlyCe		: in std_logic;
		Dat0DlyRst		: in std_logic;
		Dat0DlyInc		: in std_logic;
		Dat1DlyCe		: in std_logic;
		Dat1DlyRst		: in std_logic;
		Dat1DlyInc		: in std_logic
    );
end  AdcDataChnl;

------------------------------------------------------------------------------------------------
-- Arcitecture section
------------------------------------------------------------------------------------------------
architecture AdcDataChnl_struct of AdcDataChnl  is
------------------------------------------------------------------------------------------------
-- Component Instantiation
------------------------------------------------------------------------------------------------
-- Components are instantiated through library naming.
------------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
------------------------------------------------------------------------------------------------
-- Constants
	-- In two wire mode a 12 bit ADC has 2 channels of 6 bits. The AdcBits stay at 12.
	-- In two wire mode a 14 bit ADC has 2 channels of 8 bits. The AdcBits is set at 16.
	-- In two wire mode a 16 bit ADC has 2 channels of 8 bits. The AdcBits stay at 16.
	function DatBits (Bits : integer) return integer is
	variable Temp : integer;
	begin
		if (Bits = 12) then
			Temp := 12;
		elsif (Bits = 14) then
			Temp := 16;
		elsif (Bits = 16) then
			Temp := 16;
		end if;
	return Temp;
	end function DatBits;
	--
	function TermOrNot (Term : integer) return boolean is
	begin
		if (Term = 0) then
			return FALSE;
		else
			return TRUE;
		end if;
	end TermOrNot;
	--
constant IntIsrdsDataWidth : integer := DatBits(C_AdcBits)/4;
constant Low			: std_logic := '0';
constant High			: std_logic := '1';
-- Signals
signal IntDatClk		: std_logic;
signal IntDatClk_n		: std_logic;

signal IntDatD0_p		: std_logic;
signal IntDatD0_n		: std_logic;
signal IntDatD1_p		: std_logic;
signal IntDatD1_n		: std_logic;
--
-- ADC resolution = 12-bit: IntDatSrds0Out(5 downto 0) and IntDatSrds1Out(5 downto 0)
-- ADC resolution = 14-bit or 16-bit: IntDatSrds0Out(7 downto 0) and IntDatSrds1Out(7 downto 0)
signal IntDatSrds0Out	: std_logic_vector (7 downto 0);
signal IntDatSrds1Out	: std_logic_vector (7 downto 0);
signal IntDatSrds0		: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDatSrds1		: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDat0			: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDat1			: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDat0Swp		: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDat1Swp		: std_logic_vector ((DatBits(C_AdcBits)/2)-1 downto 0);
signal IntDatDone		: std_logic;
signal IntDatEna 		: std_logic;
-- Attributes
------------------------------------------------------------------------------------------------
--
begin
-------------------------------------------------------------------------------------------------
IntDatClk <= DatClk;			-- CLOCK FOR P-side ISERDES
IntDatClk_n <= not DatClk;		-- CLOCK FOR N_side ISERDES
--
AdcDataChnl_Done_PROCESS : process (DatClkDiv, DatRstIn)
begin
	if (DatRstIn = High) then
		IntDatDone <= Low;
	elsif (DatClkDiv'event and DatClkDiv = '1') then
		IntDatDone <= DatDone;
	end if;
end process;
--
IntDatEna <= High when (IntDatDone = High and DatEna = High) else Low;
------------------------------------------------------------------------------------------------
-- LVDS input Buffers.
-- The on-chip termination is defined in the UCF file.
AdcDataChnl_I_Ibufds_DD0 : IBUFDS_DIFF_OUT
	generic	map (IOSTANDARD	=> "LVDS_25")
	port map (I	=> DatD0_p, IB => DatD0_n, O => IntDatD0_p, OB => IntDatD0_n);
AdcDataChnl_I_Ibufds_DD1 : IBUFDS_DIFF_OUT
	generic	map (IOSTANDARD	=> "LVDS_25")
	port map (I	=> DatD1_p, IB => DatD1_n, O => IntDatD1_p, OB => IntDatD1_n);
--
------------------------------------------------------------------------------------------------
-- ISERDES for channel ZERO
AdcDataChnl_I_Isrds_D0_p : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,		-- <-- Number of bits
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntDatD0_p,
		DLYCE		=> Dat0DlyCe,
		DLYINC		=> Dat0DlyInc,
		DLYRST		=> Dat0DlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> DatRstIn,
		BITSLIP 	=> DatBitSlip_p,
		CE1			=> IntDatDone,
		CE2			=> Low,
		CLK			=> IntDatClk,
		CLKDIV		=> DatClkDiv,	
		SHIFTIN1 	=> Low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,
		Q1 			=> IntDatSrds0Out(6), --(0),
		Q2 			=> IntDatSrds0Out(4), --(2),
		Q3 			=> IntDatSrds0Out(2), --(4),
		Q4 			=> IntDatSrds0Out(0), --(6),
		Q5 			=> open,
		Q6 			=> open
	);
AdcDataChnl_I_Isrds_D0_n : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,			-- <-- Number of bits
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntDatD0_n,
		DLYCE		=> Dat0DlyCe, 
		DLYINC		=> Dat0DlyInc,
		DLYRST		=> Dat0DlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> DatRstIn,
		BITSLIP 	=> DatBitSlip_n,
		CE1			=> IntDatDone,
		CE2			=> Low,
		CLK			=> IntDatClk_n,
		CLKDIV		=> DatClkDiv,	
		SHIFTIN1 	=> Low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,
		Q1 			=> IntDatSrds0Out(7), --(1), 
		Q2 			=> IntDatSrds0Out(5), --(3),
		Q3 			=> IntDatSrds0Out(3), --(5),
		Q4 			=> IntDatSrds0Out(1), --(7),
		Q5 			=> open,
		Q6 			=> open
	);
-- ISERDES for channel ONE
AdcDataChnl_I_Isrds_D1_p : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,				-- <-- Number of bits
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntDatD1_p,
		DLYCE		=> Dat1DlyCe,
		DLYINC		=> Dat1DlyInc,
		DLYRST		=> Dat1DlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> DatRstIn,
		BITSLIP 	=> DatBitSlip_p,
		CE1			=> IntDatDone,
		CE2			=> Low,
		CLK			=> IntDatClk,
		CLKDIV		=> DatClkDiv,	
		SHIFTIN1 	=> Low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,
		Q1 			=> IntDatSrds1Out(6), --(0),
		Q2 			=> IntDatSrds1Out(4), --(2),
		Q3 			=> IntDatSrds1Out(2), --(4),
		Q4 			=> IntDatSrds1Out(0), --(6),
		Q5 			=> open,
		Q6 			=> open
	);
AdcDataChnl_I_Isrds_D1_n : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,			-- <-- Number of bits
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntDatD1_n,
		DLYCE		=> Dat1DlyCe, 
		DLYINC		=> Dat1DlyInc,
		DLYRST		=> Dat1DlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> DatRstIn,
		BITSLIP 	=> DatBitSlip_n,
		CE1			=> IntDatDone,
		CE2			=> Low,
		CLK			=> IntDatClk_n,
		CLKDIV		=> DatClkDiv,	
		SHIFTIN1 	=> low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,
		Q1 			=> IntDatSrds1Out(7), --(1),
		Q2 			=> IntDatSrds1Out(5), --(3),
		Q3 			=> IntDatSrds1Out(3), --(5),
		Q4 			=> IntDatSrds1Out(1), --(7),
		Q5 			=> open,
		Q6 			=> open
	);
--
Gen_6_DatBus : if (DatBits(C_AdcBits)/2) = 6 generate
begin
	IntDatSrds0 <= not IntDatSrds0Out(5) & IntDatSrds0Out(4) &
					not IntDatSrds0Out(3) & IntDatSrds0Out(2) &
					not IntDatSrds0Out(1) & IntDatSrds0Out(0);
	IntDatSrds1 <= not IntDatSrds1Out(5) & IntDatSrds1Out(4) &
					not IntDatSrds1Out(3) & IntDatSrds1Out(2) &
					not IntDatSrds1Out(1) & IntDatSrds1Out(0);
end generate;
Gen_8_DatBus : if (DatBits(C_AdcBits)/2) = 8 generate
begin
	IntDatSrds0 <= not IntDatSrds0Out(7) & IntDatSrds0Out(6) &
					not IntDatSrds0Out(5) & IntDatSrds0Out(4) &
					not IntDatSrds0Out(3) & IntDatSrds0Out(2) &
					not IntDatSrds0Out(1) & IntDatSrds0Out(0);
	IntDatSrds1 <= not IntDatSrds1Out(7) & IntDatSrds1Out(6) &
					not IntDatSrds1Out(5) & IntDatSrds1Out(4) &
					not IntDatSrds1Out(3) & IntDatSrds1Out(2) &
					not IntDatSrds1Out(1) & IntDatSrds1Out(0);
end generate; 
-------------------------------------------------------------------------------------------------
-- DATA REGISTER
-------------------------------------------------------------------------------------------------
AdcDataChnl_PROCESS : process (DatRstIn, DatClkDiv)
begin
	if (DatRstIn = '1') then
		IntDat0 <= (others => '0');
		IntDat1 <= (others => '0');
	elsif (DatClkDiv'event and DatClkDiv = '1') then
		if (IntDatEna = '1') then
			IntDat0 <= IntDatSrds0;
			IntDat1 <= IntDatSrds1;
		end if;
	end if;
end process;
------------------------------------------------------------------------------------------------
-- BIT SWAP MULTIPLEXER
-- Swap the bits in correct order when the pattern detected is bit swapped.
------------------------------------------------------------------------------------------------
AdcDataChnl_Gen_2 : for n in (DatBits(C_AdcBits)/4)-1 downto 0 generate
	Swap_Ch0_PROCESS : process (DatRstIn, DatClkDiv)
	begin
		if (DatRstIn = '1') then
			IntDat0Swp((n*2)+1) <= '0';
			IntDat0Swp(n*2) 	<= '0';
			IntDat1Swp((n*2)+1) <= '0';
			IntDat1Swp(n*2) 	<= '0';
		elsif (DatClkDiv'event and DatClkDiv = '1') then
			if (IntDatEna = '1') then
				if (DatSwapMux = '0') then
					IntDat0Swp((n*2)+1) <= IntDat0((n*2)+1);
					IntDat0Swp(n*2) 	<= IntDat0(n*2);
					IntDat1Swp((n*2)+1) <= IntDat1((n*2)+1);
					IntDat1Swp(n*2) 	<= IntDat1(n*2);
				else -- DatSwapMux = '1'
					IntDat0Swp((n*2)+1) <= IntDat0(n*2);
					IntDat0Swp(n*2) 	<= IntDat0((n*2)+1);
					IntDat1Swp((n*2)+1) <= IntDat1(n*2);
					IntDat1Swp(n*2) 	<= IntDat1((n*2)+1);
				end if;
			end if;
		end if;
	end process;
end generate;
------------------------------------------------------------------------------------------------
-- 1-WIRE, 12x SERIALIZATION for 12-bit ADCs
-- The data from one ADC will show up in the output of one interface channel. It is so that the
-- 32-bit output of the interface shows both channels. Bits 31:16 show the upper channel and
-- bits 15:0 show the lower channel.
------------------------------------------------------------------------------------------------
Gen_1w_12b : if (C_AdcBits = 12 and C_AdcWireInt = 0) generate
	-- 1-wire mode is only coded for BIT wise operation.
	Gen_1_Msb : if C_AdcMsbOrLsbFst = 0 generate
		DatOut_Msb_PROCESS : process (DatRstIn, DatClkDiv)
		-- MSB first.
		-- Output	: 31						16	15							0
		--			: "0000" & MSB(5:0) & LSB(5:0)	"0000" & MSB(5:0) & LSB(5:0)
		begin
			if (DatRstIn = '1') then
				DatOut <= (others => '0');
			elsif (DatClkDiv'event and DatClkDiv = '1') then
				if (DatMsbRegEna = '1') then
					DatOut(31 downto 22) <= "0000" & IntDat1Swp(5 downto 0);
					DatOut(15 downto 6) <= "0000" & IntDat0Swp(5 downto 0);
				end if;
				if (DatLsbRegEna = '1') then
					DatOut(21 downto 16) <= IntDat1Swp(5 downto 0);
					DatOut(5 downto 0) <= IntDat0Swp(5 downto 0);
				end if;
			end if;
		end process;
	end generate;
	Gen_1_Lsb : if C_AdcMsbOrLsbFst = 1 generate
		DatOut_Lsb_PROCESS : process (DatRstIn, DatClkDiv)
		-- LSB first.
		-- Output	: 31						16	15							0
		--			: "0000" & LSB(0:5) & MSB(0:5)	"0000" & LSB(0:5) & MSB(0:5)
		begin
			if (DatRstIn = '1') then
				DatOut <= (others => '0');
			elsif (DatClkDiv'event and DatClkDiv = '1') then
				if (DatMsbRegEna = '1') then
					DatOut(21 downto 16) <= IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2)
											 & IntDat1Swp(3) & IntDat1Swp(4) & IntDat1Swp(5);
					DatOut(5 downto 0) <= IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2)
											 & IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5);
				end if;
				if (DatLsbRegEna = '1') then
					DatOut(31 downto 22) <= "0000" & IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2)
											& IntDat1Swp(3) & IntDat1Swp(4) & IntDat1Swp(5);
					DatOut(15 downto 6) <= "0000" & IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2)
											& IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5);
				end if;
			end if;
		end process;
	end generate;
end generate;
------------------------------------------------------------------------------------------------
-- 2-WIRE, 12x SERIALIZATION for 12-bit ADCs
-- Only one of these options can be chosen at a time.
--	2-wire, Msb-Bit or Msb-Byte
--	2-wire, Lsb-Bit or Lsb-Byte
------------------------------------------------------------------------------------------------
Gen_2w_12b : if (C_AdcBits = 12 and C_AdcWireInt = 1) generate
	Gen_1_Msb : if C_AdcMsbOrLsbFst = 0 generate
	-- Bit mode, MSB First
	-- Bit			: 5    4   3   2   1   0
	-- Channel 0	: D10, D8, D6, D4, D2, D0
	-- Channel 1	: D11, D9, D7, D5, D3, D1
	-- Output		: 0 0 0 0, D11, D10,  D9,  D8,  D7,  D6,  D5,  D4,  D3,  D2,  D1,  D0
	--				: 0 0 0 0, 1_5, 0_5, 1_4, 0_4, 1_3, 0_3, 1_2, 0_2, 1_1, 0_1, 1_0, 0_0
		Gen_1_Bit :	if C_AdcBytOrBitMode = 1 generate	-- Bit mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= ("0000"
							& IntDat1Swp(5) & IntDat0Swp(5) & IntDat1Swp(4) & IntDat0Swp(4)
							& IntDat1Swp(3) & IntDat0Swp(3) & IntDat1Swp(2) & IntDat0Swp(2)
							& IntDat1Swp(1) & IntDat0Swp(1) & IntDat1Swp(0) & IntDat0Swp(0));					
					end if;
					if (DatLsbRegEna = '1') then					
						DatOut(15 downto 0) <= ("0000"
							& IntDat1Swp(5) & IntDat0Swp(5) & IntDat1Swp(4) & IntDat0Swp(4)
							& IntDat1Swp(3) & IntDat0Swp(3) & IntDat1Swp(2) & IntDat0Swp(2)
							& IntDat1Swp(1) & IntDat0Swp(1) & IntDat1Swp(0) & IntDat0Swp(0));
					end if;
				end if;
			end process;
		end generate;
	-- Byte mode, MSB First
	-- Bit			: 5    4    3   2   1   0
	-- Channel 0	: D5,  D4,  D3, D2, D1, D0
	-- Channel 1	: D11, D10, D9, D8, D7, D6
	-- Output		: 0 0 0 0, D11, D10,  D9,  D8,  D7,  D6,  D5,  D4,  D3,  D2,  D1,  D0
	--				: 0 0 0 0, 1_5, 1_4, 1_3, 1_2, 1_1, 1_0, 0_5, 0_4, 0_3, 0_2, 0_1, 0_0
		Gen_1_Byt : if C_AdcBytOrBitMode = 0 generate	-- Byte Mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= ("0000"
							& IntDat1Swp(5) & IntDat1Swp(4) & IntDat1Swp(3) & IntDat1Swp(2)
							& IntDat1Swp(1) & IntDat1Swp(0) & IntDat0Swp(5) & IntDat0Swp(4)
							& IntDat0Swp(3) & IntDat0Swp(2) & IntDat0Swp(1) & IntDat0Swp(0));					
					end if;
					if (DatLsbRegEna = '1') then					
						DatOut(15 downto 0) <= ("0000"
							& IntDat1Swp(5) & IntDat1Swp(4) & IntDat1Swp(3) & IntDat1Swp(2)
							& IntDat1Swp(1) & IntDat1Swp(0) & IntDat0Swp(5) & IntDat0Swp(4)
							& IntDat0Swp(3) & IntDat0Swp(2) & IntDat0Swp(1) & IntDat0Swp(0));
					end if;
				end if;
			end process;
		end generate;
	end generate;
--
	Gen_1_Lsb : if C_AdcMsbOrLsbFst = 1 generate
	-- Bit mode, LSB First
	-- Bit			: 5   4   3   2   1   0
	-- Channel 0	: D0, D2, D4, D6, D8, D10
	-- Channel 1	: D1, D3, D5, D7, D9, D11
	-- Output		: 0 0 0 0, D11, D10,  D9,  D8,  D7,  D6,  D5,  D4,  D3,  D2,  D1,  D0
	--				: 0 0 0 0, 1_0, 0_0, 1_1, 0_1, 1_2, 0_2, 1_3, 0_3, 1_4, 0_4, 1_5, 0_5
		Gen_1_Bit :	if C_AdcBytOrBitMode = 1 generate	-- Bit mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= ("0000"
							& IntDat1Swp(0) & IntDat0Swp(0) & IntDat1Swp(1) & IntDat0Swp(1)
							& IntDat1Swp(2) & IntDat0Swp(2) & IntDat1Swp(3) & IntDat0Swp(3)
							& IntDat1Swp(4) & IntDat0Swp(4) & IntDat1Swp(5) & IntDat0Swp(5));					
					end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= ("0000"
							& IntDat1Swp(0) & IntDat0Swp(0) & IntDat1Swp(1) & IntDat0Swp(1)
							& IntDat1Swp(2) & IntDat0Swp(2) & IntDat1Swp(3) & IntDat0Swp(3)
							& IntDat1Swp(4) & IntDat0Swp(4) & IntDat1Swp(5) & IntDat0Swp(5));
					end if;
				end if;
			end process;
		end generate;
	-- Byte Mode, LSB First
	-- Bit			: 5   4   3   2   1    0
	-- Channel 0	: D0, D1, D2, D3, D4,  D5
	-- Channel 1	: D6, D7, D8, D9, D10, D11
	-- Output		: 0 0 0 0, D11, D10,  D9,  D8,  D7,  D6,  D5,  D4,  D3,  D2,  D1,  D0
	--				: 0 0 0 0, 1_0, 1_1, 1_2, 1_3, 1_4, 1_5, 0_0, 0_1, 0_2, 0_3, 0_4, 0_5
		Gen_1_Byt : if C_AdcBytOrBitMode = 0 generate	-- Byte Mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= ("0000"
							& IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2) & IntDat1Swp(3)
							& IntDat1Swp(4) & IntDat1Swp(5) & IntDat0Swp(0) & IntDat0Swp(1)
							& IntDat0Swp(2) & IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5));					
					end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= ("0000"
							& IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2) & IntDat1Swp(3)
							& IntDat1Swp(4) & IntDat1Swp(5) & IntDat0Swp(0) & IntDat0Swp(1)
							& IntDat0Swp(2) & IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5));
					end if;
				end if;
			end process;
		end generate;
	end generate;
end generate;
------------------------------------------------------------------------------------------------
-- 1-WIRE, 16x SERIALIZATION for 14-bit and 16-bit ADCs
-- The data from one ADC will show up in the output of one interface channel. It is so that the
-- 32-bit output of the interface shows both channels. Bits 31:16 show the upper channel (CH_1) 
-- and bits 15:0 show the lower (CH_0) channel. 
------------------------------------------------------------------------------------------------
Gen_1w_1416b : if (C_AdcBits /= 12 and C_AdcWireInt = 0) generate
	-- 1-wire is only coded for BIT wise operation
	Gen_1_Msb : if C_AdcMsbOrLsbFst = 0 generate
		DatOut_Msb_PROCESS : process (DatRstIn, DatClkDiv)
		begin
			if (DatRstIn = '1') then
				DatOut <= (others => '0');
			elsif (DatClkDiv'event and DatClkDiv = '1') then
				if (DatMsbRegEna = '1') then
					DatOut(31 downto 24) <= IntDat1Swp(7 downto 0);
					DatOut(15 downto 8) <= IntDat0Swp(7 downto 0);
				end if;
				if (DatLsbRegEna = '1') then
					DatOut(23 downto 16) <= IntDat1Swp(7 downto 0);
					DatOut(7 downto 0) <= IntDat0Swp(7 downto 0);
				end if;
			end if;
		end process;
	end generate;
	Gen_1_Lsb : if C_AdcMsbOrLsbFst = 1 generate
		DatOut_Lsb_PROCESS : process (DatRstIn, DatClkDiv)
		begin
			if (DatRstIn = '1') then
				DatOut <= (others => '0');
			elsif (DatClkDiv'event and DatClkDiv = '1') then
				if (DatMsbRegEna = '1') then
					DatOut(23 downto 16) <= IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2)
											& IntDat1Swp(3) & IntDat1Swp(4) & IntDat1Swp(5)
											& IntDat1Swp(6) & IntDat1Swp(7);
					DatOut(7 downto 0) <= IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2)
											& IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5)
											& IntDat0Swp(6) & IntDat0Swp(7);
				end if;
				if (DatLsbRegEna = '1') then
					DatOut(31 downto 24) <= IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2)
											& IntDat1Swp(3) & IntDat1Swp(4) & IntDat1Swp(5)
											& IntDat1Swp(6) & IntDat1Swp(7);
					DatOut(15 downto 8) <= IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2)
											& IntDat0Swp(3) & IntDat0Swp(4) & IntDat0Swp(5)
											& IntDat0Swp(6) & IntDat0Swp(7);
				end if;
			end if;
		end process;
	end generate;
end generate;
------------------------------------------------------------------------------------------------
-- 2-WIRE, 16x SERIALIZATION for 14-bit and 16-bit ADCs
-- Only one of these options can be chosen at a time.
--	2-wire, Msb-Bit or Msb-Byte
--	2-wire, Lsb-Bit or Lsb-Byte
------------------------------------------------------------------------------------------------
Gen_1416Bit : if (C_AdcBits /= 12 and C_AdcWireInt = 1) generate
--	Shift in order is assumed MSB first.
	Gen_2_Msb : if C_AdcMsbOrLsbFst = 0 generate
	-- Bit mode, MSB First, 14-bits (16-bits)
	-- Bit			: 7,       6,   5,   4,  3,  2,  1,  0
	-- Channel 0	: 0/(D14), D12, D10, D8, D6, D4, D2, D0
	-- Channel 1	: 0/(D15), D13, D11, D9, D7, D5, D3, D1
		Gen1_Bit : if C_AdcBytOrBitMode = 1 generate	-- Bit mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= (
							  IntDat1Swp(5) & IntDat0Swp(5) & IntDat1Swp(4) & IntDat0Swp(4)
							& IntDat1Swp(7) & IntDat0Swp(7) & IntDat1Swp(6) & IntDat0Swp(6)
							& IntDat1Swp(1) & IntDat0Swp(1) & IntDat1Swp(0) & IntDat0Swp(0)
							& IntDat1Swp(3) & IntDat0Swp(3) & IntDat1Swp(2) & IntDat0Swp(2));
					end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= (
							  IntDat1Swp(5) & IntDat0Swp(5) & IntDat1Swp(4) & IntDat0Swp(4)
							& IntDat1Swp(7) & IntDat0Swp(7) & IntDat1Swp(6) & IntDat0Swp(6)
							& IntDat1Swp(1) & IntDat0Swp(1) & IntDat1Swp(0) & IntDat0Swp(0)
							& IntDat1Swp(3) & IntDat0Swp(3) & IntDat1Swp(2) & IntDat0Swp(2));
					end if;
				end if;
			end process;
		end generate;                        
	-- Byte Mode, MSB First, 14-bits (16-bits)
	-- Data Bit		: 7,       6,       5,   4,   3,   2,   1,  0,
	-- Channel 0	: D7,      D6,      D5,  D4,  D3,  D2,  D1, D0,
	-- Channel 1	: 0/(D15), 0/(D14), D13, D12, D11, D10, D9, D8
		Gen1_Byt : if C_AdcBytOrBitMode = 0 generate	-- Byte Mode (not tested)
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= (
							  IntDat1Swp(5) & IntDat1Swp(4) & IntDat1Swp(7) & IntDat1Swp(6)
							& IntDat1Swp(1) & IntDat1Swp(0) & IntDat1Swp(3) & IntDat1Swp(2)
							& IntDat0Swp(5) & IntDat0Swp(4) & IntDat0Swp(7) & IntDat0Swp(6)
							& IntDat0Swp(1) & IntDat0Swp(0) & IntDat0Swp(3) & IntDat0Swp(2));
					end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= (
							  IntDat1Swp(5) & IntDat1Swp(4) & IntDat1Swp(7) & IntDat1Swp(6)
							& IntDat1Swp(1) & IntDat1Swp(0) & IntDat1Swp(3) & IntDat1Swp(2)
							& IntDat0Swp(5) & IntDat0Swp(4) & IntDat0Swp(7) & IntDat0Swp(6)
							& IntDat0Swp(1) & IntDat0Swp(0) & IntDat0Swp(3) & IntDat0Swp(2));
					end if;
				end if;
			end process;
		end generate;
	end generate;
-- Shift in order is assumed LSB first
	Gen_2_Lsb : if C_AdcMsbOrLsbFst = 1 generate
	-- Bit mode, LSB First, 14-bits (16-bit)
	-- Data Bit		; 7,  6,  5,  4,  3,  2,   1,   0
	-- Channel 0	: D0, D2, D4, D6, D8, D10, D12, 0/(D14)
	-- Channel 1	: D1, D3, D5, D7, D9, D11, D13, 0/(D15)
		Gen_2_Bit : if C_AdcBytOrBitMode = 1 generate	-- Bit mode
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= (
							  IntDat0Swp(2) & IntDat1Swp(2) & IntDat0Swp(3) & IntDat1Swp(3)
							& IntDat0Swp(0) & IntDat1Swp(0) & IntDat0Swp(1) & IntDat1Swp(1)
							& IntDat0Swp(6) & IntDat1Swp(6) & IntDat0Swp(7) & IntDat1Swp(7)
							& IntDat0Swp(4) & IntDat1Swp(4) & IntDat0Swp(5) & IntDat1Swp(5));
					 end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= (
							  IntDat0Swp(2) & IntDat1Swp(2) & IntDat0Swp(3) & IntDat1Swp(3)
							& IntDat0Swp(0) & IntDat1Swp(0) & IntDat0Swp(1) & IntDat1Swp(1)
							& IntDat0Swp(6) & IntDat1Swp(6) & IntDat0Swp(7) & IntDat1Swp(7)
							& IntDat0Swp(4) & IntDat1Swp(4) & IntDat0Swp(5) & IntDat1Swp(5));
					end if;
				end if;
			end process;
		end generate;
	-- Byte Mode, LSB First, 14-bits (16-bit)
	-- Data Bit		: 7,  6,  5,   4,   3,   2,   1,      0
	-- Channel 0	: D0, D1, D2,  D3,  D4,  D5,  D6,      D7
	-- Channel 1	: D8, D9, D10, D11, D12, D13, 0/(D14), 0/(D15)
		Gen_2_Byt : if C_AdcBytOrBitMode = 0 generate	-- Byte Mode (not tested)
			DatOut_PROCESS : process (DatRstIn, DatClkDiv)
			begin
				if (DatRstIn = '1') then
					DatOut <= (others => '0');
				elsif (DatClkDiv'event and DatClkDiv = '1') then
					if (DatMsbRegEna = '1') then
						DatOut(31 downto 16) <= (
							  IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2) & IntDat1Swp(3)
							& IntDat1Swp(4) & IntDat1Swp(5) & IntDat1Swp(6) & IntDat1Swp(7)
							& IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2) & IntDat0Swp(3) 
							& IntDat0Swp(4) & IntDat0Swp(5) & IntDat0Swp(6) & IntDat0Swp(6));					
					end if;
					if (DatLsbRegEna = '1') then
						DatOut(15 downto 0) <= (
							  IntDat1Swp(0) & IntDat1Swp(1) & IntDat1Swp(2) & IntDat1Swp(3)
							& IntDat1Swp(4) & IntDat1Swp(5) & IntDat1Swp(6) & IntDat1Swp(7)
							& IntDat0Swp(0) & IntDat0Swp(1) & IntDat0Swp(2) & IntDat0Swp(3) 
							& IntDat0Swp(4) & IntDat0Swp(5) & IntDat0Swp(6) & IntDat0Swp(6));
					end if;
				end if;
			end process;
		end generate;
	end generate;
end generate;
--
------------------------------------------------------------------------------------------------
--
end  AdcDataChnl_struct;