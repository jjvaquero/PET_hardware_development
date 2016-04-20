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

-- DATE "06/20/2012 13:05:06"

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
	IO_G16 : OUT std_logic;
	IO_M2 : OUT std_logic;
	fd : OUT std_logic_vector(15 DOWNTO 0);
	IO_E13 : IN std_logic;
	ifclk : IN std_logic;
	ren : IN std_logic
	);
END Template;

-- Design Ports Information
-- IO_G16	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IO_M2	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- IO_E13	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ren	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ifclk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_IO_G16 : std_logic;
SIGNAL ww_IO_M2 : std_logic;
SIGNAL ww_fd : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO_E13 : std_logic;
SIGNAL ww_ifclk : std_logic;
SIGNAL ww_ren : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dataOut[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ifclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|_clk0\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1\ : std_logic;
SIGNAL \inst4|altpll_component|_clk2\ : std_logic;
SIGNAL \inst|contador_tiempo[1]~18_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[6]~28_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[14]~45\ : std_logic;
SIGNAL \inst|contador_tiempo[15]~46_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM87\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM91\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM93\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM95\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM97\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM99\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM101\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM103\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM105\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM77\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4_OTERM25\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM79\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM85\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM81\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_OTERM115_OTERM143\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM83\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM89\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\ : std_logic;
SIGNAL \IO_E13~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM21\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11_OTERM61\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_OTERM155_OTERM179\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\ : std_logic;
SIGNAL \ren~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_Duplicate_13\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM9_OTERM181\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]_OTERM65\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|int_wrfull~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\ : std_logic;
SIGNAL \ifclk~combout\ : std_logic;
SIGNAL \ifclk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|dataOut[15]~0_combout\ : std_logic;
SIGNAL \inst|dataOut[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[0]~15_regout\ : std_logic;
SIGNAL \inst|contando~0_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[0]~16_regout\ : std_logic;
SIGNAL \inst|contador_tiempo[0]~17_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[1]~19\ : std_logic;
SIGNAL \inst|contador_tiempo[2]~20_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[2]~21\ : std_logic;
SIGNAL \inst|contador_tiempo[3]~22_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[3]~23\ : std_logic;
SIGNAL \inst|contador_tiempo[4]~25\ : std_logic;
SIGNAL \inst|contador_tiempo[5]~26_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[5]~27\ : std_logic;
SIGNAL \inst|contador_tiempo[6]~29\ : std_logic;
SIGNAL \inst|contador_tiempo[7]~31\ : std_logic;
SIGNAL \inst|contador_tiempo[8]~32_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[8]~33\ : std_logic;
SIGNAL \inst|contador_tiempo[9]~35\ : std_logic;
SIGNAL \inst|contador_tiempo[10]~36_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[10]~37\ : std_logic;
SIGNAL \inst|contador_tiempo[11]~39\ : std_logic;
SIGNAL \inst|contador_tiempo[12]~40_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[12]~41\ : std_logic;
SIGNAL \inst|contador_tiempo[13]~43\ : std_logic;
SIGNAL \inst|contador_tiempo[14]~44_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[13]~42_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[11]~38_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[9]~34_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[7]~30_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst|contador_tiempo[4]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|contador_tiempo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_IO_E13~combout\ : std_logic;
SIGNAL \ALT_INV_ifclk~clkctrl_outclk\ : std_logic;

BEGIN

IO_G16 <= ww_IO_G16;
IO_M2 <= ww_IO_M2;
fd <= ww_fd;
ww_IO_E13 <= IO_E13;
ww_ifclk <= ifclk;
ww_ren <= ren;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\(0) <= \inst|dataOut\(15);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\(0) <= \inst|dataOut\(15);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\(0) <= \inst|dataOut\(14);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\(0) <= \inst|dataOut\(14);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\(0) <= \inst|dataOut\(13);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\(0) <= \inst|dataOut\(13);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\(0) <= \inst|dataOut\(12);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\(0) <= \inst|dataOut\(12);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\(0) <= \inst|dataOut\(11);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\(0) <= \inst|dataOut\(11);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\(0) <= \inst|dataOut\(10);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\(0) <= \inst|dataOut\(10);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\(0) <= \inst|dataOut\(9);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\(0) <= \inst|dataOut\(9);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\(0) <= \inst|dataOut\(8);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\(0) <= \inst|dataOut\(8);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\(0) <= \inst|dataOut\(7);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\(0) <= \inst|dataOut\(7);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\(0) <= \inst|dataOut\(6);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\(0) <= \inst|dataOut\(6);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\(0) <= \inst|dataOut\(5);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\(0) <= \inst|dataOut\(5);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\(0) <= \inst|dataOut\(4);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\(0) <= \inst|dataOut\(4);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\(0) <= \inst|dataOut\(3);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\(0) <= \inst|dataOut\(3);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\(0) <= \inst|dataOut\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\(0) <= \inst|dataOut\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\(0) <= \inst|dataOut\(1);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\(0) <= \inst|dataOut\(1);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\(0) <= \inst|dataOut\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\(0) <= \inst|dataOut\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);

\inst4|altpll_component|pll_INCLK_bus\ <= (gnd & \ifclk~combout\);

\inst4|altpll_component|_clk0\ <= \inst4|altpll_component|pll_CLK_bus\(0);
\inst4|altpll_component|_clk1\ <= \inst4|altpll_component|pll_CLK_bus\(1);
\inst4|altpll_component|_clk2\ <= \inst4|altpll_component|pll_CLK_bus\(2);

\inst4|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|altpll_component|_clk1\);

\inst|dataOut[15]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|dataOut[15]~0_combout\);

\ifclk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ifclk~combout\);
\inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;
\inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0) <= NOT \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0);
\ALT_INV_IO_E13~combout\ <= NOT \IO_E13~combout\;
\ALT_INV_ifclk~clkctrl_outclk\ <= NOT \ifclk~clkctrl_outclk\;

-- Location: LCFF_X39_Y18_N29
\inst|contador_tiempo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[15]~46_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(15));

-- Location: LCFF_X39_Y18_N11
\inst|contador_tiempo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[6]~28_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(6));

-- Location: LCFF_X39_Y18_N1
\inst|contador_tiempo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[1]~18_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(1));

-- Location: PLL_1
\inst4|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 4,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 25,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
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
	n => 2,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|pll_INCLK_bus\,
	clk => \inst4|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X39_Y18_N0
\inst|contador_tiempo[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[1]~18_combout\ = (\inst|contador_tiempo\(1) & (\inst|contador_tiempo[0]~17_combout\ $ (VCC))) # (!\inst|contador_tiempo\(1) & (\inst|contador_tiempo[0]~17_combout\ & VCC))
-- \inst|contador_tiempo[1]~19\ = CARRY((\inst|contador_tiempo\(1) & \inst|contador_tiempo[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(1),
	datab => \inst|contador_tiempo[0]~17_combout\,
	datad => VCC,
	combout => \inst|contador_tiempo[1]~18_combout\,
	cout => \inst|contador_tiempo[1]~19\);

-- Location: LCCOMB_X39_Y18_N10
\inst|contador_tiempo[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[6]~28_combout\ = (\inst|contador_tiempo\(6) & (!\inst|contador_tiempo[5]~27\)) # (!\inst|contador_tiempo\(6) & ((\inst|contador_tiempo[5]~27\) # (GND)))
-- \inst|contador_tiempo[6]~29\ = CARRY((!\inst|contador_tiempo[5]~27\) # (!\inst|contador_tiempo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(6),
	datad => VCC,
	cin => \inst|contador_tiempo[5]~27\,
	combout => \inst|contador_tiempo[6]~28_combout\,
	cout => \inst|contador_tiempo[6]~29\);

-- Location: LCCOMB_X39_Y18_N26
\inst|contador_tiempo[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[14]~44_combout\ = (\inst|contador_tiempo\(14) & (!\inst|contador_tiempo[13]~43\)) # (!\inst|contador_tiempo\(14) & ((\inst|contador_tiempo[13]~43\) # (GND)))
-- \inst|contador_tiempo[14]~45\ = CARRY((!\inst|contador_tiempo[13]~43\) # (!\inst|contador_tiempo\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(14),
	datad => VCC,
	cin => \inst|contador_tiempo[13]~43\,
	combout => \inst|contador_tiempo[14]~44_combout\,
	cout => \inst|contador_tiempo[14]~45\);

-- Location: LCCOMB_X39_Y18_N28
\inst|contador_tiempo[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[15]~46_combout\ = \inst|contador_tiempo[14]~45\ $ (!\inst|contador_tiempo\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador_tiempo\(15),
	cin => \inst|contador_tiempo[14]~45\,
	combout => \inst|contador_tiempo[15]~46_combout\);

-- Location: LCCOMB_X40_Y14_N12
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(10))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(7) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCFF_X43_Y14_N1
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\);

-- Location: LCCOMB_X43_Y14_N0
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\);

-- Location: LCCOMB_X40_Y14_N4
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(7) $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\);

-- Location: LCFF_X38_Y15_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\);

-- Location: LCCOMB_X43_Y14_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & (!\IO_E13~combout\ & ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \IO_E13~combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCCOMB_X38_Y14_N22
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X40_Y16_N14
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X40_Y16_N8
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X39_Y14_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\);

-- Location: LCFF_X37_Y15_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCCOMB_X38_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\);

-- Location: LCCOMB_X39_Y14_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\);

-- Location: LCCOMB_X39_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\);

-- Location: LCCOMB_X42_Y14_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\);

-- Location: LCCOMB_X37_Y15_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\);

-- Location: LCCOMB_X38_Y15_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\);

-- Location: CLKCTRL_G3
\inst4|altpll_component|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y14_N6
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_NEW48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM101\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM101\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\);

-- Location: LCCOMB_X39_Y14_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_NEW50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ $ 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (((\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM91\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\);

-- Location: LCCOMB_X39_Y14_N4
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_NEW52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM95\)) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM95\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM93\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\);

-- Location: LCCOMB_X39_Y14_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_NEW54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM99\)) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM99\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM97\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\);

-- Location: LCCOMB_X39_Y14_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_NEW56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM105\)) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM105\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM103\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\);

-- Location: LCFF_X42_Y14_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_NEW_REG86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM87\);

-- Location: LCFF_X39_Y14_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_NEW_REG90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3_OTERM91\);

-- Location: LCFF_X39_Y14_N5
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_NEW_REG92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM93\);

-- Location: LCFF_X39_Y14_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_NEW_REG94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2_OTERM95\);

-- Location: LCFF_X39_Y14_N31
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_NEW_REG96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM97\);

-- Location: LCFF_X39_Y14_N15
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_NEW_REG98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1_OTERM99\);

-- Location: LCFF_X46_Y14_N7
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_NEW_REG100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM101\);

-- Location: LCFF_X39_Y14_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_NEW_REG102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM103\);

-- Location: LCFF_X38_Y14_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_NEW_REG104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0_OTERM105\);

-- Location: LCCOMB_X38_Y15_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\);

-- Location: LCCOMB_X38_Y15_N6
\inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\);

-- Location: LCFF_X38_Y15_N7
\inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0));

-- Location: LCFF_X38_Y15_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\);

-- Location: LCFF_X37_Y15_N1
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\);

-- Location: LCCOMB_X38_Y15_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\);

-- Location: LCFF_X38_Y15_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\);

-- Location: LCCOMB_X39_Y15_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X43_Y14_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27~feeder_combout\ = \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27~feeder_combout\);

-- Location: LCFF_X43_Y14_N31
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\);

-- Location: LCFF_X46_Y14_N15
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\);

-- Location: LCFF_X46_Y14_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_NEW_REG76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM77\);

-- Location: LCFF_X46_Y14_N21
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\);

-- Location: LCCOMB_X46_Y14_N20
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: LCFF_X46_Y14_N13
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\);

-- Location: LCCOMB_X46_Y14_N12
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_NEW62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\);

-- Location: LCCOMB_X43_Y14_N6
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ & \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\,
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCFF_X43_Y14_N7
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\);

-- Location: LCFF_X43_Y14_N17
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4_OTERM25\);

-- Location: LCFF_X46_Y14_N5
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\);

-- Location: LCCOMB_X43_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4_OTERM25\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\ & !\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4_OTERM25\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: LCCOMB_X46_Y14_N10
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\);

-- Location: LCFF_X46_Y14_N11
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_NEW_REG78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM79\);

-- Location: LCCOMB_X46_Y14_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_NEW44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM79\))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM77\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM79\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\);

-- Location: LCFF_X46_Y14_N9
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_NEW_REG84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM85\);

-- Location: LCCOMB_X46_Y14_N8
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_NEW42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM87\)) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM87\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM85\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\);

-- Location: LCFF_X46_Y14_N29
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_NEW_REG80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM81\);

-- Location: LCFF_X43_Y14_N13
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\);

-- Location: LCCOMB_X43_Y14_N12
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM15\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM13\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: LCCOMB_X42_Y14_N22
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCFF_X42_Y14_N23
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_OTERM115_NEW_REG142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_OTERM115_OTERM143\);

-- Location: LCCOMB_X42_Y14_N8
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_OTERM115_OTERM143\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_OTERM115_OTERM143\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: LCFF_X42_Y14_N9
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_NEW_REG2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\);

-- Location: LCCOMB_X46_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: LCCOMB_X40_Y14_N18
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\);

-- Location: LCFF_X40_Y14_N19
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\);

-- Location: LCFF_X40_Y14_N31
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\);

-- Location: LCCOMB_X40_Y14_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\);

-- Location: LCFF_X40_Y14_N17
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\);

-- Location: LCCOMB_X46_Y14_N24
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\);

-- Location: LCFF_X46_Y14_N25
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\);

-- Location: LCCOMB_X40_Y14_N28
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X40_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\);

-- Location: LCCOMB_X46_Y14_N0
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\);

-- Location: LCFF_X46_Y14_N1
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_NEW_REG82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM83\);

-- Location: LCCOMB_X46_Y14_N28
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_NEW46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM83\))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM81\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM83\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\);

-- Location: LCCOMB_X46_Y14_N22
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]_OTERM49\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]_OTERM45\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]_OTERM43\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]_OTERM47\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: LCFF_X46_Y14_N23
\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_NEW_REG88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM89\);

-- Location: LCCOMB_X46_Y14_N14
\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_NEW58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & ((\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM89\))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM89\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\);

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_E13~I\ : cycloneii_io
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
	padio => ww_IO_E13,
	combout => \IO_E13~combout\);

-- Location: LCCOMB_X43_Y14_N18
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\ & (!\IO_E13~combout\ & ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9_OTERM59\,
	datad => \IO_E13~combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCFF_X43_Y14_N19
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM21\);

-- Location: LCCOMB_X46_Y14_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM29\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1_OTERM27\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: LCFF_X46_Y14_N31
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_NEW_REG18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\);

-- Location: LCCOMB_X46_Y14_N4
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM21\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM17\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM21\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3_OTERM11\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2_OTERM19\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: LCCOMB_X42_Y14_N12
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCFF_X42_Y14_N13
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_NEW_REG6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\);

-- Location: LCCOMB_X46_Y14_N18
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: LCFF_X46_Y14_N19
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_NEW_REG0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\);

-- Location: LCCOMB_X46_Y14_N26
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM3\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM1\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM5\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7_OTERM7\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: LCCOMB_X39_Y15_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\);

-- Location: LCFF_X39_Y15_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~31_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6));

-- Location: LCCOMB_X39_Y15_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCFF_X39_Y15_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\);

-- Location: LCCOMB_X38_Y15_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\);

-- Location: LCFF_X38_Y15_N1
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\);

-- Location: LCCOMB_X38_Y15_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\);

-- Location: LCCOMB_X38_Y15_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\);

-- Location: LCFF_X38_Y15_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\);

-- Location: LCCOMB_X38_Y15_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\);

-- Location: LCFF_X38_Y15_N23
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\);

-- Location: LCCOMB_X38_Y15_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\);

-- Location: LCFF_X42_Y14_N21
\inst1|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X38_Y14_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_combout\);

-- Location: LCFF_X38_Y14_N9
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_NEW_REG156\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\);

-- Location: LCCOMB_X43_Y14_N20
\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11_NEW60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11_OTERM61\ = (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\)) # 
-- (!\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11_OTERM61\);

-- Location: LCFF_X43_Y14_N21
\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11_OTERM61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X38_Y14_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCCOMB_X43_Y14_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCFF_X44_Y14_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_OTERM155_NEW_REG178\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_OTERM155_OTERM179\);

-- Location: LCFF_X38_Y14_N15
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X44_Y14_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_OTERM155_OTERM179\ $ (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_OTERM155_OTERM179\,
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\);

-- Location: LCCOMB_X38_Y14_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_combout\);

-- Location: LCFF_X38_Y14_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_NEW_REG150\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\);

-- Location: LCFF_X38_Y14_N21
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X43_Y14_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_combout\);

-- Location: LCFF_X43_Y14_N23
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_NEW_REG140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\);

-- Location: LCFF_X38_Y14_N5
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X38_Y14_N20
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(6) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(6) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y14_N31
\inst1|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCFF_X38_Y14_N19
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCFF_X38_Y14_N11
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X38_Y14_N18
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X38_Y14_N24
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ & (!\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datab => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCFF_X38_Y14_N29
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X39_Y15_N14
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X39_Y15_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\);

-- Location: LCFF_X39_Y15_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~27_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X39_Y15_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\);

-- Location: LCFF_X39_Y15_N23
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~29_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4));

-- Location: LCCOMB_X38_Y14_N4
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X39_Y15_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X39_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\);

-- Location: LCFF_X39_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~30_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5));

-- Location: LCFF_X38_Y14_N23
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X38_Y14_N14
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y14_N10
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X38_Y14_N6
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X38_Y14_N28
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X38_Y14_N0
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ = (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ & ((\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(1))) # (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X38_Y14_N1
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\);

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

-- Location: LCCOMB_X39_Y15_N28
\inst1|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\) # (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	datad => \ren~combout\,
	combout => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCFF_X40_Y14_N1
\inst1|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X40_Y14_N8
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X38_Y15_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\);

-- Location: LCFF_X38_Y15_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\);

-- Location: LCCOMB_X38_Y15_N14
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\);

-- Location: LCFF_X38_Y15_N15
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\);

-- Location: LCCOMB_X38_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\) # 
-- ((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\);

-- Location: LCCOMB_X40_Y14_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\);

-- Location: LCFF_X40_Y14_N23
\inst1|dcfifo_component|auto_generated|rdptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCFF_X40_Y14_N11
\inst1|dcfifo_component|auto_generated|rdptr_g[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCCOMB_X40_Y14_N10
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(10) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) & (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X40_Y14_N2
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X40_Y14_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(8) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & (\inst1|dcfifo_component|auto_generated|rdptr_g\(8) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y15_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\);

-- Location: LCFF_X38_Y15_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\);

-- Location: LCCOMB_X38_Y15_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X37_Y15_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ $ 
-- (((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\);

-- Location: LCFF_X37_Y15_N21
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\);

-- Location: LCCOMB_X37_Y15_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24_combout\);

-- Location: LCFF_X37_Y15_N7
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\);

-- Location: LCCOMB_X37_Y15_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\);

-- Location: LCFF_X37_Y15_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\);

-- Location: LCCOMB_X37_Y15_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~24_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\);

-- Location: LCFF_X40_Y14_N21
\inst1|dcfifo_component|auto_generated|rdptr_g[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(13));

-- Location: LCCOMB_X40_Y14_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (!\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X43_Y14_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\);

-- Location: LCFF_X43_Y14_N29
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\);

-- Location: LCCOMB_X39_Y14_N0
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) $ (((\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\ & !\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\,
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\);

-- Location: LCFF_X40_Y14_N7
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X39_Y14_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ = (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\ & !\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\,
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\);

-- Location: LCCOMB_X39_Y14_N2
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\);

-- Location: LCFF_X39_Y14_N3
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_NEW_REG146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\);

-- Location: LCCOMB_X39_Y14_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\);

-- Location: LCCOMB_X39_Y14_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\);

-- Location: LCFF_X39_Y14_N9
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\);

-- Location: LCFF_X40_Y16_N11
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\);

-- Location: LCCOMB_X39_Y14_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_Duplicate\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_Duplicate_13\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_Duplicate_13\);

-- Location: LCFF_X39_Y14_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM9_NEW_REG180\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_Duplicate_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM9_OTERM181\);

-- Location: LCCOMB_X39_Y14_N20
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM9_OTERM181\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_OTERM129_OTERM147\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM9_OTERM181\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCCOMB_X40_Y16_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\);

-- Location: LCFF_X40_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(11));

-- Location: LCFF_X43_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(12));

-- Location: LCCOMB_X40_Y14_N26
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(12))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X40_Y14_N14
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCFF_X43_Y14_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\);

-- Location: LCCOMB_X43_Y14_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\);

-- Location: LCCOMB_X43_Y14_N14
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(12))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y14_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~9_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\) # 
-- ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X40_Y14_N25
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\);

-- Location: LCCOMB_X42_Y14_N4
\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ = (!\IO_E13~combout\ & ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datad => \IO_E13~combout\,
	combout => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\);

-- Location: LCCOMB_X43_Y14_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]_NEW64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]_OTERM65\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]_OTERM65\);

-- Location: LCFF_X43_Y14_N9
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]_OTERM65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X43_Y14_N4
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	datad => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\);

-- Location: LCFF_X43_Y14_N5
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_NEW_REG136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\);

-- Location: LCCOMB_X38_Y14_N2
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_combout\);

-- Location: LCFF_X38_Y14_N3
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_NEW_REG138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\);

-- Location: LCCOMB_X38_Y14_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCFF_X39_Y14_N7
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_NEW_REG182\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\);

-- Location: LCCOMB_X39_Y14_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ = (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\ & 
-- (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & !\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_OTERM153_OTERM183\,
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\);

-- Location: LCCOMB_X39_Y14_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\);

-- Location: LCFF_X40_Y16_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\);

-- Location: LCCOMB_X40_Y16_N22
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\);

-- Location: LCFF_X40_Y14_N13
\inst1|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X40_Y14_N6
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(7) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(10) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(7) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X40_Y16_N2
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(12))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X40_Y16_N20
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ & (!\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	datab => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X40_Y16_N18
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X40_Y16_N4
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X40_Y16_N0
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y16_N6
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X40_Y16_N16
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ & ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\) # 
-- (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\)))) # (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\) # ((!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X40_Y16_N17
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\);

-- Location: LCCOMB_X39_Y15_N24
\inst1|dcfifo_component|auto_generated|p0addr~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\);

-- Location: LCFF_X39_Y15_N25
\inst1|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCCOMB_X39_Y15_N26
\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\) # (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\)))) # 
-- (!\inst1|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ren~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	datac => \inst1|dcfifo_component|auto_generated|p0addr~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: LCFF_X39_Y15_N31
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X37_Y15_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X39_Y15_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\);

-- Location: LCFF_X39_Y15_N21
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~28_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3));

-- Location: LCCOMB_X39_Y15_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X38_Y15_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & 
-- !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCFF_X38_Y15_N9
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\);

-- Location: LCCOMB_X38_Y15_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X37_Y15_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\);

-- Location: LCCOMB_X37_Y15_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\);

-- Location: LCFF_X37_Y15_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\);

-- Location: LCCOMB_X37_Y15_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22_combout\);

-- Location: LCCOMB_X37_Y15_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~22_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\);

-- Location: LCCOMB_X37_Y15_N14
\inst1|dcfifo_component|auto_generated|ram_address_b[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ram_address_b\(12) = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\,
	combout => \inst1|dcfifo_component|auto_generated|ram_address_b\(12));

-- Location: LCCOMB_X37_Y15_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~feeder_combout\ = \inst1|dcfifo_component|auto_generated|ram_address_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~feeder_combout\);

-- Location: LCFF_X37_Y15_N31
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\);

-- Location: LCCOMB_X37_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: LCFF_X37_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X37_Y15_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: LCFF_X37_Y15_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCCOMB_X37_Y15_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: LCFF_X37_Y15_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X39_Y15_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\);

-- Location: LCFF_X39_Y15_N9
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~26_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCFF_X42_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCFF_X42_Y14_N29
\inst1|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X42_Y14_N28
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0_OTERM63\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCFF_X42_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCCOMB_X42_Y14_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCFF_X42_Y14_N11
\inst1|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X42_Y14_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(5))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X43_Y14_N10
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X42_Y14_N14
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(6) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~15_OTERM151\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~14_OTERM141\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X42_Y14_N10
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(5) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~17_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~16_OTERM139\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y14_N30
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~18_OTERM157\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X42_Y14_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (!\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X42_Y14_N26
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_OTERM137\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X42_Y14_N16
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X42_Y14_N17
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\);

-- Location: LCCOMB_X42_Y14_N18
\inst1|dcfifo_component|auto_generated|int_wrfull\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|int_wrfull~combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	combout => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\);

-- Location: LCFF_X40_Y16_N31
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\);

-- Location: LCCOMB_X40_Y16_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\);

-- Location: LCCOMB_X40_Y16_N26
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1) = (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\,
	datab => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1));

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

-- Location: CLKCTRL_G2
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

-- Location: LCFF_X40_Y18_N1
\inst|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \IO_E13~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(0));

-- Location: LCCOMB_X40_Y18_N20
\inst|dataOut[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut[15]~0_combout\ = (!\IO_E13~combout\ & \inst|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IO_E13~combout\,
	datad => \inst|EA\(0),
	combout => \inst|dataOut[15]~0_combout\);

-- Location: CLKCTRL_G6
\inst|dataOut[15]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|dataOut[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|dataOut[15]~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y18_N8
\inst|dataOut[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(15) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(15))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(15),
	datac => \inst|dataOut\(15),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(15));

-- Location: LCCOMB_X39_Y13_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_RTM0135_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~10_NEW_REG132_RTM0134_combout\);

-- Location: LCCOMB_X37_Y14_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_RTM0131_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~8_NEW_REG128_RTM0130_combout\);

-- Location: LCFF_X40_Y16_N13
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_IO_E13~combout\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\);

-- Location: LCCOMB_X40_Y16_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~12_combout\);

-- Location: M4K_X17_Y14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y16_N28
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0) = (\inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~11_combout\,
	datab => \inst1|dcfifo_component|auto_generated|valid_wrreq~_Duplicate_1\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~13_combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0));

-- Location: M4K_X17_Y11
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\);

-- Location: LCFF_X37_Y15_N15
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0));

-- Location: LCCOMB_X37_Y15_N22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\))))) # (!\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~25_combout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\);

-- Location: LCFF_X37_Y15_N23
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0));

-- Location: LCFF_X25_Y12_N1
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0));

-- Location: LCCOMB_X25_Y12_N10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\);

-- Location: LCFF_X39_Y18_N31
\inst|contador_tiempo[0]~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo[0]~15_regout\);

-- Location: LCCOMB_X40_Y18_N14
\inst|contando~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contando~0_combout\ = (\inst|EA\(0)) # (\IO_E13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EA\(0),
	datad => \IO_E13~combout\,
	combout => \inst|contando~0_combout\);

-- Location: LCFF_X40_Y18_N31
\inst|contador_tiempo[0]~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \inst|contando~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo[0]~16_regout\);

-- Location: LCCOMB_X39_Y18_N30
\inst|contador_tiempo[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[0]~17_combout\ = \inst|contador_tiempo[0]~15_regout\ $ (\inst|contador_tiempo[0]~16_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|contador_tiempo[0]~15_regout\,
	datad => \inst|contador_tiempo[0]~16_regout\,
	combout => \inst|contador_tiempo[0]~17_combout\);

-- Location: LCCOMB_X39_Y18_N2
\inst|contador_tiempo[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[2]~20_combout\ = (\inst|contador_tiempo\(2) & (!\inst|contador_tiempo[1]~19\)) # (!\inst|contador_tiempo\(2) & ((\inst|contador_tiempo[1]~19\) # (GND)))
-- \inst|contador_tiempo[2]~21\ = CARRY((!\inst|contador_tiempo[1]~19\) # (!\inst|contador_tiempo\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(2),
	datad => VCC,
	cin => \inst|contador_tiempo[1]~19\,
	combout => \inst|contador_tiempo[2]~20_combout\,
	cout => \inst|contador_tiempo[2]~21\);

-- Location: LCFF_X39_Y18_N3
\inst|contador_tiempo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[2]~20_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(2));

-- Location: LCCOMB_X39_Y18_N4
\inst|contador_tiempo[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[3]~22_combout\ = (\inst|contador_tiempo\(3) & (\inst|contador_tiempo[2]~21\ $ (GND))) # (!\inst|contador_tiempo\(3) & (!\inst|contador_tiempo[2]~21\ & VCC))
-- \inst|contador_tiempo[3]~23\ = CARRY((\inst|contador_tiempo\(3) & !\inst|contador_tiempo[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(3),
	datad => VCC,
	cin => \inst|contador_tiempo[2]~21\,
	combout => \inst|contador_tiempo[3]~22_combout\,
	cout => \inst|contador_tiempo[3]~23\);

-- Location: LCFF_X39_Y18_N5
\inst|contador_tiempo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[3]~22_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(3));

-- Location: LCCOMB_X39_Y18_N6
\inst|contador_tiempo[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[4]~24_combout\ = (\inst|contador_tiempo\(4) & (!\inst|contador_tiempo[3]~23\)) # (!\inst|contador_tiempo\(4) & ((\inst|contador_tiempo[3]~23\) # (GND)))
-- \inst|contador_tiempo[4]~25\ = CARRY((!\inst|contador_tiempo[3]~23\) # (!\inst|contador_tiempo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(4),
	datad => VCC,
	cin => \inst|contador_tiempo[3]~23\,
	combout => \inst|contador_tiempo[4]~24_combout\,
	cout => \inst|contador_tiempo[4]~25\);

-- Location: LCCOMB_X39_Y18_N8
\inst|contador_tiempo[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[5]~26_combout\ = (\inst|contador_tiempo\(5) & (\inst|contador_tiempo[4]~25\ $ (GND))) # (!\inst|contador_tiempo\(5) & (!\inst|contador_tiempo[4]~25\ & VCC))
-- \inst|contador_tiempo[5]~27\ = CARRY((\inst|contador_tiempo\(5) & !\inst|contador_tiempo[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(5),
	datad => VCC,
	cin => \inst|contador_tiempo[4]~25\,
	combout => \inst|contador_tiempo[5]~26_combout\,
	cout => \inst|contador_tiempo[5]~27\);

-- Location: LCFF_X39_Y18_N9
\inst|contador_tiempo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[5]~26_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(5));

-- Location: LCCOMB_X39_Y18_N12
\inst|contador_tiempo[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[7]~30_combout\ = (\inst|contador_tiempo\(7) & (\inst|contador_tiempo[6]~29\ $ (GND))) # (!\inst|contador_tiempo\(7) & (!\inst|contador_tiempo[6]~29\ & VCC))
-- \inst|contador_tiempo[7]~31\ = CARRY((\inst|contador_tiempo\(7) & !\inst|contador_tiempo[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(7),
	datad => VCC,
	cin => \inst|contador_tiempo[6]~29\,
	combout => \inst|contador_tiempo[7]~30_combout\,
	cout => \inst|contador_tiempo[7]~31\);

-- Location: LCCOMB_X39_Y18_N14
\inst|contador_tiempo[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[8]~32_combout\ = (\inst|contador_tiempo\(8) & (!\inst|contador_tiempo[7]~31\)) # (!\inst|contador_tiempo\(8) & ((\inst|contador_tiempo[7]~31\) # (GND)))
-- \inst|contador_tiempo[8]~33\ = CARRY((!\inst|contador_tiempo[7]~31\) # (!\inst|contador_tiempo\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(8),
	datad => VCC,
	cin => \inst|contador_tiempo[7]~31\,
	combout => \inst|contador_tiempo[8]~32_combout\,
	cout => \inst|contador_tiempo[8]~33\);

-- Location: LCFF_X39_Y18_N15
\inst|contador_tiempo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[8]~32_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(8));

-- Location: LCCOMB_X39_Y18_N16
\inst|contador_tiempo[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[9]~34_combout\ = (\inst|contador_tiempo\(9) & (\inst|contador_tiempo[8]~33\ $ (GND))) # (!\inst|contador_tiempo\(9) & (!\inst|contador_tiempo[8]~33\ & VCC))
-- \inst|contador_tiempo[9]~35\ = CARRY((\inst|contador_tiempo\(9) & !\inst|contador_tiempo[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(9),
	datad => VCC,
	cin => \inst|contador_tiempo[8]~33\,
	combout => \inst|contador_tiempo[9]~34_combout\,
	cout => \inst|contador_tiempo[9]~35\);

-- Location: LCCOMB_X39_Y18_N18
\inst|contador_tiempo[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[10]~36_combout\ = (\inst|contador_tiempo\(10) & (!\inst|contador_tiempo[9]~35\)) # (!\inst|contador_tiempo\(10) & ((\inst|contador_tiempo[9]~35\) # (GND)))
-- \inst|contador_tiempo[10]~37\ = CARRY((!\inst|contador_tiempo[9]~35\) # (!\inst|contador_tiempo\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(10),
	datad => VCC,
	cin => \inst|contador_tiempo[9]~35\,
	combout => \inst|contador_tiempo[10]~36_combout\,
	cout => \inst|contador_tiempo[10]~37\);

-- Location: LCFF_X39_Y18_N19
\inst|contador_tiempo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[10]~36_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(10));

-- Location: LCCOMB_X39_Y18_N20
\inst|contador_tiempo[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[11]~38_combout\ = (\inst|contador_tiempo\(11) & (\inst|contador_tiempo[10]~37\ $ (GND))) # (!\inst|contador_tiempo\(11) & (!\inst|contador_tiempo[10]~37\ & VCC))
-- \inst|contador_tiempo[11]~39\ = CARRY((\inst|contador_tiempo\(11) & !\inst|contador_tiempo[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(11),
	datad => VCC,
	cin => \inst|contador_tiempo[10]~37\,
	combout => \inst|contador_tiempo[11]~38_combout\,
	cout => \inst|contador_tiempo[11]~39\);

-- Location: LCCOMB_X39_Y18_N22
\inst|contador_tiempo[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[12]~40_combout\ = (\inst|contador_tiempo\(12) & (!\inst|contador_tiempo[11]~39\)) # (!\inst|contador_tiempo\(12) & ((\inst|contador_tiempo[11]~39\) # (GND)))
-- \inst|contador_tiempo[12]~41\ = CARRY((!\inst|contador_tiempo[11]~39\) # (!\inst|contador_tiempo\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(12),
	datad => VCC,
	cin => \inst|contador_tiempo[11]~39\,
	combout => \inst|contador_tiempo[12]~40_combout\,
	cout => \inst|contador_tiempo[12]~41\);

-- Location: LCFF_X39_Y18_N23
\inst|contador_tiempo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[12]~40_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(12));

-- Location: LCCOMB_X39_Y18_N24
\inst|contador_tiempo[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|contador_tiempo[13]~42_combout\ = (\inst|contador_tiempo\(13) & (\inst|contador_tiempo[12]~41\ $ (GND))) # (!\inst|contador_tiempo\(13) & (!\inst|contador_tiempo[12]~41\ & VCC))
-- \inst|contador_tiempo[13]~43\ = CARRY((\inst|contador_tiempo\(13) & !\inst|contador_tiempo[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(13),
	datad => VCC,
	cin => \inst|contador_tiempo[12]~41\,
	combout => \inst|contador_tiempo[13]~42_combout\,
	cout => \inst|contador_tiempo[13]~43\);

-- Location: LCFF_X39_Y18_N27
\inst|contador_tiempo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[14]~44_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(14));

-- Location: LCCOMB_X40_Y10_N0
\inst|dataOut[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(14) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|contador_tiempo\(14)))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|dataOut\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(14),
	datac => \inst|contador_tiempo\(14),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(14));

-- Location: M4K_X41_Y10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y9
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\);

-- Location: LCFF_X39_Y18_N25
\inst|contador_tiempo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[13]~42_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(13));

-- Location: LCCOMB_X18_Y16_N16
\inst|dataOut[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(13) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(13))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(13),
	datac => \inst|dataOut\(13),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(13));

-- Location: M4K_X17_Y15
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N30
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\);

-- Location: LCCOMB_X40_Y22_N0
\inst|dataOut[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(12) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(12))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(12),
	datac => \inst|dataOut\(12),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(12));

-- Location: M4K_X41_Y21
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N24
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\);

-- Location: LCFF_X39_Y18_N21
\inst|contador_tiempo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[11]~38_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(11));

-- Location: LCCOMB_X40_Y12_N16
\inst|dataOut[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(11) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(11))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(11),
	datac => \inst|dataOut\(11),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(11));

-- Location: M4K_X41_Y11
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\);

-- Location: LCCOMB_X16_Y21_N16
\inst|dataOut[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(10) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(10))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(10),
	datac => \inst|dataOut\(10),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(10));

-- Location: M4K_X17_Y19
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y17
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\);

-- Location: LCFF_X39_Y18_N17
\inst|contador_tiempo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[9]~34_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(9));

-- Location: LCCOMB_X18_Y18_N0
\inst|dataOut[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(9) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|contador_tiempo\(9)))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|dataOut\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(9),
	datac => \inst|contador_tiempo\(9),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(9));

-- Location: M4K_X17_Y18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\);

-- Location: LCCOMB_X40_Y13_N0
\inst|dataOut[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(8) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(8))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(8),
	datac => \inst|dataOut\(8),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(8));

-- Location: M4K_X17_Y13
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y13
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N0
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\);

-- Location: LCFF_X39_Y18_N13
\inst|contador_tiempo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[7]~30_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(7));

-- Location: LCCOMB_X18_Y11_N0
\inst|dataOut[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(7) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|contador_tiempo\(7)))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|dataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut\(7),
	datac => \inst|contador_tiempo\(7),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(7));

-- Location: M4K_X17_Y12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y9
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\);

-- Location: LCCOMB_X40_Y20_N0
\inst|dataOut[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(6) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(6))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(6),
	datab => \inst|dataOut\(6),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(6));

-- Location: M4K_X41_Y19
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N26
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\);

-- Location: LCCOMB_X18_Y21_N24
\inst|dataOut[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(5) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(5))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(5),
	datac => \inst|dataOut\(5),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(5));

-- Location: M4K_X17_Y21
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N28
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\);

-- Location: LCFF_X39_Y18_N7
\inst|contador_tiempo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst|contador_tiempo[4]~24_combout\,
	ena => \inst|contando~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|contador_tiempo\(4));

-- Location: LCCOMB_X42_Y17_N8
\inst|dataOut[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(4) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(4))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(4),
	datac => \inst|dataOut\(4),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(4));

-- Location: M4K_X41_Y14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y23
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst|dataOut[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(3) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(3))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador_tiempo\(3),
	datac => \inst|dataOut\(3),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(3));

-- Location: M4K_X17_Y8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\);

-- Location: LCCOMB_X42_Y10_N8
\inst|dataOut[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(2) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(2))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(2),
	datac => \inst|dataOut\(2),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(2));

-- Location: M4K_X41_Y7
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y12_N18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\);

-- Location: LCCOMB_X40_Y15_N24
\inst|dataOut[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(1) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo\(1))) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo\(1),
	datac => \inst|dataOut\(1),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(1));

-- Location: M4K_X41_Y16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y15
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y12_N16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\);

-- Location: LCCOMB_X40_Y17_N24
\inst|dataOut[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataOut\(0) = (GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & (\inst|contador_tiempo[0]~17_combout\)) # (!GLOBAL(\inst|dataOut[15]~0clkctrl_outclk\) & ((\inst|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador_tiempo[0]~17_combout\,
	datac => \inst|dataOut\(0),
	datad => \inst|dataOut[15]~0clkctrl_outclk\,
	combout => \inst|dataOut\(0));

-- Location: M4K_X41_Y17
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_hnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	portaaddrstall => \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\,
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \ALT_INV_IO_E13~combout\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode17|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y12_N10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IO_G16~I\ : cycloneii_io
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
	datain => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_G16);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IO_M2~I\ : cycloneii_io
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
	datain => \ALT_INV_IO_E13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_M2);

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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\,
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
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fd(0));
END structure;


