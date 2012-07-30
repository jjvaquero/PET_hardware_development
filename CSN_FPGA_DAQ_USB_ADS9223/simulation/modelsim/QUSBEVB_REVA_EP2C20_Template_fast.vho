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

-- DATE "07/30/2012 11:57:54"

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
	IO_C15 : OUT std_logic;
	IO_G16 : OUT std_logic;
	IO_M2 : OUT std_logic;
	fd : OUT std_logic_vector(15 DOWNTO 0);
	IO_E13 : IN std_logic;
	ifclk : IN std_logic;
	ren : IN std_logic;
	data_in : IN std_logic_vector(11 DOWNTO 0)
	);
END Template;

-- Design Ports Information
-- IO_C15	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_IO_C15 : std_logic;
SIGNAL ww_IO_G16 : std_logic;
SIGNAL ww_IO_M2 : std_logic;
SIGNAL ww_fd : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO_E13 : std_logic;
SIGNAL ww_ifclk : std_logic;
SIGNAL ww_ren : std_logic;
SIGNAL ww_data_in : std_logic_vector(11 DOWNTO 0);
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
SIGNAL \inst4|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|q5_Entrada~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ifclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|valClk~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|_clk0\ : std_logic;
SIGNAL \inst4|altpll_component|_clk2\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|cuenta[1]~2_combout\ : std_logic;
SIGNAL \inst2|valClk[4]~13_combout\ : std_logic;
SIGNAL \inst2|valClk[7]~14_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ : std_logic;
SIGNAL \inst4|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Mux0~3_RESYN54_BDD55\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
SIGNAL \IO_E13~combout\ : std_logic;
SIGNAL \inst2|valClk[0]~10_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|valClk[1]~9_combout\ : std_logic;
SIGNAL \inst2|cuenta[0]~1_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|valClk~0_combout\ : std_logic;
SIGNAL \inst2|valClk~5_combout\ : std_logic;
SIGNAL \inst2|valClk[6]~11_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|valClk[2]~8_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|valClk[5]~12_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|clkSig~0_combout\ : std_logic;
SIGNAL \inst2|clkSig~combout\ : std_logic;
SIGNAL \inst2|Mux0~0_RESYN22_BDD23\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|valClk~6_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_RESYN20_BDD21\ : std_logic;
SIGNAL \inst2|valClk~3_combout\ : std_logic;
SIGNAL \inst2|valClk~4_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|valClk[8]~15_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|Mux0~3_RESYN52_BDD53\ : std_logic;
SIGNAL \inst2|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|EP[0]~0_combout\ : std_logic;
SIGNAL \inst2|clkSig~1_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|valClk~1_combout\ : std_logic;
SIGNAL \inst2|valClk~1clkctrl_outclk\ : std_logic;
SIGNAL \inst2|valClk[3]~7_combout\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|valClk~2_combout\ : std_logic;
SIGNAL \inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~32_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM5\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM7\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~18_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~17_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~15_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~14_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~16_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\ : std_logic;
SIGNAL \ren~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~25_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~31_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~13_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~26_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~27_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~28_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~29_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|int_wrfull~combout\ : std_logic;
SIGNAL \ifclk~combout\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|q0_Entrada~regout\ : std_logic;
SIGNAL \inst3|q1_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q1_Entrada~regout\ : std_logic;
SIGNAL \inst3|q2_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q2_Entrada~regout\ : std_logic;
SIGNAL \inst3|q3_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q3_Entrada~regout\ : std_logic;
SIGNAL \inst3|q4_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q4_Entrada~regout\ : std_logic;
SIGNAL \inst3|q5_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q5_Entrada~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ : std_logic;
SIGNAL \ifclk~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|q5_Entrada~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|valClk\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_ifclk~clkctrl_outclk\ : std_logic;

BEGIN

IO_C15 <= ww_IO_C15;
IO_G16 <= ww_IO_G16;
IO_M2 <= ww_IO_M2;
fd <= ww_fd;
ww_IO_E13 <= IO_E13;
ww_ifclk <= ifclk;
ww_ren <= ren;
ww_data_in <= data_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\(0) <= \~GND~combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\(0) <= \data_in~combout\(11);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\(0) <= \data_in~combout\(11);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\(0) <= \data_in~combout\(10);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\(0) <= \data_in~combout\(10);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\(0) <= \data_in~combout\(9);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\(0) <= \data_in~combout\(9);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\(0) <= \data_in~combout\(8);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\(0) <= \data_in~combout\(8);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\(0) <= \data_in~combout\(7);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\(0) <= \data_in~combout\(7);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\(0) <= \data_in~combout\(6);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\(0) <= \data_in~combout\(6);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\(0) <= \data_in~combout\(5);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\(0) <= \data_in~combout\(5);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\(0) <= \data_in~combout\(4);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\(0) <= \data_in~combout\(4);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\(0) <= \data_in~combout\(3);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\(0) <= \data_in~combout\(3);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\(0) <= \data_in~combout\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\(0) <= \data_in~combout\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\(0) <= \data_in~combout\(1);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\(0) <= \data_in~combout\(1);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\(0) <= \data_in~combout\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\(0) <= \data_in~combout\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);

\inst4|altpll_component|pll_INCLK_bus\ <= (gnd & \ifclk~combout\);

\inst4|altpll_component|_clk0\ <= \inst4|altpll_component|pll_CLK_bus\(0);
\inst4|altpll_component|_clk1\ <= \inst4|altpll_component|pll_CLK_bus\(1);
\inst4|altpll_component|_clk2\ <= \inst4|altpll_component|pll_CLK_bus\(2);

\inst4|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|altpll_component|_clk0\);

\inst3|q5_Entrada~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|q5_Entrada~regout\);

\ifclk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ifclk~combout\);

\inst4|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|altpll_component|_clk1\);

\inst2|valClk~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|valClk~1_combout\);
\inst5|ALT_INV_Mux0~2_combout\ <= NOT \inst5|Mux0~2_combout\;
\inst1|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\ <= NOT \inst1|dcfifo_component|auto_generated|int_wrfull~combout\;
\inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;
\inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0) <= NOT \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0);
\ALT_INV_ifclk~clkctrl_outclk\ <= NOT \ifclk~clkctrl_outclk\;

-- Location: PLL_1
\inst4|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 6,
	c1_initial => 1,
	c1_low => 6,
	c1_mode => "even",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 12,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 25,
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

-- Location: LCCOMB_X26_Y23_N2
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst2|cuenta[1]~2_combout\ & (\inst2|cuenta[0]~1_combout\ $ (VCC))) # (!\inst2|cuenta[1]~2_combout\ & (\inst2|cuenta[0]~1_combout\ & VCC))
-- \inst2|Add0~1\ = CARRY((\inst2|cuenta[1]~2_combout\ & \inst2|cuenta[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta[1]~2_combout\,
	datab => \inst2|cuenta[0]~1_combout\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X26_Y23_N12
\inst2|cuenta[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cuenta[1]~2_combout\ = (!\inst2|LessThan0~5_combout\ & (\inst2|Add0~0_combout\ & (\inst2|EA\(0) & !\inst2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~5_combout\,
	datab => \inst2|Add0~0_combout\,
	datac => \inst2|EA\(0),
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|cuenta[1]~2_combout\);

-- Location: LCCOMB_X24_Y23_N10
\inst2|valClk[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[4]~13_combout\ = (\inst2|Add1~8_combout\ & \inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~8_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|valClk[4]~13_combout\);

-- Location: LCCOMB_X25_Y23_N18
\inst2|valClk[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[7]~14_combout\ = (\inst2|Add1~14_combout\ & \inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~14_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|valClk[7]~14_combout\);

-- Location: LCFF_X20_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\);

-- Location: LCCOMB_X20_Y18_N8
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2) 
-- & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(13))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ = (!\inst1|dcfifo_component|auto_generated|int_wrfull~combout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datac => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb|data_wire[0]~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCFF_X24_Y18_N3
\inst1|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCFF_X20_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\);

-- Location: LCCOMB_X20_Y18_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCFF_X22_Y15_N7
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]~feeder_combout\,
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0));

-- Location: LCFF_X21_Y18_N21
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ram_address_a\(12),
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\);

-- Location: LCFF_X21_Y18_N29
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: LCFF_X22_Y15_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCCOMB_X21_Y18_N20
\inst1|dcfifo_component|auto_generated|ram_address_a[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ram_address_a\(12) = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	combout => \inst1|dcfifo_component|auto_generated|ram_address_a\(12));

-- Location: LCCOMB_X21_Y18_N28
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~12_combout\);

-- Location: LCCOMB_X22_Y15_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\);

-- Location: LCCOMB_X20_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~33_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst2|valClk[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(4) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(4))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(4),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[4]~13_combout\,
	combout => \inst2|valClk\(4));

-- Location: LCCOMB_X25_Y23_N20
\inst2|valClk[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(7) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(7))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(7),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[7]~14_combout\,
	combout => \inst2|valClk\(7));

-- Location: CLKCTRL_G3
\inst4|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y23_N24
\inst2|Mux0~3_RESYN54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_RESYN54_BDD55\ = (!\inst2|valClk\(4) & (!\inst2|valClk\(7) & (!\inst2|valClk\(5) & !\inst2|valClk\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(4),
	datab => \inst2|valClk\(7),
	datac => \inst2|valClk\(5),
	datad => \inst2|valClk\(8),
	combout => \inst2|Mux0~3_RESYN54_BDD55\);

-- Location: LCCOMB_X22_Y15_N6
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|ram_address_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N2
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

-- Location: LCCOMB_X26_Y23_N26
\inst2|valClk[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[0]~10_combout\ = (\inst2|EA\(0) & ((!\inst2|valClk\(0)))) # (!\inst2|EA\(0) & (\IO_E13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_E13~combout\,
	datac => \inst2|EA\(0),
	datad => \inst2|valClk\(0),
	combout => \inst2|valClk[0]~10_combout\);

-- Location: LCCOMB_X25_Y23_N26
\inst2|valClk[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(0) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(0))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(0),
	datac => \inst2|valClk[0]~10_combout\,
	datad => \inst2|valClk~1clkctrl_outclk\,
	combout => \inst2|valClk\(0));

-- Location: LCCOMB_X25_Y23_N0
\inst2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~1\ = CARRY(\inst2|valClk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(0),
	datad => VCC,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X25_Y23_N2
\inst2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|valClk\(1) & (!\inst2|Add1~1\)) # (!\inst2|valClk\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|valClk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X26_Y23_N28
\inst2|valClk[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[1]~9_combout\ = (\inst2|EA\(0) & \inst2|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|EA\(0),
	datad => \inst2|Add1~2_combout\,
	combout => \inst2|valClk[1]~9_combout\);

-- Location: LCCOMB_X25_Y23_N24
\inst2|valClk[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(1) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(1))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(1),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[1]~9_combout\,
	combout => \inst2|valClk\(1));

-- Location: LCCOMB_X27_Y23_N18
\inst2|cuenta[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cuenta[0]~1_combout\ = (!\inst2|Add0~8_combout\ & (!\inst2|cuenta[0]~1_combout\ & (!\inst2|LessThan0~5_combout\ & \inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|cuenta[0]~1_combout\,
	datac => \inst2|LessThan0~5_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|cuenta[0]~1_combout\);

-- Location: LCCOMB_X26_Y23_N4
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|Add0~1\ & ((\inst2|clkSig~1_combout\) # ((!\inst2|Add0~2_combout\)))) # (!\inst2|Add0~1\ & (((!\inst2|clkSig~1_combout\ & \inst2|Add0~2_combout\)) # (GND)))
-- \inst2|Add0~3\ = CARRY((\inst2|clkSig~1_combout\) # ((!\inst2|Add0~1\) # (!\inst2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkSig~1_combout\,
	datab => \inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X26_Y23_N6
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|Add0~3\ & (\inst2|Add0~4_combout\ & (!\inst2|clkSig~1_combout\ & VCC))) # (!\inst2|Add0~3\ & ((((\inst2|Add0~4_combout\ & !\inst2|clkSig~1_combout\)))))
-- \inst2|Add0~5\ = CARRY((\inst2|Add0~4_combout\ & (!\inst2|clkSig~1_combout\ & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|clkSig~1_combout\,
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X26_Y23_N8
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|Add0~5\ & (((\inst2|clkSig~1_combout\)) # (!\inst2|Add0~6_combout\))) # (!\inst2|Add0~5\ & (((\inst2|Add0~6_combout\ & !\inst2|clkSig~1_combout\)) # (GND)))
-- \inst2|Add0~7\ = CARRY(((\inst2|clkSig~1_combout\) # (!\inst2|Add0~5\)) # (!\inst2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|clkSig~1_combout\,
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X26_Y23_N10
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = !\inst2|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\);

-- Location: LCCOMB_X27_Y23_N16
\inst2|valClk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~0_combout\ = (\inst2|clkSig~combout\ & (\inst2|EA\(0) & ((\inst2|LessThan0~5_combout\) # (\inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkSig~combout\,
	datab => \inst2|LessThan0~5_combout\,
	datac => \inst2|EA\(0),
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|valClk~0_combout\);

-- Location: LCCOMB_X27_Y23_N8
\inst2|valClk~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~5_combout\ = (\inst2|Add1~2_combout\ & ((\inst2|valClk~0_combout\) # ((\inst2|valClk\(1) & \inst2|valClk~1_combout\)))) # (!\inst2|Add1~2_combout\ & (\inst2|valClk\(1) & ((\inst2|valClk~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~2_combout\,
	datab => \inst2|valClk\(1),
	datac => \inst2|valClk~0_combout\,
	datad => \inst2|valClk~1_combout\,
	combout => \inst2|valClk~5_combout\);

-- Location: LCCOMB_X26_Y23_N16
\inst2|valClk[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[6]~11_combout\ = (\inst2|EA\(0) & \inst2|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|EA\(0),
	datad => \inst2|Add1~12_combout\,
	combout => \inst2|valClk[6]~11_combout\);

-- Location: LCCOMB_X26_Y22_N0
\inst2|valClk[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(6) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(6))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(6),
	datac => \inst2|valClk[6]~11_combout\,
	datad => \inst2|valClk~1clkctrl_outclk\,
	combout => \inst2|valClk\(6));

-- Location: LCCOMB_X25_Y23_N4
\inst2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|valClk\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|valClk\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|valClk\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X26_Y23_N24
\inst2|valClk[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[2]~8_combout\ = (\inst2|EA\(0) & \inst2|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(0),
	datac => \inst2|Add1~4_combout\,
	combout => \inst2|valClk[2]~8_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst2|valClk[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(2) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(2))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(2),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[2]~8_combout\,
	combout => \inst2|valClk\(2));

-- Location: LCCOMB_X25_Y23_N6
\inst2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|valClk\(3) & (!\inst2|Add1~5\)) # (!\inst2|valClk\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|valClk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X25_Y23_N8
\inst2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|valClk\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|valClk\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|valClk\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X25_Y23_N10
\inst2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|valClk\(5) & (!\inst2|Add1~9\)) # (!\inst2|valClk\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|valClk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X24_Y23_N0
\inst2|valClk[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[5]~12_combout\ = (\inst2|Add1~10_combout\ & \inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~10_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|valClk[5]~12_combout\);

-- Location: LCCOMB_X24_Y23_N4
\inst2|valClk[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(5) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(5))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(5),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[5]~12_combout\,
	combout => \inst2|valClk\(5));

-- Location: LCCOMB_X25_Y23_N12
\inst2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|valClk\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|valClk\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|valClk\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X26_Y23_N18
\inst2|clkSig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|clkSig~0_combout\ = (\inst2|EA\(0) & ((!\inst2|clkSig~combout\))) # (!\inst2|EA\(0) & (\IO_E13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_E13~combout\,
	datab => \inst2|EA\(0),
	datac => \inst2|clkSig~combout\,
	combout => \inst2|clkSig~0_combout\);

-- Location: LCCOMB_X26_Y23_N14
\inst2|clkSig\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|clkSig~combout\ = (\inst2|clkSig~1_combout\ & ((\inst2|clkSig~0_combout\))) # (!\inst2|clkSig~1_combout\ & (\inst2|clkSig~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkSig~combout\,
	datac => \inst2|clkSig~1_combout\,
	datad => \inst2|clkSig~0_combout\,
	combout => \inst2|clkSig~combout\);

-- Location: LCCOMB_X26_Y23_N20
\inst2|Mux0~0_RESYN22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_RESYN22_BDD23\ = (((!\inst2|LessThan0~5_combout\ & !\inst2|Add0~8_combout\)) # (!\inst2|clkSig~combout\)) # (!\inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(0),
	datab => \inst2|LessThan0~5_combout\,
	datac => \inst2|clkSig~combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|Mux0~0_RESYN22_BDD23\);

-- Location: LCCOMB_X27_Y23_N4
\inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|valClk\(6) & (!\inst2|valClk~1_combout\ & ((\inst2|Mux0~0_RESYN22_BDD23\) # (!\inst2|Add1~12_combout\)))) # (!\inst2|valClk\(6) & (((\inst2|Mux0~0_RESYN22_BDD23\)) # (!\inst2|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(6),
	datab => \inst2|Add1~12_combout\,
	datac => \inst2|Mux0~0_RESYN22_BDD23\,
	datad => \inst2|valClk~1_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y23_N6
\inst2|valClk~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~6_combout\ = (\inst2|valClk\(2) & ((\inst2|valClk~1_combout\) # ((\inst2|Add1~4_combout\ & \inst2|valClk~0_combout\)))) # (!\inst2|valClk\(2) & (\inst2|Add1~4_combout\ & (\inst2|valClk~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(2),
	datab => \inst2|Add1~4_combout\,
	datac => \inst2|valClk~0_combout\,
	datad => \inst2|valClk~1_combout\,
	combout => \inst2|valClk~6_combout\);

-- Location: LCCOMB_X27_Y23_N22
\inst5|Mux1~1_RESYN20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_RESYN20_BDD21\ = (!\inst2|valClk~5_combout\ & (\inst2|Mux0~0_combout\ & \inst2|valClk~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk~5_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|valClk~6_combout\,
	combout => \inst5|Mux1~1_RESYN20_BDD21\);

-- Location: LCCOMB_X27_Y23_N30
\inst2|valClk~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~3_combout\ = (\inst2|valClk\(0) & ((\inst2|valClk~1_combout\))) # (!\inst2|valClk\(0) & (\inst2|valClk~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(0),
	datac => \inst2|valClk~0_combout\,
	datad => \inst2|valClk~1_combout\,
	combout => \inst2|valClk~3_combout\);

-- Location: LCCOMB_X27_Y23_N20
\inst2|valClk~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~4_combout\ = (\inst2|valClk~3_combout\) # ((!\inst2|EA\(0) & \IO_E13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(0),
	datab => \IO_E13~combout\,
	datad => \inst2|valClk~3_combout\,
	combout => \inst2|valClk~4_combout\);

-- Location: LCCOMB_X25_Y23_N14
\inst2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|valClk\(7) & (!\inst2|Add1~13\)) # (!\inst2|valClk\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|valClk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X25_Y23_N28
\inst2|valClk[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[8]~15_combout\ = (\inst2|Add1~16_combout\ & \inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~16_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|valClk[8]~15_combout\);

-- Location: LCCOMB_X25_Y23_N22
\inst2|valClk[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(8) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(8))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[8]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk\(8),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[8]~15_combout\,
	combout => \inst2|valClk\(8));

-- Location: LCCOMB_X25_Y23_N16
\inst2|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = \inst2|Add1~15\ $ (!\inst2|valClk\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|valClk\(8),
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\);

-- Location: LCCOMB_X27_Y23_N2
\inst2|Mux0~3_RESYN52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_RESYN52_BDD53\ = (!\inst2|Add1~10_combout\ & (!\inst2|Add1~8_combout\ & (!\inst2|Add1~14_combout\ & !\inst2|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~10_combout\,
	datab => \inst2|Add1~8_combout\,
	datac => \inst2|Add1~14_combout\,
	datad => \inst2|Add1~16_combout\,
	combout => \inst2|Mux0~3_RESYN52_BDD53\);

-- Location: LCCOMB_X27_Y23_N28
\inst2|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_combout\ = (\inst2|Mux0~3_RESYN54_BDD55\ & (((\inst2|Mux0~3_RESYN52_BDD53\) # (!\inst2|valClk~0_combout\)))) # (!\inst2|Mux0~3_RESYN54_BDD55\ & (!\inst2|valClk~1_combout\ & ((\inst2|Mux0~3_RESYN52_BDD53\) # (!\inst2|valClk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~3_RESYN54_BDD55\,
	datab => \inst2|valClk~1_combout\,
	datac => \inst2|valClk~0_combout\,
	datad => \inst2|Mux0~3_RESYN52_BDD53\,
	combout => \inst2|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y23_N0
\inst5|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = (!\inst2|valClk~2_combout\ & (\inst5|Mux1~1_RESYN20_BDD21\ & (\inst2|valClk~4_combout\ & \inst2|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk~2_combout\,
	datab => \inst5|Mux1~1_RESYN20_BDD21\,
	datac => \inst2|valClk~4_combout\,
	datad => \inst2|Mux0~3_combout\,
	combout => \inst5|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y23_N10
\inst2|EP[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|EP[0]~0_combout\ = (\inst2|EA\(0) & ((!\inst5|Mux1~1_combout\))) # (!\inst2|EA\(0) & (\IO_E13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IO_E13~combout\,
	datac => \inst2|EA\(0),
	datad => \inst5|Mux1~1_combout\,
	combout => \inst2|EP[0]~0_combout\);

-- Location: LCFF_X27_Y23_N11
\inst2|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst2|EP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|EA\(0));

-- Location: LCCOMB_X27_Y23_N12
\inst2|clkSig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|clkSig~1_combout\ = (\inst2|Add0~8_combout\) # ((\inst2|LessThan0~5_combout\) # (!\inst2|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datac => \inst2|LessThan0~5_combout\,
	datad => \inst2|EA\(0),
	combout => \inst2|clkSig~1_combout\);

-- Location: LCCOMB_X27_Y23_N14
\inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|Add0~6_combout\ & ((\inst2|Add0~0_combout\) # ((\inst2|Add0~4_combout\) # (\inst2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|Add0~4_combout\,
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y23_N26
\inst2|valClk~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~1_combout\ = (\inst2|EA\(0) & (((!\inst2|LessThan0~5_combout\ & !\inst2|Add0~8_combout\)) # (!\inst2|clkSig~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkSig~combout\,
	datab => \inst2|LessThan0~5_combout\,
	datac => \inst2|EA\(0),
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|valClk~1_combout\);

-- Location: CLKCTRL_G8
\inst2|valClk~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|valClk~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|valClk~1clkctrl_outclk\);

-- Location: LCCOMB_X26_Y23_N22
\inst2|valClk[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk[3]~7_combout\ = (\inst2|EA\(0) & \inst2|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(0),
	datac => \inst2|Add1~6_combout\,
	combout => \inst2|valClk[3]~7_combout\);

-- Location: LCCOMB_X26_Y23_N0
\inst2|valClk[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk\(3) = (GLOBAL(\inst2|valClk~1clkctrl_outclk\) & (\inst2|valClk\(3))) # (!GLOBAL(\inst2|valClk~1clkctrl_outclk\) & ((\inst2|valClk[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(3),
	datac => \inst2|valClk~1clkctrl_outclk\,
	datad => \inst2|valClk[3]~7_combout\,
	combout => \inst2|valClk\(3));

-- Location: LCCOMB_X26_Y23_N30
\inst2|valClk~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|valClk~2_combout\ = (\inst2|valClk\(3) & ((\inst2|valClk~1_combout\) # ((\inst2|Add1~6_combout\ & \inst2|valClk~0_combout\)))) # (!\inst2|valClk\(3) & (\inst2|Add1~6_combout\ & ((\inst2|valClk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk\(3),
	datab => \inst2|Add1~6_combout\,
	datac => \inst2|valClk~1_combout\,
	datad => \inst2|valClk~0_combout\,
	combout => \inst2|valClk~2_combout\);

-- Location: LCCOMB_X29_Y23_N2
\inst5|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~3_combout\ = \inst2|valClk~6_combout\ $ (((\inst2|valClk~4_combout\) # (\inst2|valClk~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|valClk~6_combout\,
	datac => \inst2|valClk~4_combout\,
	datad => \inst2|valClk~5_combout\,
	combout => \inst5|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y23_N0
\inst5|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (!\inst2|valClk~2_combout\ & (\inst2|Mux0~0_combout\ & (\inst2|Mux0~3_combout\ & \inst5|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|valClk~2_combout\,
	datab => \inst2|Mux0~0_combout\,
	datac => \inst2|Mux0~3_combout\,
	datad => \inst5|Mux0~3_combout\,
	combout => \inst5|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y18_N4
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\);

-- Location: LCFF_X19_Y18_N5
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\);

-- Location: LCCOMB_X18_Y18_N12
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: LCFF_X18_Y18_N13
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\);

-- Location: LCCOMB_X21_Y18_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\);

-- Location: LCFF_X21_Y18_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~11_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: LCFF_X19_Y18_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\);

-- Location: LCCOMB_X19_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- !\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\);

-- Location: LCFF_X21_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~10_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2));

-- Location: LCFF_X20_Y17_N25
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~0_regout\);

-- Location: LCCOMB_X19_Y18_N10
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X20_Y17_N24
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

-- Location: LCCOMB_X21_Y18_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\);

-- Location: LCFF_X21_Y18_N31
\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~9_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3));

-- Location: LCCOMB_X21_Y18_N22
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0) $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2) $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\);

-- Location: LCFF_X21_Y18_N23
\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~8_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\);

-- Location: LCCOMB_X21_Y17_N0
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & \inst1|dcfifo_component|auto_generated|int_wrfull~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datad => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: LCFF_X21_Y17_N1
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\);

-- Location: LCCOMB_X20_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & \inst1|dcfifo_component|auto_generated|int_wrfull~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	datad => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X20_Y18_N28
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: LCCOMB_X18_Y18_N16
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: LCFF_X18_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\);

-- Location: LCCOMB_X19_Y18_N6
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: LCFF_X19_Y18_N7
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\);

-- Location: LCCOMB_X19_Y18_N8
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\);

-- Location: LCFF_X19_Y18_N9
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\);

-- Location: LCCOMB_X19_Y18_N28
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ & !\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~5_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~3_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\);

-- Location: LCFF_X19_Y18_N29
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\);

-- Location: LCFF_X19_Y18_N15
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\);

-- Location: LCCOMB_X19_Y18_N14
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~2_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~1_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~6_combout\);

-- Location: LCCOMB_X20_Y15_N8
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

-- Location: LCCOMB_X20_Y15_N30
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

-- Location: LCFF_X20_Y15_N31
\inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0));

-- Location: LCFF_X20_Y15_N9
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\);

-- Location: LCCOMB_X20_Y15_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\);

-- Location: LCCOMB_X20_Y15_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~32_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~32_combout\);

-- Location: LCFF_X20_Y15_N5
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\);

-- Location: LCCOMB_X20_Y15_N18
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

-- Location: LCFF_X20_Y15_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\);

-- Location: LCCOMB_X23_Y18_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\);

-- Location: LCFF_X23_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7));

-- Location: LCCOMB_X21_Y18_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\);

-- Location: LCFF_X21_Y18_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\);

-- Location: LCCOMB_X21_Y18_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\);

-- Location: LCFF_X21_Y18_N11
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~5_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X25_Y18_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & \inst1|dcfifo_component|auto_generated|int_wrfull~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\);

-- Location: LCFF_X25_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1));

-- Location: LCCOMB_X23_Y18_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\);

-- Location: LCFF_X23_Y18_N29
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\);

-- Location: LCCOMB_X23_Y18_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\);

-- Location: LCFF_X23_Y18_N31
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\);

-- Location: LCCOMB_X23_Y18_N20
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\);

-- Location: LCFF_X23_Y18_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\);

-- Location: LCCOMB_X23_Y18_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ $ ((((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\);

-- Location: LCFF_X23_Y18_N3
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\);

-- Location: LCFF_X23_Y18_N5
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\);

-- Location: LCFF_X23_Y18_N21
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM5\);

-- Location: LCFF_X22_Y18_N13
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_NEW_REG6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM7\);

-- Location: LCCOMB_X22_Y18_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM5\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM7\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM5\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_OTERM3_OTERM7\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~7_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & 
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
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\);

-- Location: LCFF_X23_Y18_N7
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\);

-- Location: LCCOMB_X21_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\);

-- Location: LCFF_X21_Y18_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~8_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X21_Y18_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~18_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~18_combout\);

-- Location: LCFF_X24_Y18_N7
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2));

-- Location: LCCOMB_X24_Y18_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~17_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~17_combout\);

-- Location: LCFF_X24_Y18_N15
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3));

-- Location: LCCOMB_X24_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~15_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~15_combout\);

-- Location: LCFF_X24_Y18_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4));

-- Location: LCCOMB_X23_Y18_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|int_wrfull~combout\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datac => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~14_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~14_combout\);

-- Location: LCFF_X23_Y18_N9
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5));

-- Location: LCCOMB_X23_Y18_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~16_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~16_combout\);

-- Location: LCFF_X23_Y18_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6));

-- Location: LCCOMB_X23_Y18_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\);

-- Location: LCFF_X23_Y18_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\);

-- Location: LCCOMB_X23_Y18_N4
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~1_regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\ = !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~13_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\);

-- Location: LCFF_X22_Y18_N11
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\);

-- Location: LCCOMB_X22_Y18_N24
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(8) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp_msb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X20_Y15_N28
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

-- Location: LCFF_X20_Y15_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\);

-- Location: LCCOMB_X20_Y15_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ $ ((((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\);

-- Location: LCCOMB_X18_Y14_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~3_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~18_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\);

-- Location: LCFF_X24_Y18_N1
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCFF_X20_Y18_N21
\inst1|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCFF_X24_Y18_N19
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCFF_X24_Y18_N11
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X24_Y18_N18
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(3) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\);

-- Location: LCFF_X20_Y18_N19
\inst1|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCFF_X24_Y18_N13
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCFF_X24_Y18_N25
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X24_Y18_N12
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(6) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCFF_X20_Y18_N13
\inst1|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCFF_X24_Y18_N21
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCFF_X24_Y18_N23
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X24_Y18_N20
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\ = (!\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X24_Y18_N8
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

-- Location: LCCOMB_X24_Y18_N10
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ & (\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\ = (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1))) # (!\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X24_Y18_N31
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\);

-- Location: LCCOMB_X24_Y18_N22
\inst1|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\) # (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ren~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	combout => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCFF_X18_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCCOMB_X22_Y18_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ & 
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
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\);

-- Location: LCFF_X22_Y18_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\);

-- Location: LCCOMB_X22_Y18_N18
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\);

-- Location: LCCOMB_X22_Y18_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\);

-- Location: LCFF_X22_Y18_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\);

-- Location: LCFF_X19_Y18_N1
\inst1|dcfifo_component|auto_generated|rdptr_g[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(11));

-- Location: LCCOMB_X22_Y18_N8
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~0_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~3_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCFF_X19_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCFF_X22_Y18_N31
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X22_Y18_N30
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(7) & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(7) & (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~4_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\ = (!\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ & \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~6_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~7_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & (\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	datab => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
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

-- Location: LCCOMB_X22_Y18_N22
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X22_Y18_N4
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

-- Location: LCFF_X22_Y18_N5
\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\);

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

-- Location: LCCOMB_X24_Y18_N4
\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\) # (\inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\)))) # 
-- (!\inst1|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|p0addr~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~regout\,
	datac => \ren~combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~25_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~25_combout\);

-- Location: LCFF_X21_Y15_N21
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~25_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X21_Y15_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
-- !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCFF_X21_Y15_N5
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\);

-- Location: LCCOMB_X20_Y15_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~1_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\);

-- Location: LCCOMB_X20_Y15_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~31_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~31_combout\);

-- Location: LCFF_X20_Y15_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\);

-- Location: LCCOMB_X20_Y15_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X20_Y15_N14
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

-- Location: LCFF_X20_Y15_N15
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\);

-- Location: LCCOMB_X22_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\);

-- Location: LCFF_X22_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\);

-- Location: LCCOMB_X19_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~13_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~20_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~19_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~13_combout\);

-- Location: LCFF_X22_Y15_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~13_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCFF_X22_Y15_N9
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\);

-- Location: LCCOMB_X22_Y15_N22
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

-- Location: LCFF_X22_Y15_N23
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\);

-- Location: LCCOMB_X22_Y15_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~7_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~6_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\);

-- Location: LCCOMB_X22_Y15_N14
\inst1|dcfifo_component|auto_generated|ram_address_b[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ram_address_b\(12) = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	combout => \inst1|dcfifo_component|auto_generated|ram_address_b\(12));

-- Location: LCFF_X22_Y15_N15
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\);

-- Location: LCCOMB_X22_Y15_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: LCFF_X22_Y15_N1
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X22_Y15_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: LCFF_X22_Y15_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X21_Y15_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCFF_X21_Y15_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X21_Y15_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~24_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~24_combout\);

-- Location: LCFF_X21_Y15_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~24_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCCOMB_X22_Y15_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~26_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~26_combout\);

-- Location: LCFF_X21_Y15_N7
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~26_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3));

-- Location: LCCOMB_X21_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~27_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) $ (((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~27_combout\);

-- Location: LCFF_X21_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~27_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4));

-- Location: LCCOMB_X21_Y15_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3) & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4) & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(4),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~28_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~28_combout\);

-- Location: LCFF_X21_Y15_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~28_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5));

-- Location: LCCOMB_X20_Y15_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~29_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~29_combout\);

-- Location: LCFF_X20_Y15_N1
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~29_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6));

-- Location: LCCOMB_X20_Y15_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6) & 
-- !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(5),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: LCFF_X20_Y15_N3
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\);

-- Location: LCCOMB_X20_Y15_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~12_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~13_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~14_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X20_Y15_N10
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

-- Location: LCFF_X20_Y15_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\);

-- Location: LCCOMB_X22_Y15_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ $ 
-- (((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~5_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\);

-- Location: LCFF_X22_Y15_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\);

-- Location: LCFF_X22_Y15_N31
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\);

-- Location: LCCOMB_X22_Y15_N12
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

-- Location: LCFF_X22_Y15_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\);

-- Location: LCCOMB_X22_Y15_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~9_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~8_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\);

-- Location: LCFF_X21_Y18_N1
\inst1|dcfifo_component|auto_generated|rdptr_g[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(12));

-- Location: LCFF_X21_Y18_N7
\inst1|dcfifo_component|auto_generated|rdptr_g[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(13));

-- Location: LCCOMB_X21_Y18_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a13~1_combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(13) & 
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
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCFF_X19_Y18_N21
\inst1|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~16_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X18_Y18_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: LCFF_X18_Y18_N31
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\);

-- Location: LCFF_X19_Y18_N27
\inst1|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~17_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCCOMB_X19_Y18_N22
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a12~4_regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|int_wrfull~combout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~regout\,
	datab => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp1_msb|data_wire[0]~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X19_Y18_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(9))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a11~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a9~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X19_Y18_N16
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a10~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y18_N18
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(11))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g\(9) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~10_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~11_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X19_Y18_N30
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~6_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~12_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\);

-- Location: LCCOMB_X19_Y18_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\) # ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~7_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\);

-- Location: LCFF_X19_Y18_N25
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\);

-- Location: LCCOMB_X21_Y18_N4
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCFF_X21_Y18_N5
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	ena => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\);

-- Location: LCCOMB_X21_Y18_N8
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\ & 
-- ((!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|parity9~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCCOMB_X20_Y18_N14
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ & !\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: LCFF_X20_Y18_N15
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\);

-- Location: LCCOMB_X20_Y18_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: LCFF_X20_Y18_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\);

-- Location: LCCOMB_X20_Y18_N30
\inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X18_Y18_N2
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\ $ (((\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: LCFF_X18_Y18_N3
\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\);

-- Location: LCCOMB_X20_Y18_N18
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(5) 
-- & (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X20_Y18_N4
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|int_wrfull~combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(6) $ (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datab => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: LCFF_X20_Y18_N23
\inst1|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X20_Y18_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g\(0) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (\inst1|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(0))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCFF_X20_Y18_N9
\inst1|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCFF_X20_Y18_N11
\inst1|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(3),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X20_Y18_N10
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(3) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCFF_X20_Y18_N7
\inst1|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(6),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X20_Y18_N12
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & (\inst1|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4))))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & (!\inst1|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y18_N6
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (!\inst1|dcfifo_component|auto_generated|int_wrfull~combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y18_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ & 
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~7_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\);

-- Location: LCFF_X20_Y18_N25
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|q5_Entrada~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\);

-- Location: LCCOMB_X21_Y18_N24
\inst1|dcfifo_component|auto_generated|int_wrfull\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|int_wrfull~combout\ = (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	combout => \inst1|dcfifo_component|auto_generated|int_wrfull~combout\);

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

-- Location: LCFF_X27_Y23_N1
\inst3|q0_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst5|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q0_Entrada~regout\);

-- Location: LCCOMB_X24_Y26_N0
\inst3|q1_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|q1_Entrada~feeder_combout\ = \inst3|q0_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|q0_Entrada~regout\,
	combout => \inst3|q1_Entrada~feeder_combout\);

-- Location: LCFF_X24_Y26_N1
\inst3|q1_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q1_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q1_Entrada~regout\);

-- Location: LCCOMB_X24_Y26_N18
\inst3|q2_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|q2_Entrada~feeder_combout\ = \inst3|q1_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|q1_Entrada~regout\,
	combout => \inst3|q2_Entrada~feeder_combout\);

-- Location: LCFF_X24_Y26_N19
\inst3|q2_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q2_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q2_Entrada~regout\);

-- Location: LCCOMB_X24_Y26_N10
\inst3|q3_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|q3_Entrada~feeder_combout\ = \inst3|q2_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|q2_Entrada~regout\,
	combout => \inst3|q3_Entrada~feeder_combout\);

-- Location: LCFF_X24_Y26_N11
\inst3|q3_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q3_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q3_Entrada~regout\);

-- Location: LCCOMB_X24_Y26_N6
\inst3|q4_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|q4_Entrada~feeder_combout\ = \inst3|q3_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|q3_Entrada~regout\,
	combout => \inst3|q4_Entrada~feeder_combout\);

-- Location: LCFF_X24_Y26_N7
\inst3|q4_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q4_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q4_Entrada~regout\);

-- Location: LCCOMB_X24_Y26_N22
\inst3|q5_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|q5_Entrada~feeder_combout\ = \inst3|q4_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|q4_Entrada~regout\,
	combout => \inst3|q5_Entrada~feeder_combout\);

-- Location: LCFF_X24_Y26_N23
\inst3|q5_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q5_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q5_Entrada~regout\);

-- Location: LCCOMB_X22_Y15_N20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & ((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\)))) # (!\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~23_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\);

-- Location: LCFF_X22_Y15_N21
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0));

-- Location: LCFF_X18_Y14_N25
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0));

-- Location: LCCOMB_X21_Y18_N14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0) = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0));

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

-- Location: CLKCTRL_G10
\inst3|q5_Entrada~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|q5_Entrada~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|q5_Entrada~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y13_N16
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

-- Location: M4K_X17_Y7
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y18_N6
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1) = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\ & 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~8_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~9_combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1));

-- Location: M4K_X41_Y6
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\);

-- Location: M4K_X17_Y10
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y14
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\);

-- Location: M4K_X17_Y14
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y12
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N30
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\);

-- Location: M4K_X17_Y6
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y7
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\);

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

-- Location: M4K_X17_Y15
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y10
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\);

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

-- Location: M4K_X17_Y13
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y9
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\);

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

-- Location: M4K_X17_Y11
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y12
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N6
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\);

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

-- Location: M4K_X17_Y21
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y8
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\);

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

-- Location: M4K_X41_Y8
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y19
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N24
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\);

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

-- Location: M4K_X17_Y18
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y17
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\);

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

-- Location: M4K_X17_Y16
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y20
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N28
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\);

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

-- Location: M4K_X41_Y9
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y15
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\);

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

-- Location: M4K_X41_Y11
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y21
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N0
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\);

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

-- Location: M4K_X41_Y19
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y18
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y16_N8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\);

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

-- Location: M4K_X41_Y17
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\);

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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y16_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\);

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

-- Location: M4K_X41_Y13
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y20
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
	portbrewe => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	clk0 => \ifclk~clkctrl_outclk\,
	clk1 => \inst3|q5_Entrada~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y16_N12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IO_C15~I\ : cycloneii_io
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
	datain => \inst5|ALT_INV_Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_C15);

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
	datain => \inst1|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\,
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
	datain => \inst3|q5_Entrada~regout\,
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


