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
--  \   \        Filename:  AdcDataMultiChnl.vhd
--  /   /        Date Last Modified: Oct 2010
-- /___/   /\    Date Created:       19/05/06
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:      Virtex-5
-- Author:      Marc Defossez
-- Entity Name: AdcDataMultiChnl
-- Purpose:     Four channel version of the data capturing for a Texas Instruments ADC
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
	use UNISIM.VCOMPONENTS.all;
library AdcData_V5;
	use AdcData_V5.AdcDataChnl;
------------------------------------------------------------------------------------------------
-- Entity pin description
------------------------------------------------------------------------------------------------
--		GENERICS
-- C_FAMILY				-- Can be "virtex4" or "virtex5"
-- C_AdcChnls			-- Can be 1 or 4
-- C_AdcBits			-- Can be 12, 14, or 16
-- C_AdcWireInt			-- Can be 0 or 1. 0 = 1-wire.
-- C_AdcBytOrBitMode	-- 0 = BYTE mode, 1 = BIT mode
-- C_AdcMsbOrLsbFst		-- 1 = LSB first, 0 = MSB first
-- C_OnChipLvdsTerm		-- 1 = termination, 0 = no termination
--		PORTS
-- DA0_n				-- Data inputs from the ADC
-- DA0_p				-- These inputs are coming from a higher level in th hierarchy.
-- DA1_n				-- 
-- DA1_p				-- 
-- DB0_n				-- 
-- DB0_p				-- 
-- DB1_n				-- 
-- DB1_p				-- 
-- DC0_n				-- 
-- DC0_p				-- 
-- DC1_n				-- 
-- DC1_p				-- 
-- DD0_n				-- 
-- DD0_p				-- 
-- DD1_n				-- 
-- DD1_p				-- 
-- DatBitSlip			-- Input from the FRAME part of the design.
-- DatClk				-- Fast data clock
-- DatClkDiv			-- Slow data clock
-- DatRstIn				-- Interface Reset generated in the frame module
-- DatEna			-- Interface enable for the four input blocks
-- AdcDatOut			-- Output of the BRAMs into the system.
------------------------------------------------------------------------------------------------
entity AdcDataMultiChnl is
	generic (
		C_Family			: string;
		C_AdcChnls			: integer;
		C_AdcBits			: integer;
		C_AdcWireInt		: integer;
		C_AdcBytOrBitMode	: integer;
		C_AdcMsbOrLsbFst	: integer;
		C_OnChipLvdsTerm	: integer
		);
    port (
        DA0_n			: in std_logic;
        DA0_p			: in std_logic;
        DA1_n			: in std_logic;
        DA1_p			: in std_logic;
        DB0_n			: in std_logic;
        DB0_p			: in std_logic;
        DB1_n			: in std_logic;
        DB1_p			: in std_logic;
        DC0_n			: in std_logic;
        DC0_p			: in std_logic;
        DC1_n			: in std_logic;
        DC1_p			: in std_logic;
        DD0_n			: in std_logic;
        DD0_p			: in std_logic;
        DD1_n			: in std_logic;
        DD1_p			: in std_logic;
		AdcDatClk			: in std_logic;
		AdcDatClkDiv		: in std_logic;
		AdcDatRstIn			: in std_logic;
		AdcDatEna			: in std_logic_vector((((C_AdcWireInt+1)*C_AdcChnls)/2)-1 downto 0);
		AdcDatDone			: in std_logic;
		AdcDatBitSlip_p		: in std_logic;
        AdcDatBitSlip_n		: in std_logic;
        AdcDatSwapMux		: in std_logic;
        AdcDatMsbRegEna		: in std_logic;
        AdcDatLsbRegEna		: in std_logic;
		AdcDatOut			: out std_logic_vector((16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0)
    );
end  AdcDataMultiChnl;

------------------------------------------------------------------------------------------------
-- Arcitecture section
------------------------------------------------------------------------------------------------
architecture AdcDataMultiChnl_struct of AdcDataMultiChnl  is
------------------------------------------------------------------------------------------------
-- Component Instantiation
------------------------------------------------------------------------------------------------
-- Components are instantiated by means / through the use of library refernces.
------------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
------------------------------------------------------------------------------------------------
-- Functions
	function InDatChnls (Chnls, Wire : integer) return integer is
	variable Temp : integer;
	begin
		if (Chnls = 2 and Wire = 1) then		-- 2 chnls, 2-wire
			Temp := 1;
		elsif (Chnls = 2 and Wire = 0) then		-- 2 chnls, 1-wire
			Temp := 0;
		elsif (Chnls = 4 and Wire = 1) then		-- 4 chnls, 2-wire
			Temp := 3;
		elsif (Chnls = 4 and Wire = 0) then		-- 4 chnls, 1-wire
			Temp := 1;
		elsif (Chnls = 8 and Wire = 0) then		-- 8 chnls, 1-wire
			Temp := 3;
		elsif (Chnls = 8 and Wire = 1) then		-- 8 chnls, 2-wire
			Temp := 7;
		end if;
	return Temp;
	end function InDatChnls;
-- Constants
constant LowByte : std_logic_vector ((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0) := (others => '0');
-- Signals
signal IntDatDlyCe	: std_logic_vector ((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0);
signal IntDatDlyRst : std_logic_vector ((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0);
signal IntDatDlyInc : std_logic_vector ((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0);

signal IntDat0_n	: std_logic_vector (InDatChnls(C_AdcChnls, C_AdcWireInt) downto 0);
signal IntDat0_p	: std_logic_vector (InDatChnls(C_AdcChnls, C_AdcWireInt) downto 0);
signal IntDat1_n	: std_logic_vector (InDatChnls(C_AdcChnls, C_AdcWireInt) downto 0);
signal IntDat1_p	: std_logic_vector (InDatChnls(C_AdcChnls, C_AdcWireInt) downto 0);

-- Attributes
------------------------------------------------------------------------------------------------
--
begin
--
-- In 1-wire mode:
-- There is one differential input per ADC channel and the output of the interface is 32 bit.
-- The basic interface takes two differential inputs, thus in 1-wire mode one basic interface
-- serves two ADC channels and the output of the interface is 2 times 16-bit or 32 bit.
-- In 2-wire mode:
-- There are two differential inputs per ADC channel and the output of the interface is 16 bit.
-- The basic interface takes two differential inputs, thus in 2-wire mode one basic interface 
-- serves one ADC channel and the output of the interface is 16-bit.
--
	-- 2 Channel
	-- 2-wire		chnl_2  chnl_1
	-- IntDat0_p <=	DB0_p & DA0_p;	-- It is possible that the naming of the inputs
	-- IntDat0_n <=	DB0_n & DA0_n;	-- is different. like for the 4 channel 2-wire and 1-wire
	-- IntDat1_p <=	DB1_p & DA1_p;
	-- IntDat1_n <=	DB1_n & DA1_n;
    --
Gen_2ch_2w : if C_AdcWireInt = 1 and C_AdcChnls = 2 generate  -- Added by Boots
    -- 2 Channel
    -- 2-wire   chnl_2  chnl_1
    IntDat0_p <=    DB0_p & DA0_p;
    IntDat0_n <=    DB0_n & DA0_n;
    IntDat1_p <=    DB1_p & DA1_p;
    IntDat1_n <=    DB1_n & DA1_n;
end generate;
--
--Gen_2ch_1w : if C_AdcWireInt = 1 and C_AdcChnls = 2 generate
--	-- 2 Channel
--	-- 1-wire		chnl_1
--	--				chnl_2
--	IntDat0_p <=	DA0_p;
--	IntDat0_n <=	DA0_n;
--	IntDat1_p <=	DA1_p;
--	IntDat1_n <=	DA1_n;
--
--
Gen_4ch_2w : if C_AdcWireInt = 1 and C_AdcChnls = 4 generate
	-- 4 Channel
	-- 2-wire		chnl_4  chnl_3  chnl_2  chnl_1
	IntDat0_p <=	DD0_p & DC0_p & DB0_p & DA0_p;
	IntDat0_n <=	DD0_n & DC0_n & DB0_n & DA0_n;
	IntDat1_p <=	DD1_p & DC1_p & DB1_p & DA1_p;
	IntDat1_n <=	DD1_n & DC1_n & DB1_n & DA1_n;
end generate;
--
	-- 8 channel
	-- 2-wire		chnl_8  chnl_7  chnl_6  chnl_5  chnl_4  chnl_3  chnl_2  chnl_1
	-- IntDat0_p <=	DD0_p & DC0_p & DB0_p & DA0_p & DD0_p & DC0_p & DB0_p & DA0_p;
	-- IntDat0_n <=	DD0_n & DC0_n & DB0_n & DA0_n & DD0_n & DC0_n & DB0_n & DA0_n;
	-- IntDat1_p <=	DD1_p & DC1_p & DB1_p & DA1_p & DD1_p & DC1_p & DB1_p & DA1_p;
	-- IntDat1_n <=	DD1_n & DC1_n & DB1_n & DA1_n & DD1_n & DC1_n & DB1_n & DA1_n;
--
Gen_4ch_1w : if C_AdcWireInt = 0 and C_AdcChnls = 4 generate
	-- 4 Channel
	-- 1-wire		chnl_3  chnl_1
	--				chnl_4  chnl_2
	IntDat0_p <=	DC0_p & DB0_p;	-- DC_p, DA_p
	IntDat0_n <=	DC0_n & DB0_n;	-- DC_n, DA_n
	IntDat1_p <=	DC1_p & DB1_p;	-- DD_p, DB_p
	IntDat1_n <=	DC1_n & DB1_n;	-- DD_n, DB_n
end generate;
--
Gen_8ch_1w : if C_AdcWireInt = 0 and C_AdcChnls = 8 generate
	-- 8 channel
	-- 1-wire		chnl_7  chnl_5  chnl_3  chnl_1
	--				chnl_8  chnl_6  chnl_4  chnl_2
	IntDat0_p <=	DD0_p & DC0_p & DB0_p & DA0_p;	--	DG_p, DE_p, DC_p, DA_p
	IntDat0_n <=	DD0_n & DC0_n & DB0_n & DA0_n;	--	DG_n, DE_n, DC_n, DA_n
	IntDat1_p <=	DD1_p & DC1_p & DB1_p & DA1_p;	--	DH_p, DF_p, DD_p, DB_p
	IntDat1_n <=	DD1_n & DC1_n & DB1_n & DA1_n;	--	DH_n, DF_n, DD_n, DB_n
end generate;
------------------------------------------------------------------------------------------------
-- Data input channels in ISERDES
------------------------------------------------------------------------------------------------
Gen_1 : for n in (((C_AdcWireInt+1)*C_AdcChnls)/2)-1 downto 0 generate
	AdcDataMultiChnl_I_AdcDataChnl : entity AdcDataChnl
	generic map (
		C_AdcBits			=> C_AdcBits,
		C_AdcBytOrBitMode	=> C_AdcBytOrBitMode,
		C_AdcMsbOrLsbFst	=> C_AdcMsbOrLsbFst,
		C_AdcWireInt		=> C_AdcWireInt,
		C_OnChipLvdsTerm	=> C_OnChipLvdsTerm
		)
    port map (
        DatD0_n		=> IntDat0_n(n),
		DatD0_p		=> IntDat0_p(n),
		DatD1_n		=> IntDat1_n(n),
		DatD1_p		=> IntDat1_p(n),
		DatClk		=>	AdcDatClk,
		DatClkDiv	=> 	AdcDatClkDiv,
		DatRstIn	=>	AdcDatRstIn,
		DatEna		=>	AdcDatEna(n),
		DatDone		=>	AdcDatDone,
		DatBitSlip_p 	=> AdcDatBitSlip_p,
        DatBitSlip_n 	=> AdcDatBitSlip_n,
        DatSwapMux		=> AdcDatSwapMux,
        DatMsbRegEna	=> AdcDatMsbRegEna,
        DatLsbRegEna	=> AdcDatLsbRegEna,
		DatOut			=> AdcDatOut((32*(n+1))-1 downto (32*(n+1))-32),	
		--
		Dat0DlyCe	=> IntDatDlyCe((n*2)+1),
		Dat0DlyRst	=> IntDatDlyRst((n*2)+1),
		Dat0DlyInc	=> IntDatDlyInc((n*2)+1),
		Dat1DlyCe	=> IntDatDlyCe (n*2),
		Dat1DlyRst	=> IntDatDlyRst(n*2),
		Dat1DlyInc	=> IntDatDlyInc(n*2)
    );
end generate;
--
------------------------------------------------------------------------------------------------
-- IDELAY control bits.
-- No IDELAY is used for the DATA channels, thus ....
------------------------------------------------------------------------------------------------
IntDatDlyCe  <= LowByte((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0);
IntDatDlyInc <= LowByte((C_AdcChnls*(C_AdcWireInt+1))-1 downto 0);
Gen_Rst : for n in (C_AdcChnls*(C_AdcWireInt+1))-1 downto 0 generate
	IntDatDlyRst(n) <= AdcDatRstIn;
end generate;
--
------------------------------------------------------------------------------------------------
end  AdcDataMultiChnl_struct;
