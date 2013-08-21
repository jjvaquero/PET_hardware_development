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
-- /___/  \  /   Vendor:    Xilinx
-- \   \   \/    Version: 
--  \   \        Filename:  AdcFrm.vhd
--  /   /        Date Last Modified: Oct 2010
-- /___/   /\    Date Created:       07/06/06
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:      Virtex-5
-- Author:      Marc Defossez
-- Entity Name: AdcFrm
-- Purpose:     This file is part of an FPGA interface for a Texas Instruments ADC.
-- Tools:	    ISE_12.3 (XST / ISIM)
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
use IEEE.std_logic_textio.all;
use std.textio.all;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

------------------------------------------------------------------------------------------------
-- Entity pin description
------------------------------------------------------------------------------------------------
--		GENERICS
-- C_FAMILY				-- Can be "VIRTEX4" or "VIRTEX5".
-- C_AdcBits 			-- Number of bits of the ADC, can be 12, 14, or 16.
-- C_OnChipLvdsTerm		-- 1 = termination, 0 = no termination.
-- C_FrmPattern			-- Frame pattern that needs to be detected.
-- C_AdcWireInt			-- 0  = one wire, 1 = two wire.
--		PORTS
-- FrmClk_n				-- I -- Frame clock input n-channel.
-- FrmClk_p				-- I -- Frame clock input p-channel.
-- FrmClkRst			-- I -- Reset.
-- FrmClkEna			-- I -- Enable.
-- FrmClk				-- I -- Adjusted bit clock = BUFIO output of "AdcClk:
-- FrmClkDiv			-- I -- Adjusted word clock = BUFR divided bit clock output of "AdcClk".
-- FrmClkDone			-- I -- High when bit clock is adjusted.
-- FrmClkReSync			-- I -- Resync to the frame pattern when a high pulse is presented.                           
-- FrmClkBitSlip_p		-- O -- Enable/disable Data Bitslip. This signal comes from "AdcFrm"
-- FrmClkBitSlip_n		-- O -- Enable/disable Data Bitslip. This signal comes from "AdcFrm"
-- FrmClkSwapMux		-- O -- Signal indicating that bit swap is necessary.
-- FrmClkDat			-- O -- Output of the detected frame pattern.
-- FrmClkOut			-- O -- Frame clock output for DCM.
-- FrmClkRstOut			-- O -- Frame reset need to be used for the data also.
-- FrmClkSyncWarn		-- O -- Indication that the frame pattern can not be retrieved from the incoming data.
-- FrmDlyCe				-- I -- IDELAY enable, IDELAY is not used thus tie LOW.
-- FrmDlyRst			-- I -- IDELAY reset.
-- FrmDlyInc			-- I -- IDELAY increment/decrement, IDELAY is not used thus tie LOW.
------------------------------------------------------------------------------------------------
entity AdcFrm is
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
        FrmClk			: in std_logic;
        FrmClkDiv		: in std_logic;
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
        FrmClkSyncWarn	: out std_logic;
        FrmDlyCe		: in std_logic;
		FrmDlyRst		: in std_logic;
		FrmDlyInc		: in std_logic
    );
end AdcFrm;
------------------------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------------------------
architecture AdcFrm_struct of AdcFrm  is
------------------------------------------------------------------------------------------------
-- Component Instantiation
------------------------------------------------------------------------------------------------
-- Components are instantiated by means / through the use of library references.
------------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
------------------------------------------------------------------------------------------------
-- Functions
-- A string is converted to a std_logic_vector.
	function str_to_stdlvec(Inp: string) return std_logic_vector is
	variable Temp : std_logic_vector(Inp'range) := (others => 'X');
	begin 
		for i in Inp'range loop
			if (Inp(i) = '1') then
				Temp(i) := '1';
			elsif (Inp(i) = '0') then
				Temp(i) := '0'; 
			end if;
		end loop;
	return Temp;
	end function str_to_stdlvec;
--
-- A std_logic_vector is converted to a string.
	function stdlvec_to_str(inp: std_logic_vector) return string is
	variable temp: string(inp'left+1 downto 1) := (others => 'X');
	begin
		for i in inp'reverse_range loop
			if (inp(i) = '1') then
				temp(i+1) := '1';
			elsif (inp(i) = '0') then
				temp(i+1) := '0'; 
			end if;
		end loop;
	return temp;
	end function stdlvec_to_str;
--
-- In two wire mode a 12 bit ADC has 2 channels of 6 bits. The AdcBits stay at 12.
-- In two wire mode a 14 bit ADC has 2 channels of 8 bits. The AdcBits is set at 16.
-- In two wire mode a 16 bit ADC has 2 channels of 8 bits. The AdcBits stay at 16.
	function FrmBits (Bits : integer) return integer is
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
	end function FrmBits;
--
-- Word symmetry check
-- A word (16-bit) is checked for bit pair symmetry
-- Example: In one byte there are 16 possible symmetry positions.
-- 			00000000, 00000011, 00001100, 00001111,
-- 			00110000, 00110011, 00111100, 00111111,
-- 			11000000, 11000011, 11001100, 11001111,
-- 			11110000, 11110011, 11111100, 11111111,
-- Bit_7=Bit_6, Bit_5=Bit_4, Bit_3=Bit_2, and Bit_1=Bit_0
	function SymChck (Inp: std_logic_vector) return std_logic is
	variable Temp : std_logic_vector ((Inp'left-1)/2 downto 0) := (others => '0');
	variable Sym : std_logic := '0';
	begin
		for n in (Inp'left-1)/2 downto 0 loop
			Temp(n) := Inp((n*2)+1) xor Inp(n*2);
			Sym := Temp(n) or Sym;
		end loop;
		assert false
		report CR & " Pattern XORed/ORed = " & stdlvec_to_str(Temp)
		severity note;
	return Sym;
	end function SymChck;
--
-- When a symmetric byte, bit pattern is found, make the requested pattern rotate
-- by one bit to become a non-symmetric pattern.	
	function BitShft(Inp: std_logic_vector; Wire: integer) return std_logic_vector is
	variable Temp : std_logic_vector (Inp'range):= (others => '0');
	begin
-- Bit shift all bits.
-- Example: 16-bit frame word = 11111111_00000000 or 00000000_11110000
-- After shifting the word returned looks as: 11111110_00000001 and 00000000_01111000
		if (SymChck(Inp) = '0') then
			if (Wire = 0 ) then		-- 1-wire, shift 15-bits
				for n in Inp'left downto 0 loop
					if (n /= 0) then
						Temp(n) := Inp(n-1);
					elsif (n = 0) then
						Temp(Temp'right) := Inp(Inp'left);
					end if;
				end loop;
			else -- (Wire = 1)		-- 2-wire, shift 8-bits
				for n in (Inp'left-8) downto 0 loop
					if (n /= 0) then
						Temp(n) := Inp(n-1);
					elsif (n = 0) then
						Temp(Temp'right) := Inp(Inp'left-8);
					end if;
				end loop;
			end if;
		elsif (SymChck(Inp) = '1') then
		-- Don't do anything, return the word as it came in.
			Temp := Inp;
		end if;
		--
		assert false
		report	CR &
				" Pattern Shifted = " & stdlvec_to_str(Temp) & CR & 
				" Comparator Value A = " & stdlvec_to_str(Temp(15 downto 8)) & CR &
				" Comparator Value B = " & stdlvec_to_str(Temp(7 downto 0))
		severity note;
	return Temp;
	end function BitShft;
--
-- Bit swap operation: 
-- Bit n of the output string gets bit n-1 of the input. ex: out(7) <= In(6).
-- Bit n-1 of the output string gets bit n of the input. ex: out(6) <= In(7).
-- Bit n-2 of the output string gets bit n-3 of the input. ex: out(5) <= In(4).
-- Bit n-3 of the output string gets bit n-2 of the input. ex: out(4) <= In(5).
-- and etcetera....
-- This:		Bit_7, Bit_6, Bit_5, Bit_4, Bit_3, Bit_2, Bit_1, Bit_0.
-- Results in:	Bit_6, Bit_7, Bit-$, Bit_5, Bit_2, Bit_3, Bit_0, Bit_1.
	function BitSwap(Inp: std_logic_vector) return std_logic_vector is
	variable Temp : std_logic_vector (Inp'range);
	begin
		for n in (Inp'left-1)/2 downto 0 loop
			Temp((n*2)+1) := Inp(n*2);
			Temp(n*2) := Inp((n*2)+1);
		end loop;
		assert false
		report CR &
				" Pattern Bit Swapped = " & stdlvec_to_str(Temp) & CR &
				" Comparator Value C = " & stdlvec_to_str(Temp(15 downto 8)) & CR &
				" Comparator Value D = " & stdlvec_to_str(Temp(7 downto 0))				
		severity note;
	return Temp;
	end function BitSwap;
--
-- Constants
-- Transform the pattern STRING into a std_logic_vector.
constant IntPattern	:
		std_logic_vector(FrmBits(C_AdcBits)-1 downto 0)	:= str_to_stdlvec(C_FrmPattern);
-- Shift the pattern for one bit.
constant IntPatternBitShifted :
		std_logic_vector(FrmBits(C_AdcBits)-1 downto 0)	:= BitShft(IntPattern, C_AdcWireInt);
-- Bit swap the by one bit shifted pattern.
constant IntPatternBitSwapped :
		std_logic_vector(FrmBits(C_AdcBits)-1 downto 0)	:= BitSwap(IntPatternBitShifted);
-- Define the bytes for pattern comparison.
constant IntPatternA : std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0) :=
		IntPatternBitShifted(FrmBits(C_AdcBits)-1 downto FrmBits(C_AdcBits)/2);
constant IntPatternB : std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0) :=
		IntPatternBitShifted((FrmBits(C_AdcBits)/2)-1 downto 0);
constant IntPatternC : std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0) :=
		IntPatternBitSwapped(FrmBits(C_AdcBits)-1 downto FrmBits(C_AdcBits)/2);
constant IntPatternD : std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0) :=
		IntPatternBitSwapped((FrmBits(C_AdcBits)/2)-1 downto 0);
-- Calculate the data width for a ISERDES.		
constant IntIsrdsDataWidth : integer := FrmBits(C_AdcBits)/4;
constant Low : std_logic := '0';
constant High : std_logic := '1';
-- Signals
signal IntFrmClkToIsrds_p	: std_logic;
signal IntFrmClkToIsrds_n	: std_logic;
signal IntFrmClk			: std_logic;
signal IntFrmClk_n			: std_logic;
signal IntFrmSrdsOut		: std_logic_vector (7 downto 0);
signal IntFrmIdlyToBuf		: std_logic;
signal IntFrmClkToBufr		: std_logic;
--
signal IntFrmSrdsDat		: std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0);
signal IntFrmDat			: std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0);
signal IntFrmDatSwp			: std_logic_vector((FrmBits(C_AdcBits)/2)-1 downto 0);
signal IntFrmClkDat			: std_logic_vector(15 downto 0);
--
signal IntFrmEna			: std_logic;
signal IntFrmCmp			: std_logic_vector(3 downto 0);
signal IntFrmEqu_d			: std_logic;
signal IntFrmSwapMux_d		: std_logic;
signal IntFrmLsbMsb_d 		: std_logic;
signal IntFrmMsbAllZero_d 	: std_logic;
--
signal IntFrmRegEna_d		: std_logic;
signal IntFrmMsbRegEna_d	: std_logic;
signal IntFrmLsbRegEna_d	: std_logic;
--
signal IntFrmEvntCnt		: std_logic_vector (2 downto 0); -- count event counter
signal IntFrmEvntCntTc		: std_logic;
signal IntFrmEvntCntTc_d	: std_logic;
signal IntFrmSlipCnt		: std_logic_vector (3 downto 0); -- count to 8 (in 12-bit count 6)
signal IntFrmSlipCntTc		: std_logic;
signal IntFrmSlipCntTc_d	: std_logic;
signal IntFrmSlipCntTc_d_n  : std_logic;
signal IntFrmWarnCnt		: std_logic_vector (2 downto 0);
signal IntFrmWarnCntTc		: std_logic;
signal IntFrmWarnCntTc_d	: std_logic;
signal IntFrmRstShft		: std_logic_vector (4 downto 0);
signal IntFrmRstOut			: std_logic;
--
signal IntFrmBitSlip		: std_logic_vector (5 downto 0);
signal IntFrmEquSet_d		: std_Logic;
signal IntFrmClkDone		: std_logic;
-- Attributes
------------------------------------------------------------------------------------------------
--
begin
AdcFrm_Done_PROCESS : process (FrmClkDiv, IntFrmRstOut)
begin
	if (IntFrmRstOut = High) then
		IntFrmClkDone <= Low;
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		IntFrmClkDone <= FrmClkDone;
	end if;
end process;
--
IntFrmEna <= High when (IntFrmClkDone = High and FrmClkEna = High) else Low;
------------------------------------------------------------------------------------------------
-- ISERDES FOR FRAME CAPTURE
------------------------------------------------------------------------------------------------
-- Input Buffer for the Frame / word clock.
-- The on-chip termination must be specified in the UCF file.
AdcFrm_I_Ibufds : IBUFDS_DIFF_OUT
	generic map (IOSTANDARD	=> "LVDS_25")
	port map (I	=> FrmClk_p, IB	=> FrmClk_n, O	=> IntFrmClkToIsrds_p, OB	=> IntFrmClkToIsrds_n);
--
IntFrmClk <= FrmClk;
IntFrmClk_n <= not FrmClk;
--
AdcFrm_I_Isrds_p : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,	-- 12-bit = 3 and 14/16 b its = 4
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",				-- <-- NO IDELAY, same as data inputs
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntFrmClkToIsrds_p,
		DLYCE		=> FrmDlyCe,
		DLYINC		=> FrmDlyInc,
		DLYRST		=> FrmDlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> IntFrmRstOut,
		BITSLIP 	=> IntFrmBitSlip(0),
		CE1			=> IntFrmClkDone,
		CE2			=> Low,
		CLK			=> IntFrmClk,		-- Adjusted Bit Clock
		CLKDIV		=> FrmClkDiv,		-- Adjusted word clock
		SHIFTIN1 	=> Low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> IntFrmIdlyToBuf,	-- Frame clock output for DCM
		Q1 			=> IntFrmSrdsOut(6), --(0),	-- 0
		Q2 			=> IntFrmSrdsOut(4), --(2),	-- 2
		Q3 			=> IntFrmSrdsOut(2), --(4),	-- 4
		Q4 			=> IntFrmSrdsOut(0), --(6),	-- 6
		Q5 			=> open,
		Q6 			=> open
	);
AdcFrm_I_Isrds_n : ISERDES
	generic map (
		BITSLIP_ENABLE	=> TRUE,
		DATA_RATE		=> "SDR",
		DATA_WIDTH		=> IntIsrdsDataWidth,	-- 12-bit = 3 and 14/16 b its = 4,
		INTERFACE_TYPE	=> "NETWORKING",
		IOBDELAY		=> "NONE",
		IOBDELAY_TYPE	=> "FIXED",
		IOBDELAY_VALUE	=> 0,
		NUM_CE			=> 1,
		SERDES_MODE		=> "MASTER"
	)
	port map (
		D			=> IntFrmClkToIsrds_n,
		DLYCE		=> FrmDlyCe,
		DLYINC		=> FrmDlyInc,
		DLYRST		=> FrmDlyRst,
		OCLK		=> Low,
		REV			=> Low,
		SR			=> IntFrmRstOut,
		BITSLIP 	=> IntFrmBitSlip(1),
		CE1			=> IntFrmClkDone,
		CE2			=> Low,
		CLK			=> IntFrmClk_n,		-- Adjusted Bit Clock (inverted)
		CLKDIV		=> FrmClkDiv,		-- Adjusted Word Clock
		SHIFTIN1 	=> Low,
		SHIFTIN2 	=> Low,
		SHIFTOUT1 	=> open,
		SHIFTOUT2 	=> open,
		O 			=> open,
		Q1 			=> IntFrmSrdsOut(7), --(1),	-- 1
		Q2 			=> IntFrmSrdsOut(5), --(3),	-- 3
		Q3 			=> IntFrmSrdsOut(3), --(5),	-- 5
		Q4 			=> IntFrmSrdsOut(1), --(7),	-- 7
		Q5 			=> open,
		Q6 			=> open
	);
--
-------------------------------------------------------------------------------------------
-- INVERT THE NEEDED BITS.
-- For Virtex-5 this inversioncan take place in the IOB.
-------------------------------------------------------------------------------------------
AdcFrm_Gen_1 : if (FrmBits(C_AdcBits)/2) = 6 generate
	IntFrmSrdsDat <= not IntFrmSrdsOut(5) & IntFrmSrdsOut(4) &
						not IntFrmSrdsOut(3) & IntFrmSrdsOut(2) &
						not IntFrmSrdsOut(1) & IntFrmSrdsOut(0);
end generate;
AdcFrm_Gen_2 : if (FrmBits(C_AdcBits)/2) = 8 generate
	IntFrmSrdsDat <= not IntFrmSrdsOut(7) & IntFrmSrdsOut(6) &
						not IntFrmSrdsOut(5) & IntFrmSrdsOut(4) &
						not IntFrmSrdsOut(3) & IntFrmSrdsOut(2) &
						not IntFrmSrdsOut(1) & IntFrmSrdsOut(0);
end generate;
-------------------------------------------------------------------------------------------
-- DATA REGISTER
-------------------------------------------------------------------------------------------
AdcFrmDat_PROCESS : process (IntFrmRstOut, FrmClkDiv)
begin
	if (IntFrmRstOut = High) then
		IntFrmDat <= (others => Low);
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmEna = High) then
			IntFrmDat <= IntFrmSrdsDat;
		end if;
	end if;
end process;
-------------------------------------------------------------------------------------------
-- BIT SWAP MULTIPLEXER
-- Swap the bits in correct order when the pattern detected is bit swapped.
-------------------------------------------------------------------------------------------
AdcFrm_Gen_3 : for n in (FrmBits(C_AdcBits)/4)-1 downto 0 generate
	Swap_PROCESS : process (IntFrmRstOut, FrmClkDiv)
	begin
		if (IntFrmRstOut = High) then
			IntFrmDatSwp((n*2)+1) <= Low;
			IntFrmDatSwp(n*2) <= Low;
		elsif (FrmClkDiv'event and FrmClkDiv = '1') then
			if (IntFrmEna = High) then
				if (IntFrmSwapMux_d = Low) then
					IntFrmDatSwp((n*2)+1) <= IntFrmDat((n*2)+1);
					IntFrmDatSwp(n*2) <= IntFrmDat(n*2);
				else -- IntFrmSwapMux_d = High
					IntFrmDatSwp((n*2)+1) <= IntFrmDat(n*2);
					IntFrmDatSwp(n*2) <= IntFrmDat((n*2)+1);
				end if;
			end if;
		end if;
	end process;
end generate;
--
-------------------------------------------------------------------------------------------
-- FRAME OUTPUT REGISTERS
-------------------------------------------------------------------------------------------
AdcFrm_Gen_4 : if C_AdcBits = 12 generate
	AdcFrm_Reg_PROCESS : process (FrmClkDiv, IntFrmRstOut)
	begin
		if (IntFrmRstOut = High) then
			IntFrmClkDat <= (others => '0');
		elsif (FrmClkDiv'event and FrmClkDiv = '1') then
			if (IntFrmMsbRegEna_d = High) then
				IntFrmClkDat(15 downto 6) <= 	"0000" &
												IntFrmDatSwp(5) & IntFrmDatSwp(4) &
												IntFrmDatSwp(3) & IntFrmDatSwp(2) &
												IntFrmDatSwp(1) & IntFrmDatSwp(0);
			end if;
			if (IntFrmLsbRegEna_d = High) then
				IntFrmClkDat(5 downto 0) <= 	IntFrmDatSwp(5) & IntFrmDatSwp(4) &
												IntFrmDatSwp(3) & IntFrmDatSwp(2) &
												IntFrmDatSwp(1) & IntFrmDatSwp(0);
			end if;
		end if;
	end process;
end generate;
--
AdcFrm_Gen_5 : if C_AdcBits /= 12 generate
	AdcFrm_Reg_PROCESS : process (FrmClkDiv, IntFrmRstOut)
	begin
		if (IntFrmRstOut = High) then
			IntFrmClkDat <= (others => '0');
		elsif (FrmClkDiv'event and FrmClkDiv = '1') then
			if (IntFrmMsbRegEna_d = High) then
				IntFrmClkDat(15 downto 8) <= IntFrmDatSwp(7) & IntFrmDatSwp(6) &
												IntFrmDatSwp(5) & IntFrmDatSwp(4) &
												IntFrmDatSwp(3) & IntFrmDatSwp(2) &
												IntFrmDatSwp(1) & IntFrmDatSwp(0);
			end if;
			if (IntFrmLsbRegEna_d = High) then
				IntFrmClkDat(7 downto 0) <= IntFrmDatSwp(7) & IntFrmDatSwp(6) &
												IntFrmDatSwp(5) & IntFrmDatSwp(4) &
												IntFrmDatSwp(3) & IntFrmDatSwp(2) &
												IntFrmDatSwp(1) & IntFrmDatSwp(0);
			end if;
		end if;
	end process;
end generate;
FrmClkDat <= IntFrmClkDat;
--
-------------------------------------------------------------------------------------------
-- FRAME PATTERN COMPARATOR 
-------------------------------------------------------------------------------------------
IntFrmCmp(2 downto 0) <= "101" when (IntFrmSrdsDat = IntPatternA) else	-- Equ, 	, Msb
						 "100" when (IntFrmSrdsDat = IntPatternB) else	-- Equ, 	, Lsb
						 "111" when (IntFrmSrdsDat = IntPatternC) else	-- Equ, swpd, Msb
						 "110" when (IntFrmSrdsDat = IntPatternD) else	-- Equ, Swpd, Lsb
						 "000";
IntFrmCmp(3) <= High when (C_AdcWireInt = 1) else Low; -- Msb = all zero
--
-- When "Equ" goes high, one of the four patterns has been found.
-- The other two signals will reflect (Msb or Lsb, bitswapped or not) what pattern has been found.
-- WHen "Equ" thus goes high, store the status of all signals and make sure it can't be changed.
AdcFrm_CmpReg_PROCESS : process (FrmClkDiv, IntFrmRstOut)
begin                        
	if (IntFrmRstOut = High) then
		IntFrmMsbAllZero_d <= Low;
		IntFrmEqu_d <= Low;
		IntFrmSwapMux_d <= Low;
		IntFrmLsbMsb_d <= Low;
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmCmp(2) = High and IntFrmEqu_d = Low) then
			IntFrmMsbAllZero_d <= IntFrmCmp(3);
		end if;
		if (IntFrmCmp(2) = High and IntFrmEna = High) then
			IntFrmEqu_d <= High;
		end if;
		if (IntFrmCmp(2) = High and IntFrmEqu_d = Low) then
			IntFrmSwapMux_d <= IntFrmCmp(1);
		end if;
		if (IntFrmCmp(2) = High and IntFrmEqu_d = Low) then
			IntFrmLsbMsb_d <= IntFrmCmp(0);
		end if;
	end if;
end process;
--
FrmClkSwapMux <= IntFrmSwapMux_d;
--
-------------------------------------------------------------------------------------------
-- OUTPUT REGISTER ENABLER
-------------------------------------------------------------------------------------------
AdcFrm_EnaSel_PROCESS : process (FrmClkDiv, IntFrmMsbAllZero_d, IntFrmEqu_d)
subtype IntFrmRegEnaCase is std_logic_vector(4 downto 0);
begin
	if (IntFrmMsbAllZero_d = High) then
		IntFrmRegEna_d <= Low;
		IntFrmMsbRegEna_d <= High;
		IntFrmLsbRegEna_d <= High;
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		case IntFrmRegEnaCase'(IntFrmLsbMsb_d, IntFrmEqu_d, IntFrmRegEna_d,
									IntFrmMsbRegEna_d, IntFrmLsbRegEna_d) is
			when "00001" =>	IntFrmRegEna_d <= '0';
							IntFrmMsbRegEna_d <= '0'; -- A
							IntFrmLsbRegEna_d <= '1'; --
			when "01001" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '0'; -- B
							IntFrmLsbRegEna_d <= '1'; --
			when "01101" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '1'; -- C
							IntFrmLsbRegEna_d <= '0'; --
			when "01110" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '0'; -- D, goto C 
							IntFrmLsbRegEna_d <= '1'; --
			--
			when "11001" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '1'; -- E
							IntFrmLsbRegEna_d <= '0'; --
			when "11110" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '0'; -- F
							IntFrmLsbRegEna_d <= '1'; --
			when "11101" =>	IntFrmRegEna_d <= '1';
							IntFrmMsbRegEna_d <= '1'; -- G, goto F
							IntFrmLsbRegEna_d <= '0'; --
			--
			when others =>	IntFrmRegEna_d <= '0';
							IntFrmMsbRegEna_d <= '0';
							IntFrmLsbRegEna_d <= '1';
		end case;
	end if;
end process;
FrmClkMsbRegEna <= IntFrmMsbRegEna_d;
FrmClkLsbRegEna <= IntFrmLsbRegEna_d;
-------------------------------------------------------------------------------------------
-- SAMPLE EVENT COUNTER
-- Take a frame sample every 4 ClkDiv cycles.
-------------------------------------------------------------------------------------------
AdcFrm_EvntCnt_PROCESS : process (FrmClkDiv, IntFrmRstOut)
begin
	if (IntFrmRstOut = High) then
		IntFrmEvntCnt <= (others => '0');
		IntFrmEvntCntTc_d <= Low;
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmEquSet_d = Low and IntFrmEna = High) then
			IntFrmEvntCnt <= IntFrmEvntCnt + "01";
			IntFrmEvntCntTc_d <= IntFrmEvntCntTc;
		end if;
	end if;
end process;
IntFrmEvntCntTc <= High when (IntFrmEvntCnt = ((2**IntFrmEvntCnt'length)-2)) else Low;
-------------------------------------------------------------------------------------------
-- BITSLIP EVENT COUNTER
-- Bitslip 8 times for a 8-bit ISERDES and 6 times for a 6-bit ISERDES.
-------------------------------------------------------------------------------------------
AdcFrm_SlipCnt_PROCESS : process (FrmClkDiv, IntFrmRstOut)
begin
	if (IntFrmRstOut = High) then
		IntFrmSlipCnt <= (others => '0');
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmEvntCntTc_d = High) then
			IntFrmSlipCnt <= IntFrmSlipCnt + "01";
		end if;
		if (IntFrmEvntCntTc_d = High and IntFrmSlipCntTc = High) then
			IntFrmSlipCntTc_d <= High;
		else 
			IntFrmSlipCntTc_d <= Low;
		end if;
	end if;
end process;
--Terminal count points.
AdcFrm_SlipCntTc_12 : if (FrmBits(C_AdcBits) = 12) generate
	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "1011") else Low; -- 11 or X'B'
end generate;
AdcFrm_SlipCntTc_1_16 : if (FrmBits(C_AdcBits) = 16) generate
	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "1111") else Low; -- 15 or X'F'
end generate;
--AdcFrm_SlipCntTc_1_12 : if (C_AdcWireInt = 0 and FrmBits(C_AdcBits) = 12) generate
--	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "1011") else Low; -- 11 or X'B'
--end generate;
--AdcFrm_SlipCntTc_2_12 : if (C_AdcWireInt = 1 and FrmBits(C_AdcBits) = 12) generate
--	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "0101") else Low; -- 5
--end generate;
--AdcFrm_SlipCntTc_1_16 : if (C_AdcWireInt = 0 and FrmBits(C_AdcBits) = 16) generate
--	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "1111") else Low; -- 15 or X'F'
--end generate;
--AdcFrm_SlipCntTc_2_16 : if (C_AdcWireInt = 1 and FrmBits(C_AdcBits) = 16) generate
--	IntFrmSlipCntTc <= High when (IntFrmSlipCnt = "0111") else Low; -- 7
--end generate;
-------------------------------------------------------------------------------------------
-- WARNING EVENT COUNTER
-- Try to synchronize a couple of times, when it doesn't issue a warning for the application.
-------------------------------------------------------------------------------------------
AdcFrm_WarnCnt_PROCESS : process (FrmClkDiv, FrmClkRst)
begin
	if (FrmClkRst = High) then
		IntFrmWarnCnt <= (others => '0');
		IntFrmWarnCntTc_d <= Low;
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmSlipCntTc_d = High) then
			IntFrmWarnCnt <= IntFrmWarnCnt + "01";
			IntFrmWarnCntTc_d <= IntFrmWarnCntTc;
		end if;
	end if;
end process;
IntFrmWarnCntTc <= High when (IntFrmWarnCnt = "110") else Low;
FrmClkSyncWarn <= IntFrmWarnCntTc_d;
-------------------------------------------------------------------------------------------
-- INTERNAL RESET
-------------------------------------------------------------------------------------------
-- AdcFrm_RstShft : process (FrmClkDiv, FrmClkReSync)
-- begin
-- 	if (FrmClkReSync = High) then
-- 		IntFrmRstShft <= (others => '0');
-- 	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
-- 		if (IntFrmSlipCntTc_d = High) then
-- 			IntFrmRstShft(0) <= High;
-- 		elsif (IntFrmRstShft(1) = High) then
-- 			IntFrmRstShft(0) <= Low;
-- 		end if;
-- 		IntFrmRstShft(2) <= IntFrmRstShft(0);
-- 		IntFrmRstShft(3) <= IntFrmRstShft(2);
-- 		IntFrmRstShft(4) <= IntFrmRstShft(3);
-- 	end if;
-- end process;
--
AdcFrm_RstShft_I_Fdce_Ff0 : FDRSE
    generic map (INIT => '0')
    port map (D => IntFrmSlipCntTc_d, C => FrmClkDiv, R => IntFrmRstShft(1),
                S => FrmClkRst, CE => High, Q => IntFrmRstShft(0));
IntFrmSlipCntTc_d_n <= not IntFrmSlipCntTc_d;
AdcFrm_RstShft_I_Fdce_Ff1 : FDCE
    generic map (INIT => '0')
    port map (D => IntFrmRstShft(0), C => FrmClkDiv, CLR => IntFrmSlipCntTc_d_n, 
                CE => IntFrmRstShft(0), Q => IntFrmRstShft(1));
AdcFrm_RstShft_I_Fdce_Ff2 : FDCE
    generic map (INIT => '0')
    port map (D => IntFrmRstShft(0), C => FrmClkDiv, CLR => FrmClkReSync, 
                CE => high, Q => IntFrmRstShft(2));
AdcFrm_RstShft_I_Fdce_Ff3 : FDCE
    generic map (INIT => '0')
    port map (D => IntFrmRstShft(2), C => FrmClkDiv, CLR => FrmClkReSync, 
                CE => high, Q => IntFrmRstShft(3));
AdcFrm_RstShft_I_Fdce_Ff4 : FDCE
    generic map (INIT => '0')
    port map (D => IntFrmRstShft(3), C => FrmClkDiv, CLR => FrmClkReSync, 
                CE => high, Q => IntFrmRstShft(4));
--
IntFrmRstOut <= (IntFrmRstShft(3) or IntFrmRstShft(4)) or FrmClkReSync;
FrmClkRstOut <= IntFrmRstOut;
-------------------------------------------------------------------------------------------
-- BITSLIP STATE MACHINE.
-------------------------------------------------------------------------------------------
AdcFrm_Bitslip_PROCESS : process (IntFrmRstOut, FrmClkDiv)
subtype IntFrmBitSlipCase is std_logic_vector(5 downto 0);
begin
	if (IntFrmRstOut = High) then
		IntFrmBitSlip <= (others => '0');
	elsif (FrmClkDiv'event and FrmClkDiv = '1') then
		if (IntFrmEna = High and IntFrmEquSet_d = Low) then
			case IntFrmBitSlipCase'(IntFrmEqu_d, IntFrmEvntCntTc_d, IntFrmBitSlip(5),
									IntFrmBitSlip(4), IntFrmBitSlip(3), IntFrmBitSlip(2)) is
				when "000000" => IntFrmBitSlip <= "000000"; -- B 
				when "010000" => IntFrmBitSlip <= "000101"; -- C Slip_p
				when "000001" => IntFrmBitSlip <= "000100"; -- D
				when "010001" => IntFrmBitSlip <= "001010"; -- E Slip_n
				when "000010" => IntFrmBitSlip <= "001000"; -- F
				when "010010" => IntFrmBitSlip <= "000101"; -- G Slip_p and goto D
				--
				when "100000" => IntFrmBitSlip <= "000000"; -- H 
				when "110000" => IntFrmBitSlip <= "100101"; -- K Slip_p
				when "101001" => IntFrmBitSlip <= "110000"; -- L EquSet
				when "101100" => IntFrmBitSlip <= "110000"; -- M Halt
				--
				when "100001" => IntFrmBitSlip <= "000100"; -- N
				when "110001" => IntFrmBitSlip <= "101010"; -- P Slip_n
				when "101010" => IntFrmBitSlip <= "110000"; -- R EquSet goto M
				--
				when "100010" => IntFrmBitSlip <= "001000"; -- S
				when "110010" => IntFrmBitSlip <= "100101"; -- T Slip_p goto L
				--
				when others => IntFrmBitSlip <= "110000";
			end case;
		end if;
	end if;
end process;
--
FrmClkBitSlip_p <= IntFrmBitSlip(0);
FrmClkBitSlip_n <= IntFrmBitSlip(1);
IntFrmEquSet_d <= IntFrmBitSlip(4);
-------------------------------------------------------------------------------------------
-- REGIONAL CLOCK BUFFER (BUFR).
-- This BUFR can feed a DCM/PLL with the frame clock when the BUFR is located at the left
-- side of the 'die' and when the DCM/PLL is located in the region of the BUFR clock net.
-- The frame(word) clock can be used in the entire FPGA.
-------------------------------------------------------------------------------------------
Gen_Bufr_V4 : if (C_FAMILY = "VIRTEX4") generate
	AdcFrm_I_Bufio : BUFIO
		port map (
			I => IntFrmIdlyToBuf,
			O => IntFrmClkToBufr
		);
	AdcFrm_I_Bufr : BUFR
		generic map (
			BUFR_DIVIDE => "BYPASS",
			SIM_DEVICE => "VIRTEX4")
		port map  (
			I 	=> IntFrmClkToBufr,	-- ISERDES.CLK
			CE	=> Low,
			CLR => Low,
			O	=> FrmClkOut		-- ISERDES.CLKDIV / Logic.CLK / word clock
		);
end generate;
--
Gen_Bufr_V5 : if (C_FAMILY = "VIRTEX5") generate
	AdcFrm_I_Bufr : BUFR
		generic map (
			BUFR_DIVIDE => "BYPASS",
			SIM_DEVICE => "VIRTEX5")
		port map  (
			I 	=> IntFrmIdlyToBuf,
			CE	=> Low,
			CLR => Low,
			O	=> FrmClkOut		-- ISERDES.CLKDIV / Logic.CLK / word clock
		);
end generate;
--
-------------------------------------------------------------------------------------------
end  AdcFrm_struct;