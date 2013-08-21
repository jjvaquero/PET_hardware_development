------------------------------------------------------------------------------------------------
-- © Copyright 2008-2010, Xilinx, Inc. All rights reserved.
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
--  \   \        Filename: AdcMem.vhd
--  /   /        Date Last Modified: Oct 2010
-- /___/   /\    Date Created:       04 Apr 08 
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:      Virtex-5
-- Author:      Marc Defossez
-- Entity Name: AdcMem
-- Purpose:     Clock crossing data buffer made from distributed memory.
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
library UNISIM;
	use UNISIM.vcomponents.all;
library Common_V5;
	use Common_V5.all;
------------------------------------------------------------------------------------------------
-- Entity pin description
------------------------------------------------------------------------------------------------
--
------------------------------------------------------------------------------------------------
entity AdcMem is
	generic (
		C_Family		: string;
		C_AdcBits		: integer;
		C_AdcChnls		: integer;
		C_AdcWireInt 	: integer;
		C_AdcMemDepth 	: integer	 -- Hidden option only for Virtex4, save room
	);
    port (
        ClkIn	: in std_logic;		-- ADC clock
        EnaIn	: in std_logic;
        RstIn	: in std_logic;
        DatIn	: in std_logic_vector((16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0);
        ClkOut	: in std_logic;		-- Application clock
        RstOut	: in std_logic;
        EnaOut	: in std_logic;
        DatOut	: out std_logic_vector((16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0);
        Flags	: out std_logic_vector(3 downto 0)
    );
end AdcMem;
------------------------------------------------------------------------------------------------
-- Arcitecture section
------------------------------------------------------------------------------------------------
architecture AdcMem_struct of AdcMem  is
------------------------------------------------------------------------------------------------
-- Component Instantiation
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
------------------------------------------------------------------------------------------------
-- Functions
-- Constants
constant Low  : std_logic	:= '0';
constant High : std_logic	:= '1';
-- Signals
signal IntRamToFf		: std_logic_vector((16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0);
signal IntAddr			: std_logic_vector(5 downto 0);
signal IntDpra			: std_logic_vector(5 downto 0);
signal IntFlags			: std_logic_vector(3 downto 0);
signal IntFlagEna 		: std_logic;
-- Attributes
attribute RLOC : string;
------------------------------------------------------------------------------------------------
--
begin
--
-------------------------------------------------------------------------------------------------
-- VIRTEX-4
-------------------------------------------------------------------------------------------------
GenMemV4R : if (C_Family = "VIRTEX4" and C_AdcMemDepth /= 16) generate
--
	GenMem : for n in (16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0 generate
		AdcMem_I_Ram32x1d_V4 : entity Common_V5.Ram32x1d_V4
		-- 2XRAM16x1D + FF
		-- 2 slices used for the 2 Dual port RAMs.
			generic map ( INIT => X"00000000")
		    port map (
				D		=> DatIn(n),	-- in
				A0		=> IntAddr(0),	-- in
				A1		=> IntAddr(1),	-- in
				A2		=> IntAddr(2),	-- in
				A3		=> IntAddr(3),	-- in
				A4		=> IntAddr(4),	-- in
				WCLK 	=> ClkIn,		-- in
				DPRA0	=> IntDpra(0),	-- in
				DPRA1	=> IntDpra(1),	-- in
				DPRA2	=> IntDpra(2),	-- in
				DPRA3	=> IntDpra(3),	-- in
				DPRA4	=> IntDpra(4),	-- in
				RCLK	=> ClkOut,		-- in : read clock
				RCE		=> EnaOut, 		-- in : Read Enable
				RCLR	=> RstOut, 		-- in : Read clear / reset
				DPO_FF	=> DatOut(n)-- out
	    	);
	end generate;	    	
-------------------------------------------------------------------------------------------------
-- READ and WRITE ADDRESS COUNTERS
-- The address counters are running all the time.
-- For this application (Virtex-4) the counters are used in a 5-bit mode (4 downto 0).
-- For a Virtex-5 implementation where a RAM61X1D is used make the counter one bit larger.
--		This is remover the (4 downto 0) and the counter will be 6-bit wide.
-- When the write counter is between 1/4 and 3/4 then the read counter is enabled.
--		here also, for a Virtex-5 implementation replaec bits 4 and 3 by bits 5 and 4.
-------------------------------------------------------------------------------------------------
-- Write counter
	AdcMem_AddrCnt_PROCESS : process (ClkIn, EnaIn, RstIn)
	begin
		if (RstIn = '1') then
			IntAddr <= (others => '0');
		elsif (ClkIn'event and ClkIn = '1') then
			if (EnaIn = '1') then
				case IntAddr(2 downto 0) is
					when "000" => IntAddr(2 downto 0) <= "001";
					when "001" => IntAddr(2 downto 0) <= "011";
					when "011" => IntAddr(2 downto 0) <= "010";
					when "010" => IntAddr(2 downto 0) <= "110";
					when "110" => IntAddr(2 downto 0) <= "111";
					when "111" => IntAddr(2 downto 0) <= "101";
					when "101" => IntAddr(2 downto 0) <= "100";
					-- when "100" => IntAddr(2 downto 0) <= "000";
					when others => IntAddr(2 downto 0) <= "000";
				end case;
			end if;
				if (IntAddr(2 downto 0) = "100") then
					case IntAddr(4 downto 3) is
						when "00" => IntAddr(4 downto 3) <= "01";
						when "01" => IntAddr(4 downto 3) <= "11";
						when "11" => IntAddr(4 downto 3) <= "10";
						-- when "10" => IntAddr(4 downto 3) <= "00";
						when others => IntAddr(4 downto 3) <= "00";
					end case;
				end if;
		end if;
	end process;
	-- Read counter
	AdcMem_DpraCnt_PROCESS : process (Clkout, EnaOut, RstOut)
	begin
		if (RstOut = '1') then
			IntDpra <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
			if (EnaOut = '1' and IntFlagEna = '1') then
				case IntDpra(2 downto 0) is
					when "000" => IntDpra(2 downto 0) <= "001";
					when "001" => IntDpra(2 downto 0) <= "011";
					when "011" => IntDpra(2 downto 0) <= "010";
					when "010" => IntDpra(2 downto 0) <= "110";
					when "110" => IntDpra(2 downto 0) <= "111";
					when "111" => IntDpra(2 downto 0) <= "101";
					when "101" => IntDpra(2 downto 0) <= "100";
					-- when "100" => IntDpra(2 downto 0) <= "000";
					when others => IntDpra(2 downto 0) <= "000";
				end case;
			end if;
				if (IntDpra(2 downto 0) = "100") then
					case IntDpra(4 downto 3) is
						when "00" => IntDpra(4 downto 3) <= "01";
						when "01" => IntDpra(4 downto 3) <= "11";
						when "11" => IntDpra(4 downto 3) <= "10";
						-- when "10" => IntDpra(4 downto 3) <= "00";
						when others => IntDpra(4 downto 3) <= "00";
					end case;
				end if;
		end if;
	end process;
-------------------------------------------------------------------------------------------------
-- Flags.
-- Four flags are decoded
--		memory is filled between empty and 1/4 = IntFlag(0) -- Empty
--		memory is filled between 1/4 and 1/2 = IntFlag(1) -- Low Half
--		memory is filled between 1/2 and 3/4 = IntFlag(0) -- High Half
--		memory is filled between 3/4 and Full = IntFlag(0) -- Full
-- The flags are registered at the read or application clock for signalling to the application
-- Interface. One flag is used as auto-enbable of the read counter.
-- This flag can be any flag, but here is chosen to register the Low and High flags
-- so that a natural spread and fill of the memory occurs.
-------------------------------------------------------------------------------------------------
-- Full
	IntFlags(3) <=	'1' when IntDpra(4 downto 3) = "00" and IntAddr(4 downto 3) = "10" else
					'1' when IntDpra(4 downto 3) = "01" and IntAddr(4 downto 3) = "00" else
					'1' when IntDpra(4 downto 3) = "11" and IntAddr(4 downto 3) = "01" else
					'1' when IntDpra(4 downto 3) = "10" and IntAddr(4 downto 3) = "11" else
					'0';
-- High Half
	IntFlags(2) <=	'1' when IntDpra(4 downto 3) = "00" and IntAddr(4 downto 3) = "11" else
					'1' when IntDpra(4 downto 3) = "01" and IntAddr(4 downto 3) = "10" else
					'1' when IntDpra(4 downto 3) = "11" and IntAddr(4 downto 3) = "00" else
					'1' when IntDpra(4 downto 3) = "10" and IntAddr(4 downto 3) = "01" else
					'0';
-- Low half
	IntFlags(1) <=	'1' when IntDpra(4 downto 3) = "00" and IntAddr(4 downto 3) = "01" else
					'1' when IntDpra(4 downto 3) = "01" and IntAddr(4 downto 3) = "11" else
					'1' when IntDpra(4 downto 3) = "11" and IntAddr(4 downto 3) = "10" else
					'1' when IntDpra(4 downto 3) = "10" and IntAddr(4 downto 3) = "00" else
					'0';
-- Empty
	IntFlags(0) <=	'1' when IntDpra(4 downto 3) = "00" and IntAddr(4 downto 3) = "00" else
					'1' when IntDpra(4 downto 3) = "01" and IntAddr(4 downto 3) = "01" else
					'1' when IntDpra(4 downto 3) = "11" and IntAddr(4 downto 3) = "11" else
					'1' when IntDpra(4 downto 3) = "10" and IntAddr(4 downto 3) = "10" else
					'0';
-- Flag registering.
	AdcMem_Flags_PROCESS : process (ClkOut, RstOut)
	begin
		if (RstOut = '1') then
			IntFlagEna <= '0';
			Flags <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
			Flags <= IntFlags;
			IntFlagEna <= IntFlags(2) or IntFlags(1);
		end if;
	end process;
--
end generate;
--
-------------------------------------------------------------------------------------------------
-- VIRTEX-5
-------------------------------------------------------------------------------------------------
GenMemV5 : if (C_Family = "VIRTEX5") generate
--
	GenMem : for n in (16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0 generate
		AdcMem_V5_I_Ram64x1d : RAM64X1D
	 		generic	map (INIT => X"0000000000000000")
		 	port map (
		 		D		=> DatIn(n),	-- in
	 			A0		=> IntAddr(0),	-- in
	 			A1		=> IntAddr(1),	-- in
		 		A2		=> IntAddr(2),	-- in
		 		A3		=> IntAddr(3),	-- in
	 			A4		=> IntAddr(4),	-- in
	 			A5		=> IntAddr(5),	-- in
		 		WE		=> High,		-- in
		 		WCLK	=> ClkIn,		-- in
	 			DPRA0	=> IntDpra(0),	-- in
	 			DPRA1	=> IntDpra(1),	-- in
		 		DPRA2	=> IntDpra(2),	-- in
		 		DPRA3	=> IntDpra(3),	-- in
	 			DPRA4	=> IntDpra(4),	-- in
	 			DPRA5	=> IntDpra(5),	-- in
		 		DPO		=> IntRamToFf(n),-- out
		 		SPO		=> open	-- out
	 		);
		AdcMem_I_Fdce : FDCE
			generic map (INIT => '0')
			port map (D => IntRamToFf(n), C => ClkOut, CE => EnaOut, CLR => RstOut,	Q => DatOut(n));
	end generate;
-------------------------------------------------------------------------------------------------
-- READ and WRITE ADDRESS COUNTERS
-- The address counters are running all the time.
-- For this application (Virtex-4) the counters are used in a 5-bit mode (4 downto 0).
-- For a Virtex-5 implementation where a RAM61X1D is used make the counter one bit larger.
--		This is remover the (4 downto 0) and the counter will be 6-bit wide.
-- When the write counter is between 1/4 and 3/4 then the read counter is enabled.
--		here also, for a Virtex-5 implementation replaec bits 4 and 3 by bits 5 and 4.
-------------------------------------------------------------------------------------------------
-- Write counter
	AdcMem_AddrCnt_PROCESS : process (ClkIn, EnaIn, RstIn)
	begin
		if (RstIn = '1') then
			IntAddr <= (others => '0');
		elsif (ClkIn'event and ClkIn = '1') then
			if (EnaIn = '1') then
				case IntAddr(3 downto 0) is
					when "0000" => IntAddr(3 downto 0) <= "0001";
					when "0001" => IntAddr(3 downto 0) <= "0011";
					when "0011" => IntAddr(3 downto 0) <= "0010";
					when "0010" => IntAddr(3 downto 0) <= "0110";
					when "0110" => IntAddr(3 downto 0) <= "0111";
					when "0111" => IntAddr(3 downto 0) <= "0101";
					when "0101" => IntAddr(3 downto 0) <= "1101";
					when "1101" => IntAddr(3 downto 0) <= "1111";
					when "1111" => IntAddr(3 downto 0) <= "1110";
					when "1110" => IntAddr(3 downto 0) <= "1010";
					when "1010" => IntAddr(3 downto 0) <= "1011";
					when "1011" => IntAddr(3 downto 0) <= "1001";
					when "1001" => IntAddr(3 downto 0) <= "1000";
					-- when "1000" => IntAddr(3 downto 0) <= "0000";
					when others => IntAddr(3 downto 0) <= "0000";
				end case;
			end if;
--				if (IntAddr(2 downto 0) = "1000") then -- Bad Xilinx
				if (IntAddr(3 downto 0) = "1000") then
					case IntAddr(5 downto 4) is
						when "00" => IntAddr(5 downto 4) <= "01";
						when "01" => IntAddr(5 downto 4) <= "11";
						when "11" => IntAddr(5 downto 4) <= "10";
						-- when "10" => IntAddr(5 downto 4) <= "00";
						when others => IntAddr(5 downto 4) <= "00";
					end case;
				end if;
		end if;
	end process;
-- Read counter
	AdcMem_DpraCnt_PROCESS : process (Clkout, EnaOut, RstOut)
	begin
		if (RstOut = '1') then
			IntDpra <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
			if (EnaOut = '1' and IntFlagEna = '1') then
				case IntDpra(3 downto 0) is
					when "0000" => IntDpra(3 downto 0) <= "0001";
					when "0001" => IntDpra(3 downto 0) <= "0011";
					when "0011" => IntDpra(3 downto 0) <= "0010";
					when "0010" => IntDpra(3 downto 0) <= "0110";
					when "0110" => IntDpra(3 downto 0) <= "0111";
					when "0111" => IntDpra(3 downto 0) <= "0101";
					when "0101" => IntDpra(3 downto 0) <= "1101";
					when "1101" => IntDpra(3 downto 0) <= "1111";
					when "1111" => IntDpra(3 downto 0) <= "1110";
					when "1110" => IntDpra(3 downto 0) <= "1010";
					when "1010" => IntDpra(3 downto 0) <= "1011";
					when "1011" => IntDpra(3 downto 0) <= "1001";
					when "1001" => IntDpra(3 downto 0) <= "1000";
					-- when "1000" => IntDpra(3 downto 0) <= "0000";
					when others => IntDpra(3 downto 0) <= "0000";
				end case;
			end if;
--				if (IntDpra(2 downto 0) = "1000") then -- Bad Xilinx
				if (IntDpra(3 downto 0) = "1000") then
					case IntDpra(5 downto 4) is
						when "00" => IntDpra(5 downto 4) <= "01";
						when "01" => IntDpra(5 downto 4) <= "11";
						when "11" => IntDpra(5 downto 4) <= "10";
						-- when "10" => IntDpra(5 downto 4) <= "00";
						when others => IntDpra(5 downto 4) <= "00";
					end case;
				end if;
		end if;
	end process;
-------------------------------------------------------------------------------------------------
-- Flags.
-- Four flags are decoded
--		memory is filled between empty and 1/4 = IntFlag(0) -- Empty
--		memory is filled between 1/4 and 1/2 = IntFlag(1) -- Low Half
--		memory is filled between 1/2 and 3/4 = IntFlag(0) -- High Half
--		memory is filled between 3/4 and Full = IntFlag(0) -- Full
-- The flags are registered at the read or application clock for signalling to the application
-- Interface. One flag is used as auto-enbable of the read counter.
-- This flag can be any flag, but here is chosen to register the Low and High flags
-- so that a natural spread and fill of the memory occurs.
-------------------------------------------------------------------------------------------------
-- Full
	IntFlags(3) <=	'1' when IntDpra(5 downto 4) = "00" and IntAddr(5 downto 4) = "10" else
					'1' when IntDpra(5 downto 4) = "01" and IntAddr(5 downto 4) = "00" else
					'1' when IntDpra(5 downto 4) = "11" and IntAddr(5 downto 4) = "01" else
					'1' when IntDpra(5 downto 4) = "10" and IntAddr(5 downto 4) = "11" else
					'0';
-- High Half
	IntFlags(2) <=	'1' when IntDpra(5 downto 4) = "00" and IntAddr(5 downto 4) = "11" else
					'1' when IntDpra(5 downto 4) = "01" and IntAddr(5 downto 4) = "10" else
					'1' when IntDpra(5 downto 4) = "11" and IntAddr(5 downto 4) = "00" else
					'1' when IntDpra(5 downto 4) = "10" and IntAddr(5 downto 4) = "01" else
					'0';
-- Low half
	IntFlags(1) <=	'1' when IntDpra(5 downto 4) = "00" and IntAddr(5 downto 4) = "01" else
					'1' when IntDpra(5 downto 4) = "01" and IntAddr(5 downto 4) = "11" else
					'1' when IntDpra(5 downto 4) = "11" and IntAddr(5 downto 4) = "10" else
					'1' when IntDpra(5 downto 4) = "10" and IntAddr(5 downto 4) = "00" else
					'0';
-- Empty
	IntFlags(0) <=	'1' when IntDpra(5 downto 4) = "00" and IntAddr(5 downto 4) = "00" else
					'1' when IntDpra(5 downto 4) = "01" and IntAddr(5 downto 4) = "01" else
					'1' when IntDpra(5 downto 4) = "11" and IntAddr(5 downto 4) = "11" else
					'1' when IntDpra(5 downto 4) = "10" and IntAddr(5 downto 4) = "10" else
					'0';
-- Flag registering.
	AdcMem_Flags_PROCESS : process (ClkOut, RstOut)
	begin
		if (RstOut = '1') then
			IntFlagEna <= '0';
			Flags <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
			Flags <= IntFlags;
			IntFlagEna <= IntFlags(2) or IntFlags(1);
		end if;
	end process;
--
end generate;
------------------------------------------------------------------------------------------------
-- Hidden VIRTEX-4
-- This design is generated to save room in the FPGA.
-- In stead of 32-bit deep dual-port distributed memory, 16-bit deep dual-port distributed
-- memory is generated.
-- A 32-bit deep dual-port distributed memory with synchronized read output occupies 3 slices
-- in Virtex-4. one slice for 16-bit, a second slice for the next 16-bit and a third slice for
-- The data mux and register.
-- A 16-bit dual port distributed memory with synchronous output only takes 2 slice.
------------------------------------------------------------------------------------------------
GenMemV4H : if (C_Family = "VIRTEX4" and C_AdcMemDepth = 16) generate
--
	GenMem : for n in (16*((C_AdcWireInt+1)*C_AdcChnls))-1 downto 0 generate
	begin
		AdcMem_I_Ram16x1d : RAM16X1D
			generic map ( INIT => X"0000")
		    port map (
				D		=> DatIn(n),	-- in
				A0		=> IntAddr(0),	-- in
				A1		=> IntAddr(1),	-- in
				A2		=> IntAddr(2),	-- in
				A3		=> IntAddr(3),	-- in
		 		WE		=> High,		-- in
				WCLK 	=> ClkIn,		-- in
				DPRA0	=> IntDpra(0),	-- in
				DPRA1	=> IntDpra(1),	-- in
				DPRA2	=> IntDpra(2),	-- in
				DPRA3	=> IntDpra(3),	-- in
				DPO		=> IntRamToFf(n),	-- out
				SPO		=> open
	    	);
	 		AdcMem_I_Fdce : FDCE
			generic map (INIT => '0')
			port map (D => IntRamToFf(n), C => ClkOut, CE => EnaOut, CLR => RstOut,	Q => DatOut(n));
	end generate;	    	
-------------------------------------------------------------------------------------------------
-- READ and WRITE ADDRESS COUNTERS
-- The address counters are running all the time.
-- For this application (Virtex-4) the counters are used in a 5-bit mode (4 downto 0).
-- For a Virtex-5 implementation where a RAM61X1D is used make the counter one bit larger.
--		This is remover the (4 downto 0) and the counter will be 6-bit wide.
-- When the write counter is between 1/4 and 3/4 then the read counter is enabled.
--		here also, for a Virtex-5 implementation replaec bits 4 and 3 by bits 5 and 4.
-------------------------------------------------------------------------------------------------
-- Write counter
	AdcMem_AddrCnt_PROCESS : process (ClkIn, EnaIn, RstIn)
	begin
		if (RstIn = '1') then
			IntAddr <= (others => '0');
		elsif (ClkIn'event and ClkIn = '1') then
                  if (EnaIn = '1') then
				IntAddr <= IntAddr + "01";
		   end if;
		end if;
	end process;
	-- Read counter
	AdcMem_DpraCnt_PROCESS : process (Clkout, EnaOut, RstOut)
	begin
		if (RstOut = '1') then
			IntDpra <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
                  if (EnaOut = '1' and IntFlagEna = '1') then
				IntDpra <= IntDpra + "01";
		   end if;
		   end if;
	end process;
-------------------------------------------------------------------------------------------------
-- Flags.
-- Four flags are decoded
--		memory is filled between empty and 1/4 = IntFlag(0) -- Empty
--		memory is filled between 1/4 and 1/2 = IntFlag(1) -- Low Half
--		memory is filled between 1/2 and 3/4 = IntFlag(0) -- High Half
--		memory is filled between 3/4 and Full = IntFlag(0) -- Full
-- The flags are registered at the read or application clock for signalling to the application
-- Interface. One flag is used as auto-enbable of the read counter.
-- This flag can be any flag, but here is chosen to register the Low and High flags
-- so that a natural spread and fill of the memory occurs.
-------------------------------------------------------------------------------------------------
-- Full
	IntFlags(3) <=	'1' when IntDpra(3 downto 2) = "00" and IntAddr(3 downto 2) = "10" else
					'1' when IntDpra(3 downto 2) = "01" and IntAddr(3 downto 2) = "00" else
					'1' when IntDpra(3 downto 2) = "11" and IntAddr(3 downto 2) = "01" else
					'1' when IntDpra(3 downto 2) = "10" and IntAddr(3 downto 2) = "11" else
					'0';
-- High Half
	IntFlags(2) <=	'1' when IntDpra(3 downto 2) = "00" and IntAddr(3 downto 2) = "11" else
					'1' when IntDpra(3 downto 2) = "01" and IntAddr(3 downto 2) = "10" else
					'1' when IntDpra(3 downto 2) = "11" and IntAddr(3 downto 2) = "00" else
					'1' when IntDpra(3 downto 2) = "10" and IntAddr(3 downto 2) = "01" else
					'0';
-- Low half
	IntFlags(1) <=	'1' when IntDpra(3 downto 2) = "00" and IntAddr(3 downto 2) = "01" else
					'1' when IntDpra(3 downto 2) = "01" and IntAddr(3 downto 2) = "11" else
					'1' when IntDpra(3 downto 2) = "11" and IntAddr(3 downto 2) = "10" else
					'1' when IntDpra(3 downto 2) = "10" and IntAddr(3 downto 2) = "00" else
					'0';
-- Empty
	IntFlags(0) <=	'1' when IntDpra(3 downto 2) = "00" and IntAddr(3 downto 2) = "00" else
					'1' when IntDpra(3 downto 2) = "01" and IntAddr(3 downto 2) = "01" else
					'1' when IntDpra(3 downto 2) = "11" and IntAddr(3 downto 2) = "11" else
					'1' when IntDpra(3 downto 2) = "10" and IntAddr(3 downto 2) = "10" else
					'0';
-- Flag registering.
	AdcMem_Flags_PROCESS : process (ClkOut, RstOut)
	begin
		if (RstOut = '1') then
			IntFlagEna <= '0';
			Flags <= (others => '0');
		elsif (ClkOut'event and ClkOut = '1') then
			Flags <= IntFlags;
			IntFlagEna <= IntFlags(2) or IntFlags(1);
		end if;
	end process;
--
end generate;
--
end  AdcMem_struct;
