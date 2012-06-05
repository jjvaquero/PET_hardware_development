-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 173 11/01/2011 SJ Web Edition"

-- DATE "06/05/2012 10:39:47"

-- 
-- Device: Altera EP2C20F256C7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Template IS
    PORT (
	IO_D2 : OUT std_logic;
	IO_C1 : OUT std_logic;
	pa4 : OUT std_logic;
	fd : OUT std_logic_vector(15 DOWNTO 0);
	IO_E3 : IN std_logic;
	ifclk : IN std_logic;
	IO_E1 : IN std_logic;
	data_in : IN std_logic_vector(11 DOWNTO 0);
	ren : IN std_logic
	);
END Template;

-- Design Ports Information
-- IO_D2	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IO_C1	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pa4	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[15]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[14]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[13]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[12]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[11]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[10]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[9]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[8]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[7]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[6]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[5]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[4]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[3]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[2]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[1]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fd[0]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IO_E3	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ifclk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ren	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_E1	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Template IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IO_D2 : std_logic;
SIGNAL ww_IO_C1 : std_logic;
SIGNAL ww_pa4 : std_logic;
SIGNAL ww_fd : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO_E3 : std_logic;
SIGNAL ww_ifclk : std_logic;
SIGNAL ww_IO_E1 : std_logic;
SIGNAL ww_data_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ren : std_logic;
SIGNAL \inst1|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Mux3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ifclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk1\ : std_logic;
SIGNAL \inst1|altpll_component|_clk2\ : std_logic;
SIGNAL \inst|cuenta_180[3]~15_combout\ : std_logic;
SIGNAL \inst|cuenta_180[6]~21_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\ : std_logic;
SIGNAL \inst1|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux5~1_RESYN24_BDD25\ : std_logic;
SIGNAL \inst|Mux5~1_RESYN26_BDD27\ : std_logic;
SIGNAL \inst|Mux5~1_RESYN28_BDD29\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36_BDD37\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~9_combout\ : std_logic;
SIGNAL \IO_E1~combout\ : std_logic;
SIGNAL \inst2|q0_Entrada~regout\ : std_logic;
SIGNAL \inst2|q1_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q1_Entrada~regout\ : std_logic;
SIGNAL \inst2|q2_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q2_Entrada~regout\ : std_logic;
SIGNAL \inst2|q3_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q3_Entrada~regout\ : std_logic;
SIGNAL \inst2|q4_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q4_Entrada~regout\ : std_logic;
SIGNAL \inst2|q5_Entrada~regout\ : std_logic;
SIGNAL \IO_E3~combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~10\ : std_logic;
SIGNAL \inst|cuenta_180[1]~11_combout\ : std_logic;
SIGNAL \inst|cuenta_180[1]~12\ : std_logic;
SIGNAL \inst|cuenta_180[2]~13_combout\ : std_logic;
SIGNAL \inst|cuenta_180[2]~14\ : std_logic;
SIGNAL \inst|cuenta_180[3]~16\ : std_logic;
SIGNAL \inst|cuenta_180[4]~17_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|cuenta_180[4]~18\ : std_logic;
SIGNAL \inst|cuenta_180[5]~20\ : std_logic;
SIGNAL \inst|cuenta_180[6]~22\ : std_logic;
SIGNAL \inst|cuenta_180[7]~23_combout\ : std_logic;
SIGNAL \inst|cuenta_180[7]~24\ : std_logic;
SIGNAL \inst|cuenta_180[8]~25_combout\ : std_logic;
SIGNAL \inst|cuenta_180[5]~19_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|Mux5~1_RESYN30_BDD31\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \ifclk~combout\ : std_logic;
SIGNAL \inst1|altpll_component|_clk0\ : std_logic;
SIGNAL \inst1|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~14_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42_BDD43\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40_BDD41\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44_BDD45\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34_BDD35\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~17_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~16_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32_BDD33\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38_BDD39\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|int_wrfull~combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~18_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~19_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~15_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~21_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\ : std_logic;
SIGNAL \ren~combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \ifclk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~combout\ : std_logic;
SIGNAL \inst|Mux3~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cuenta_180\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_ifclk~clkctrl_outclk\ : std_logic;

BEGIN

IO_D2 <= ww_IO_D2;
IO_C1 <= ww_IO_C1;
pa4 <= ww_pa4;
fd <= ww_fd;
ww_IO_E3 <= IO_E3;
ww_ifclk <= ifclk;
ww_IO_E1 <= IO_E1;
ww_data_in <= data_in;
ww_ren <= ren;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|pll_INCLK_bus\ <= (gnd & \ifclk~combout\);

\inst1|altpll_component|_clk0\ <= \inst1|altpll_component|pll_CLK_bus\(0);
\inst1|altpll_component|_clk1\ <= \inst1|altpll_component|pll_CLK_bus\(1);
\inst1|altpll_component|_clk2\ <= \inst1|altpll_component|pll_CLK_bus\(2);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\(0) <= \inst|dataOut\(11);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\(0) <= \inst|dataOut\(11);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\(0) <= \inst|dataOut\(10);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\(0) <= \inst|dataOut\(10);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\(0) <= \inst|dataOut\(9);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\(0) <= \inst|dataOut\(9);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\(0) <= \inst|dataOut\(8);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\(0) <= \inst|dataOut\(8);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\(0) <= \inst|dataOut\(7);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\(0) <= \inst|dataOut\(7);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\(0) <= \inst|dataOut\(6);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\(0) <= \inst|dataOut\(6);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\(0) <= \inst|dataOut\(5);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\(0) <= \inst|dataOut\(5);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\(0) <= \inst|dataOut\(4);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\(0) <= \inst|dataOut\(4);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\(0) <= \inst|dataOut\(3);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\(0) <= \inst|dataOut\(3);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\(0) <= \inst|dataOut\(2);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\(0) <= \inst|dataOut\(2);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\(0) <= \inst|dataOut\(1);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\(0) <= \inst|dataOut\(1);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\(0) <= \inst|dataOut\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\(0) <= vcc;

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\(0) <= \inst|dataOut\(0);

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ <= \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);

\inst1|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|altpll_component|_clk0\);

\inst|Mux3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|Mux3~combout\);

\ifclk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ifclk~combout\);

\inst1|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|altpll_component|_clk1\);
\inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;
\inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0) <= NOT \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a\(0);
\ALT_INV_ifclk~clkctrl_outclk\ <= NOT \ifclk~clkctrl_outclk\;

-- Location: LCFF_X2_Y20_N13
\inst|cuenta_180[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[6]~21_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(6));

-- Location: LCFF_X2_Y20_N7
\inst|cuenta_180[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[3]~15_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(3));

-- Location: PLL_1
\inst1|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 3,
	c1_initial => 1,
	c1_low => 3,
	c1_mode => "even",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 16,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 5,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 24,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 25,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20833,
	inclk1_input_frequency => 20833,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 25,
	m_initial => 1,
	m_ph => 0,
	n => 4,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 2500,
	vco_max => 3333,
	vco_min => 2000,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|pll_INCLK_bus\,
	clk => \inst1|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X2_Y20_N6
\inst|cuenta_180[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[3]~15_combout\ = (\inst|cuenta_180\(3) & (!\inst|cuenta_180[2]~14\)) # (!\inst|cuenta_180\(3) & ((\inst|cuenta_180[2]~14\) # (GND)))
-- \inst|cuenta_180[3]~16\ = CARRY((!\inst|cuenta_180[2]~14\) # (!\inst|cuenta_180\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(3),
	datad => VCC,
	cin => \inst|cuenta_180[2]~14\,
	combout => \inst|cuenta_180[3]~15_combout\,
	cout => \inst|cuenta_180[3]~16\);

-- Location: LCCOMB_X2_Y20_N12
\inst|cuenta_180[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[6]~21_combout\ = (\inst|cuenta_180\(6) & (\inst|cuenta_180[5]~20\ $ (GND))) # (!\inst|cuenta_180\(6) & (!\inst|cuenta_180[5]~20\ & VCC))
-- \inst|cuenta_180[6]~22\ = CARRY((\inst|cuenta_180\(6) & !\inst|cuenta_180[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(6),
	datad => VCC,
	cin => \inst|cuenta_180[5]~20\,
	combout => \inst|cuenta_180[6]~21_combout\,
	cout => \inst|cuenta_180[6]~22\);

-- Location: LCFF_X36_Y16_N17
\inst3|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCFF_X39_Y16_N21
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\);

-- Location: LCFF_X40_Y16_N1
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\);

-- Location: LCCOMB_X39_Y17_N2
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\);

-- Location: LCCOMB_X38_Y17_N12
\inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g\(8) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X36_Y17_N4
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(3) 
-- & (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X38_Y17_N6
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(12) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g\(13))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(12) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(13),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(12),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCFF_X37_Y17_N21
\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\);

-- Location: LCCOMB_X35_Y17_N20
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & ((!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\) # 
-- (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCFF_X39_Y16_N13
\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCCOMB_X37_Y17_N20
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\);

-- Location: LCFF_X35_Y17_N7
\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: LCCOMB_X39_Y16_N12
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\);

-- Location: LCCOMB_X35_Y17_N6
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ $ (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\);

-- Location: LCCOMB_X39_Y16_N20
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\ = !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: CLKCTRL_G2
\inst1|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y20_N24
\inst|Mux5~1_RESYN24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_RESYN24_BDD25\ = (\inst|cuenta_180\(4) & ((\inst|cuenta_180\(3)) # ((\inst|cuenta_180\(0)) # (\inst|cuenta_180\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(3),
	datab => \inst|cuenta_180\(0),
	datac => \inst|cuenta_180\(4),
	datad => \inst|cuenta_180\(1),
	combout => \inst|Mux5~1_RESYN24_BDD25\);

-- Location: LCCOMB_X1_Y20_N24
\inst|Mux5~1_RESYN26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_RESYN26_BDD27\ = ((\inst|Mux5~1_RESYN24_BDD25\ & ((\inst|cuenta_180\(2)) # (\inst|cuenta_180\(3))))) # (!\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(2),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|Mux5~1_RESYN24_BDD25\,
	datad => \inst|cuenta_180\(3),
	combout => \inst|Mux5~1_RESYN26_BDD27\);

-- Location: LCCOMB_X1_Y20_N10
\inst|Mux5~1_RESYN28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_RESYN28_BDD29\ = (\inst|EA\(0) & (((!\inst2|q5_Entrada~regout\) # (!\inst|EA\(1))))) # (!\inst|EA\(0) & ((\inst|EA\(1) & (\inst|Mux5~1_RESYN26_BDD27\)) # (!\inst|EA\(1) & ((!\inst2|q5_Entrada~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~1_RESYN26_BDD27\,
	datab => \inst|EA\(0),
	datac => \inst|EA\(1),
	datad => \inst2|q5_Entrada~regout\,
	combout => \inst|Mux5~1_RESYN28_BDD29\);

-- Location: LCCOMB_X36_Y17_N24
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36_BDD37\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & (\inst3|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(5))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(5),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36_BDD37\);

-- Location: LCFF_X40_Y17_N7
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_NEW_REG80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\);

-- Location: LCCOMB_X40_Y17_N6
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81feeder_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81feeder_combout\);

-- Location: LCCOMB_X36_Y16_N16
\inst3|dcfifo_component|auto_generated|p0addr~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|p0addr~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|p0addr~feeder_combout\);

-- Location: LCCOMB_X40_Y16_N0
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\);

-- Location: LCCOMB_X2_Y20_N0
\inst|cuenta_180[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[0]~9_combout\ = \inst|cuenta_180\(0) $ (VCC)
-- \inst|cuenta_180[0]~10\ = CARRY(\inst|cuenta_180\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(0),
	datad => VCC,
	combout => \inst|cuenta_180[0]~9_combout\,
	cout => \inst|cuenta_180[0]~10\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_E1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IO_E1,
	combout => \IO_E1~combout\);

-- Location: LCFF_X1_Y20_N29
\inst2|q0_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \IO_E1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q0_Entrada~regout\);

-- Location: LCCOMB_X1_Y20_N18
\inst2|q1_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|q1_Entrada~feeder_combout\ = \inst2|q0_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|q0_Entrada~regout\,
	combout => \inst2|q1_Entrada~feeder_combout\);

-- Location: LCFF_X1_Y20_N19
\inst2|q1_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q1_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q1_Entrada~regout\);

-- Location: LCCOMB_X1_Y20_N26
\inst2|q2_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|q2_Entrada~feeder_combout\ = \inst2|q1_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|q1_Entrada~regout\,
	combout => \inst2|q2_Entrada~feeder_combout\);

-- Location: LCFF_X1_Y20_N27
\inst2|q2_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q2_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q2_Entrada~regout\);

-- Location: LCCOMB_X1_Y20_N2
\inst2|q3_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|q3_Entrada~feeder_combout\ = \inst2|q2_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|q2_Entrada~regout\,
	combout => \inst2|q3_Entrada~feeder_combout\);

-- Location: LCFF_X1_Y20_N3
\inst2|q3_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q3_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q3_Entrada~regout\);

-- Location: LCCOMB_X1_Y20_N16
\inst2|q4_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|q4_Entrada~feeder_combout\ = \inst2|q3_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|q3_Entrada~regout\,
	combout => \inst2|q4_Entrada~feeder_combout\);

-- Location: LCFF_X1_Y20_N17
\inst2|q4_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q4_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q4_Entrada~regout\);

-- Location: LCFF_X1_Y20_N5
\inst2|q5_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \inst2|q4_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q5_Entrada~regout\);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_E3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IO_E3,
	combout => \IO_E3~combout\);

-- Location: LCCOMB_X1_Y20_N0
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst2|q5_Entrada~regout\ & (\inst|EA\(0) & \IO_E3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|q5_Entrada~regout\,
	datac => \inst|EA\(0),
	datad => \IO_E3~combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N8
\inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|EA\(1) & (((!\inst|Mux3~0_combout\)))) # (!\inst|EA\(1) & (\inst|LessThan0~2_combout\ & (\inst|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|EA\(0),
	datac => \inst|EA\(1),
	datad => \inst|Mux3~0_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCFF_X1_Y20_N9
\inst|EA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(1));

-- Location: LCCOMB_X2_Y20_N30
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = \inst|EA\(0) $ (!\inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|EA\(0),
	datad => \inst|EA\(1),
	combout => \inst|Mux2~0_combout\);

-- Location: LCFF_X2_Y20_N1
\inst|cuenta_180[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[0]~9_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(0));

-- Location: LCCOMB_X2_Y20_N2
\inst|cuenta_180[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[1]~11_combout\ = (\inst|cuenta_180\(1) & (!\inst|cuenta_180[0]~10\)) # (!\inst|cuenta_180\(1) & ((\inst|cuenta_180[0]~10\) # (GND)))
-- \inst|cuenta_180[1]~12\ = CARRY((!\inst|cuenta_180[0]~10\) # (!\inst|cuenta_180\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(1),
	datad => VCC,
	cin => \inst|cuenta_180[0]~10\,
	combout => \inst|cuenta_180[1]~11_combout\,
	cout => \inst|cuenta_180[1]~12\);

-- Location: LCFF_X2_Y20_N3
\inst|cuenta_180[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[1]~11_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(1));

-- Location: LCCOMB_X2_Y20_N4
\inst|cuenta_180[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[2]~13_combout\ = (\inst|cuenta_180\(2) & (\inst|cuenta_180[1]~12\ $ (GND))) # (!\inst|cuenta_180\(2) & (!\inst|cuenta_180[1]~12\ & VCC))
-- \inst|cuenta_180[2]~14\ = CARRY((\inst|cuenta_180\(2) & !\inst|cuenta_180[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(2),
	datad => VCC,
	cin => \inst|cuenta_180[1]~12\,
	combout => \inst|cuenta_180[2]~13_combout\,
	cout => \inst|cuenta_180[2]~14\);

-- Location: LCFF_X2_Y20_N5
\inst|cuenta_180[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[2]~13_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(2));

-- Location: LCCOMB_X2_Y20_N8
\inst|cuenta_180[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[4]~17_combout\ = (\inst|cuenta_180\(4) & (\inst|cuenta_180[3]~16\ $ (GND))) # (!\inst|cuenta_180\(4) & (!\inst|cuenta_180[3]~16\ & VCC))
-- \inst|cuenta_180[4]~18\ = CARRY((\inst|cuenta_180\(4) & !\inst|cuenta_180[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(4),
	datad => VCC,
	cin => \inst|cuenta_180[3]~16\,
	combout => \inst|cuenta_180[4]~17_combout\,
	cout => \inst|cuenta_180[4]~18\);

-- Location: LCFF_X2_Y20_N9
\inst|cuenta_180[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[4]~17_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(4));

-- Location: LCCOMB_X2_Y20_N28
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|cuenta_180\(3)) # ((\inst|cuenta_180\(4)) # ((\inst|cuenta_180\(2) & \inst|cuenta_180\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(3),
	datab => \inst|cuenta_180\(4),
	datac => \inst|cuenta_180\(2),
	datad => \inst|cuenta_180\(1),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y20_N10
\inst|cuenta_180[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[5]~19_combout\ = (\inst|cuenta_180\(5) & (!\inst|cuenta_180[4]~18\)) # (!\inst|cuenta_180\(5) & ((\inst|cuenta_180[4]~18\) # (GND)))
-- \inst|cuenta_180[5]~20\ = CARRY((!\inst|cuenta_180[4]~18\) # (!\inst|cuenta_180\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(5),
	datad => VCC,
	cin => \inst|cuenta_180[4]~18\,
	combout => \inst|cuenta_180[5]~19_combout\,
	cout => \inst|cuenta_180[5]~20\);

-- Location: LCCOMB_X2_Y20_N14
\inst|cuenta_180[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[7]~23_combout\ = (\inst|cuenta_180\(7) & (!\inst|cuenta_180[6]~22\)) # (!\inst|cuenta_180\(7) & ((\inst|cuenta_180[6]~22\) # (GND)))
-- \inst|cuenta_180[7]~24\ = CARRY((!\inst|cuenta_180[6]~22\) # (!\inst|cuenta_180\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(7),
	datad => VCC,
	cin => \inst|cuenta_180[6]~22\,
	combout => \inst|cuenta_180[7]~23_combout\,
	cout => \inst|cuenta_180[7]~24\);

-- Location: LCFF_X2_Y20_N15
\inst|cuenta_180[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[7]~23_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(7));

-- Location: LCCOMB_X2_Y20_N16
\inst|cuenta_180[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[8]~25_combout\ = \inst|cuenta_180\(8) $ (!\inst|cuenta_180[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(8),
	cin => \inst|cuenta_180[7]~24\,
	combout => \inst|cuenta_180[8]~25_combout\);

-- Location: LCFF_X2_Y20_N17
\inst|cuenta_180[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[8]~25_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(8));

-- Location: LCFF_X2_Y20_N11
\inst|cuenta_180[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[5]~19_combout\,
	sclr => \inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(5));

-- Location: LCCOMB_X2_Y20_N18
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cuenta_180\(6) & (!\inst|cuenta_180\(7) & (!\inst|cuenta_180\(8) & !\inst|cuenta_180\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(6),
	datab => \inst|cuenta_180\(7),
	datac => \inst|cuenta_180\(8),
	datad => \inst|cuenta_180\(5),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|LessThan0~1_combout\) # (!\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y20_N14
\inst|Mux5~1_RESYN30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_RESYN30_BDD31\ = (!\inst|LessThan0~2_combout\) # (!\inst|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|EA\(0),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|Mux5~1_RESYN30_BDD31\);

-- Location: LCCOMB_X1_Y20_N20
\inst|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|Mux5~1_RESYN28_BDD29\ & ((\inst|Mux5~1_RESYN30_BDD31\) # ((\inst|EA\(1))))) # (!\inst|Mux5~1_RESYN28_BDD29\ & (((\inst|EA\(1) & !\IO_E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~1_RESYN28_BDD29\,
	datab => \inst|Mux5~1_RESYN30_BDD31\,
	datac => \inst|EA\(1),
	datad => \IO_E3~combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCFF_X1_Y20_N21
\inst|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(0));

-- Location: LCCOMB_X1_Y20_N12
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\inst|EA\(1) & (((!\inst|LessThan0~1_combout\ & \inst|LessThan0~0_combout\)) # (!\inst|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(0),
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|EA\(1),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N4
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (((!\inst|EA\(0)) # (!\inst2|q5_Entrada~regout\)) # (!\inst|EA\(1))) # (!\IO_E3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_E3~combout\,
	datab => \inst|EA\(1),
	datac => \inst2|q5_Entrada~regout\,
	datad => \inst|EA\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ifclk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ifclk,
	combout => \ifclk~combout\);

-- Location: CLKCTRL_G3
\inst1|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y16_N16
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\);

-- Location: LCCOMB_X40_Y16_N8
\inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\);

-- Location: LCFF_X40_Y16_N9
\inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdaclr|dffe20a\(0));

-- Location: LCFF_X40_Y16_N17
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCCOMB_X40_Y16_N10
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X40_Y16_N26
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\);

-- Location: LCFF_X40_Y16_N27
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X40_Y16_N28
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X40_Y16_N4
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\);

-- Location: LCFF_X40_Y16_N5
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3));

-- Location: LCCOMB_X40_Y16_N14
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X36_Y16_N22
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\);

-- Location: LCFF_X36_Y16_N23
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4));

-- Location: LCCOMB_X39_Y16_N4
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X40_Y16_N6
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\);

-- Location: LCFF_X40_Y16_N7
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5));

-- Location: LCCOMB_X40_Y16_N24
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & 
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\);

-- Location: LCFF_X40_Y16_N25
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6));

-- Location: LCCOMB_X39_Y16_N26
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: LCFF_X39_Y16_N27
\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCCOMB_X39_Y16_N8
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: LCFF_X39_Y16_N9
\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X39_Y17_N30
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\);

-- Location: LCFF_X39_Y17_N31
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\);

-- Location: LCFF_X39_Y17_N17
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\);

-- Location: LCCOMB_X40_Y16_N22
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\);

-- Location: LCFF_X40_Y16_N23
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\);

-- Location: LCCOMB_X40_Y16_N12
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\);

-- Location: LCFF_X40_Y16_N13
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\);

-- Location: LCCOMB_X39_Y16_N0
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & 
-- !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCFF_X39_Y16_N1
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\);

-- Location: LCCOMB_X39_Y17_N0
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ $ 
-- (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\);

-- Location: LCCOMB_X39_Y16_N2
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ = !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\);

-- Location: LCFF_X39_Y16_N3
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\);

-- Location: LCCOMB_X39_Y16_N18
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & 
-- !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCFF_X39_Y16_N19
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\);

-- Location: LCCOMB_X40_Y16_N2
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\);

-- Location: LCFF_X40_Y16_N3
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\);

-- Location: LCCOMB_X39_Y16_N22
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\ $ 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\);

-- Location: LCCOMB_X39_Y16_N28
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ = !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\);

-- Location: LCFF_X39_Y16_N29
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\);

-- Location: LCCOMB_X39_Y17_N24
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X38_Y17_N10
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ $ 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\);

-- Location: LCCOMB_X39_Y16_N30
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ = !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\);

-- Location: LCFF_X39_Y16_N31
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\);

-- Location: LCCOMB_X39_Y17_N4
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X39_Y17_N26
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ $ 
-- (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ & !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\);

-- Location: LCFF_X39_Y17_N27
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\);

-- Location: LCCOMB_X39_Y17_N18
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24_combout\ = (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24_combout\);

-- Location: LCCOMB_X39_Y17_N16
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ $ 
-- (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ & !\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~24_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\);

-- Location: LCFF_X40_Y16_N21
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\);

-- Location: LCCOMB_X40_Y16_N18
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\);

-- Location: LCFF_X40_Y16_N19
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\);

-- Location: LCCOMB_X40_Y16_N20
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ $ 
-- (((!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\);

-- Location: LCCOMB_X39_Y16_N14
\inst3|dcfifo_component|auto_generated|ram_address_b[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|ram_address_b\(12) = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\,
	combout => \inst3|dcfifo_component|auto_generated|ram_address_b\(12));

-- Location: LCFF_X39_Y16_N7
\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|ram_address_b\(12),
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\);

-- Location: LCCOMB_X39_Y16_N10
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: LCFF_X39_Y16_N11
\inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X39_Y16_N16
\inst3|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCFF_X39_Y16_N17
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X37_Y17_N4
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~14_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (((\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~14_combout\);

-- Location: LCFF_X37_Y17_N5
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1));

-- Location: LCFF_X39_Y17_N3
\inst3|dcfifo_component|auto_generated|rdptr_g[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(12));

-- Location: LCFF_X38_Y17_N17
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\);

-- Location: LCCOMB_X35_Y17_N24
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: LCFF_X35_Y17_N25
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\);

-- Location: LCCOMB_X35_Y17_N4
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\);

-- Location: LCFF_X35_Y17_N5
\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: LCFF_X35_Y17_N11
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\);

-- Location: LCCOMB_X35_Y17_N30
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & \inst3|dcfifo_component|auto_generated|int_wrfull~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datad => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: LCFF_X35_Y17_N31
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\);

-- Location: LCCOMB_X36_Y17_N8
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ & \inst3|dcfifo_component|auto_generated|int_wrfull~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datad => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X36_Y17_N14
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: LCFF_X36_Y17_N15
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\);

-- Location: LCCOMB_X36_Y17_N10
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: LCFF_X36_Y17_N11
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\);

-- Location: LCCOMB_X36_Y17_N12
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ & !\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X35_Y17_N14
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: LCFF_X35_Y17_N21
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\);

-- Location: LCCOMB_X38_Y17_N20
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\);

-- Location: LCFF_X38_Y17_N3
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\);

-- Location: LCCOMB_X38_Y17_N4
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\ & !\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\);

-- Location: LCFF_X38_Y17_N5
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\);

-- Location: LCCOMB_X35_Y17_N10
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\);

-- Location: LCCOMB_X35_Y17_N16
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: LCFF_X35_Y17_N17
\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3));

-- Location: LCCOMB_X34_Y17_N0
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1feeder_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1feeder_combout\);

-- Location: LCFF_X34_Y17_N1
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\);

-- Location: LCCOMB_X34_Y17_N28
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\ & 
-- !\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\);

-- Location: LCCOMB_X35_Y17_N26
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ $ (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\);

-- Location: LCFF_X35_Y17_N27
\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2));

-- Location: LCCOMB_X35_Y17_N12
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0) $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1) $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3) $ (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: LCFF_X35_Y17_N13
\inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\);

-- Location: LCCOMB_X35_Y17_N8
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCFF_X35_Y17_N9
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\);

-- Location: LCCOMB_X35_Y17_N28
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: LCFF_X35_Y17_N29
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\);

-- Location: LCCOMB_X36_Y17_N2
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X35_Y17_N0
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: LCFF_X35_Y17_N1
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\);

-- Location: LCCOMB_X35_Y17_N18
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: LCFF_X35_Y17_N19
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\);

-- Location: LCCOMB_X35_Y17_N2
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: LCFF_X35_Y17_N3
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\);

-- Location: LCCOMB_X38_Y17_N16
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\);

-- Location: LCCOMB_X34_Y17_N18
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ & (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCFF_X34_Y17_N19
\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_NEW_REG78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\);

-- Location: LCFF_X35_Y17_N23
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\);

-- Location: LCCOMB_X35_Y17_N22
\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\ & \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|_~0_OTERM79\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\);

-- Location: LCFF_X38_Y17_N7
\inst3|dcfifo_component|auto_generated|rdptr_g[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(13));

-- Location: LCCOMB_X39_Y17_N14
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(13) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(12) $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\)))) # (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(13) & (\inst3|dcfifo_component|auto_generated|rdptr_g\(12) $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(12),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(13),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y17_N19
\inst3|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCFF_X38_Y17_N13
\inst3|dcfifo_component|auto_generated|rdptr_g[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCCOMB_X38_Y17_N18
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42_BDD43\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g\(10))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g\(7) & (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ $ (\inst3|dcfifo_component|auto_generated|rdptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42_BDD43\);

-- Location: LCFF_X38_Y17_N9
\inst3|dcfifo_component|auto_generated|rdptr_g[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(11));

-- Location: LCFF_X38_Y17_N11
\inst3|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X38_Y17_N2
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40_BDD41\ = \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\ $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40_BDD41\);

-- Location: LCCOMB_X38_Y17_N30
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44_BDD45\ = (\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40_BDD41\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN40_BDD41\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44_BDD45\);

-- Location: LCCOMB_X38_Y17_N14
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42_BDD43\ & 
-- (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44_BDD45\ & (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN42_BDD43\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_RESYN44_BDD45\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X40_Y17_N24
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ & !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCFF_X40_Y17_N25
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\);

-- Location: LCCOMB_X39_Y17_N22
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ $ (((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\) # 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\);

-- Location: LCCOMB_X40_Y18_N16
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ = !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\);

-- Location: LCFF_X40_Y18_N17
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\);

-- Location: LCCOMB_X39_Y17_N8
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ $ ((((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\) # 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\)) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\);

-- Location: LCCOMB_X39_Y17_N28
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\);

-- Location: LCFF_X39_Y17_N29
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\,
	aclr => \inst3|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\);

-- Location: LCCOMB_X39_Y17_N10
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ = \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ $ (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\) # 
-- ((!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\);

-- Location: LCCOMB_X39_Y17_N6
\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ & \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\);

-- Location: LCFF_X39_Y17_N7
\inst3|dcfifo_component|auto_generated|rdptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCCOMB_X38_Y17_N8
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(11) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(9))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g\(11) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X38_Y17_N0
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X38_Y17_N26
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (!\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X38_Y17_N28
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(10) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(10),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X38_Y17_N24
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- ((\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\) # ((\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\)))) # (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCFF_X38_Y17_N25
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\);

-- Location: LCFF_X36_Y17_N7
\inst3|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X36_Y17_N6
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(1))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCFF_X36_Y17_N21
\inst3|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCFF_X36_Y17_N27
\inst3|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCFF_X36_Y17_N25
\inst3|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X36_Y17_N28
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(4) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(5))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(4) 
-- & (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X36_Y17_N20
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datab => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCFF_X36_Y17_N31
\inst3|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X36_Y17_N18
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34_BDD35\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (\inst3|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(0))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34_BDD35\);

-- Location: LCCOMB_X37_Y17_N14
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~17_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~17_combout\);

-- Location: LCFF_X37_Y17_N15
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4));

-- Location: LCCOMB_X36_Y16_N10
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~16_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~16_combout\);

-- Location: LCFF_X36_Y16_N11
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3));

-- Location: LCFF_X36_Y17_N5
\inst3|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X36_Y17_N22
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32_BDD33\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (\inst3|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(3))))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (!\inst3|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32_BDD33\);

-- Location: LCCOMB_X36_Y17_N26
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38_BDD39\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32_BDD33\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN32_BDD33\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38_BDD39\);

-- Location: LCCOMB_X36_Y17_N0
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36_BDD37\ & (!\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34_BDD35\ & \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38_BDD39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN36_BDD37\,
	datab => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN34_BDD35\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_RESYN38_BDD39\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X36_Y17_N16
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\) # 
-- ((\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ & (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ & 
-- \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X36_Y17_N17
\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\);

-- Location: LCCOMB_X37_Y17_N24
\inst3|dcfifo_component|auto_generated|int_wrfull\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|int_wrfull~combout\ = (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\) # (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	combout => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\);

-- Location: LCCOMB_X37_Y17_N8
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- (\inst3|dcfifo_component|auto_generated|int_wrfull~combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCCOMB_X37_Y17_N22
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\);

-- Location: LCCOMB_X37_Y17_N0
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~18_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~18_combout\);

-- Location: LCFF_X37_Y17_N1
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5));

-- Location: LCCOMB_X38_Y16_N8
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~19_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~19_combout\);

-- Location: LCFF_X38_Y16_N9
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6));

-- Location: LCCOMB_X37_Y17_N2
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\);

-- Location: LCFF_X37_Y17_N3
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7));

-- Location: LCCOMB_X37_Y17_N18
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\);

-- Location: LCFF_X37_Y17_N19
\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\);

-- Location: LCCOMB_X37_Y17_N16
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\);

-- Location: LCFF_X37_Y17_N17
\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\);

-- Location: LCCOMB_X40_Y17_N18
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~11_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCFF_X40_Y17_N19
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_NEW_REG70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\);

-- Location: LCCOMB_X40_Y17_N4
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ = !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\);

-- Location: LCFF_X40_Y17_N5
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\);

-- Location: LCCOMB_X40_Y17_N10
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\);

-- Location: LCFF_X40_Y17_N21
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\);

-- Location: LCFF_X40_Y17_N11
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\);

-- Location: LCCOMB_X40_Y17_N14
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\ & !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\);

-- Location: LCFF_X40_Y17_N9
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\);

-- Location: LCCOMB_X40_Y17_N26
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\ & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_OTERM75_OTERM81\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM71\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\);

-- Location: LCCOMB_X37_Y17_N6
\inst3|dcfifo_component|auto_generated|ram_address_a[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|ram_address_a\(12) = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	combout => \inst3|dcfifo_component|auto_generated|ram_address_a\(12));

-- Location: LCFF_X37_Y17_N7
\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|ram_address_a\(12),
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\);

-- Location: LCCOMB_X37_Y17_N30
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\);

-- Location: LCFF_X37_Y17_N31
\inst3|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X37_Y17_N10
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCFF_X37_Y17_N11
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	ena => \inst3|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X37_Y17_N12
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- ((!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\) # (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\);

-- Location: LCCOMB_X36_Y16_N24
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~15_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~15_combout\);

-- Location: LCFF_X36_Y16_N25
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2));

-- Location: LCCOMB_X37_Y17_N26
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCCOMB_X37_Y17_N28
\inst3|dcfifo_component|auto_generated|wrptr_gp|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ = (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\);

-- Location: LCFF_X37_Y17_N29
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\);

-- Location: LCCOMB_X42_Y17_N16
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\ = \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\);

-- Location: LCCOMB_X40_Y17_N22
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~21_combout\ = !\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_combout\,
	combout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~21_combout\);

-- Location: LCFF_X40_Y17_N23
\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\);

-- Location: LCCOMB_X40_Y17_N8
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datab => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X40_Y17_N12
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ $ 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCFF_X38_Y17_N21
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X39_Y17_N12
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y17_N30
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X40_Y16_N30
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\ & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\)))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\ & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X40_Y17_N20
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(13) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\)))) # (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & 
-- (!\inst3|dcfifo_component|auto_generated|rdptr_g\(13) & (\inst3|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(11),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g\(13),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X39_Y17_N20
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g\(12) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\)))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g\(12) & 
-- (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(12),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(9),
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X38_Y17_N22
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g\(10) & (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(7))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g\(10) & (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7) $ (!\inst3|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(10),
	datab => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X40_Y17_N0
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ = (!\inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ & \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X40_Y17_N16
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\ = (\inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ & 
-- (((!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\)) # (!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\))) # 
-- (!\inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ & (!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ & 
-- ((!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\) # (!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X40_Y17_N17
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\);

-- Location: LCCOMB_X36_Y16_N0
\inst3|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\ren~combout\ & ((\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\) # (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ren~combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	combout => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCFF_X36_Y17_N19
\inst3|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCFF_X36_Y16_N21
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCFF_X36_Y16_N1
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X36_Y16_N20
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g\(3) & (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(0),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCFF_X36_Y16_N3
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCFF_X36_Y16_N19
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X36_Y16_N2
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g\(6) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g\(6) & (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(4),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCFF_X36_Y16_N31
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCFF_X36_Y16_N9
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X36_Y16_N30
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g\(5) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(2) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g\(5) & (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(2) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g\(5),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X36_Y16_N4
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ = (!\inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ & \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCFF_X36_Y16_N7
\inst3|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|Mux3~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X36_Y16_N18
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
-- (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X36_Y16_N8
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5) & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X36_Y16_N28
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X36_Y16_N12
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ & 
-- (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ & \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X36_Y16_N6
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ 
-- (!\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X36_Y16_N14
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ = (!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ & ((\inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(1) $ 
-- (\inst3|dcfifo_component|auto_generated|rdptr_g\(1))) # (!\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datac => \inst3|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X36_Y16_N15
\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ren~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ren,
	combout => \ren~combout\);

-- Location: LCCOMB_X36_Y16_N26
\inst3|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\ren~combout\ & ((\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\) # (\inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\)))) # 
-- (!\inst3|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|p0addr~regout\,
	datab => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	datac => \ren~combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	combout => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: LCCOMB_X40_Y17_N28
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0) = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ (!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\)))) # (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ ((!\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0));

-- Location: CLKCTRL_G0
\ifclk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ifclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ifclk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y20_N30
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst2|q5_Entrada~regout\ & !\inst|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|q5_Entrada~regout\,
	datac => \inst|EA\(0),
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y20_N22
\inst|Mux3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~combout\ = LCELL((\inst|EA\(1) & (\inst|Mux3~0_combout\)) # (!\inst|EA\(1) & ((\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux3~0_combout\,
	datac => \inst|EA\(1),
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux3~combout\);

-- Location: CLKCTRL_G1
\inst|Mux3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Mux3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Mux3~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y13_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X41_Y11
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\);

-- Location: LCFF_X39_Y16_N15
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|ram_address_b\(12),
	ena => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0));

-- Location: LCCOMB_X39_Y16_N24
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ = (\inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\ $ 
-- (((\inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\))))) # (!\inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~25_combout\,
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datad => \inst3|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_combout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\);

-- Location: LCFF_X39_Y16_N25
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0));

-- Location: LCFF_X18_Y12_N1
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0),
	sload => VCC,
	ena => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0));

-- Location: LCCOMB_X40_Y17_N2
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1) = (\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\)))) # (!\inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & 
-- (\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ ((\inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datab => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datac => \inst3|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datad => \inst3|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1));

-- Location: M4K_X41_Y12
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N0
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\);

-- Location: M4K_X17_Y9
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y13
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N26
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\);

-- Location: M4K_X41_Y10
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y14
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N20
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\,
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\);

-- Location: M4K_X17_Y14
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y9
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N30
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(11),
	combout => \data_in~combout\(11));

-- Location: LCCOMB_X16_Y23_N0
\inst|dataOut[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(11) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\data_in~combout\(11)))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\inst|dataOut\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(11),
	datac => \data_in~combout\(11),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(11));

-- Location: M4K_X17_Y17
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y15
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N24
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(10),
	combout => \data_in~combout\(10));

-- Location: LCCOMB_X16_Y19_N16
\inst|dataOut[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(10) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(10))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(10),
	datac => \inst|dataOut\(10),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(10));

-- Location: M4K_X17_Y19
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y18
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N2
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(9),
	combout => \data_in~combout\(9));

-- Location: LCCOMB_X40_Y19_N16
\inst|dataOut[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(9) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(9))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(9),
	datac => \inst|dataOut\(9),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(9));

-- Location: M4K_X41_Y18
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y19
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N12
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(8),
	combout => \data_in~combout\(8));

-- Location: LCCOMB_X21_Y23_N0
\inst|dataOut[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(8) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\data_in~combout\(8)))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\inst|dataOut\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(8),
	datac => \data_in~combout\(8),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(8));

-- Location: M4K_X17_Y24
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y22
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N14
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\,
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\);

-- Location: LCCOMB_X18_Y19_N0
\inst|dataOut[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(7) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(7))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datac => \inst|Mux3~clkctrl_outclk\,
	datad => \inst|dataOut\(7),
	combout => \inst|dataOut\(7));

-- Location: M4K_X17_Y20
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y16
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N16
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\);

-- Location: LCCOMB_X40_Y21_N24
\inst|dataOut[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(6) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(6))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datac => \inst|dataOut\(6),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(6));

-- Location: M4K_X41_Y24
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y22
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N18
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LCCOMB_X39_Y15_N16
\inst|dataOut[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(5) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(5))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(5),
	datac => \inst|dataOut\(5),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(5));

-- Location: M4K_X17_Y10
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y13
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N4
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LCCOMB_X31_Y17_N0
\inst|dataOut[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(4) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\data_in~combout\(4)))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\inst|dataOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(4),
	datac => \data_in~combout\(4),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(4));

-- Location: M4K_X41_Y16
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y15
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N22
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: LCCOMB_X46_Y15_N0
\inst|dataOut[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(3) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(3))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(3),
	datac => \inst|dataOut\(3),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(3));

-- Location: M4K_X17_Y11
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y12
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N8
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\);

-- Location: LCCOMB_X40_Y23_N24
\inst|dataOut[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(2) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(2))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(2),
	datac => \inst|dataOut\(2),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(2));

-- Location: M4K_X41_Y23
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y23
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y12_N10
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\))) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\,
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\,
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\);

-- Location: LCCOMB_X42_Y23_N0
\inst|dataOut[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(1) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(1))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(1),
	datac => \inst|Mux3~clkctrl_outclk\,
	datad => \inst|dataOut\(1),
	combout => \inst|dataOut\(1));

-- Location: M4K_X41_Y20
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y21
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y16_N0
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\,
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LCCOMB_X42_Y21_N16
\inst|dataOut[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(0) = (GLOBAL(\inst|Mux3~clkctrl_outclk\) & (\data_in~combout\(0))) # (!GLOBAL(\inst|Mux3~clkctrl_outclk\) & ((\inst|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(0),
	datac => \inst|dataOut\(0),
	datad => \inst|Mux3~clkctrl_outclk\,
	combout => \inst|dataOut\(0));

-- Location: M4K_X17_Y21
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y17
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst3|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_input_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portaaddrstall => \inst3|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst|Mux3~clkctrl_outclk\,
	ena0 => \inst3|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y16_N26
\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ = (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\)) # (!\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\,
	datab => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\,
	datac => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IO_D2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_D2);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IO_C1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_C1);

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pa4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pa4);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(15));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(14));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(13));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(12));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(11));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(10));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(9));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(8));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(7));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(6));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(5));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(3));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(2));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(1));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fd[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(0));
END structure;


