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

-- DATE "05/07/2014 20:31:09"

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
	NconvStart : OUT std_logic;
	NGate : OUT std_logic;
	NRead1 : OUT std_logic;
	NRead2 : OUT std_logic;
	NRead3 : OUT std_logic;
	NGate_Disp : OUT std_logic;
	fd : OUT std_logic_vector(15 DOWNTO 0);
	wen : IN std_logic;
	NBusy1 : IN std_logic;
	NBusy2 : IN std_logic;
	NBusy3 : IN std_logic;
	NBusy4 : IN std_logic;
	ifclk : IN std_logic;
	LLD : IN std_logic;
	data_in1 : IN std_logic_vector(11 DOWNTO 0);
	data_in2 : IN std_logic_vector(11 DOWNTO 0);
	ren : IN std_logic;
	NBusy_Disp : IN std_logic
	);
END Template;

-- Design Ports Information
-- IO_G16	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NconvStart	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NGate	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NRead1	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NRead2	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NRead3	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NGate_Disp	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- NBusy1	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NBusy2	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NBusy3	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NBusy4	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ifclk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NBusy_Disp	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ren	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[11]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[11]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[10]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[10]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[8]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[8]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[7]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[4]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in2[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in1[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wen	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LLD	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_NconvStart : std_logic;
SIGNAL ww_NGate : std_logic;
SIGNAL ww_NRead1 : std_logic;
SIGNAL ww_NRead2 : std_logic;
SIGNAL ww_NRead3 : std_logic;
SIGNAL ww_NGate_Disp : std_logic;
SIGNAL ww_fd : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_NBusy1 : std_logic;
SIGNAL ww_NBusy2 : std_logic;
SIGNAL ww_NBusy3 : std_logic;
SIGNAL ww_NBusy4 : std_logic;
SIGNAL ww_ifclk : std_logic;
SIGNAL ww_LLD : std_logic;
SIGNAL ww_data_in1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_data_in2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ren : std_logic;
SIGNAL ww_NBusy_Disp : std_logic;
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
SIGNAL \writeOr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ifclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|altpll_component|_clk2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|leido[0]~10_combout\ : std_logic;
SIGNAL \inst2|leido[3]~16_combout\ : std_logic;
SIGNAL \inst2|leido[7]~24_combout\ : std_logic;
SIGNAL \inst|cuenta_180[1]~11_combout\ : std_logic;
SIGNAL \inst|cuenta_180[2]~13_combout\ : std_logic;
SIGNAL \inst|cuenta_180[4]~17_combout\ : std_logic;
SIGNAL \inst|cuenta_180[6]~21_combout\ : std_logic;
SIGNAL \inst4|altpll_component|_clk0\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1\ : std_logic;
SIGNAL \inst4|altpll_component|_clk2\ : std_logic;
SIGNAL \inst9|cuenta_180[0]~9_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[2]~13_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|Mux19~1_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ : std_logic;
SIGNAL \NBusy4~combout\ : std_logic;
SIGNAL \inst4|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|altpll_component|_clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28_BDD29\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30_BDD31\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32_BDD33\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34_BDD35\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~39_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~45_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~46_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~47_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26_BDD27\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36_BDD37\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~38_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52_BDD53\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56_BDD57\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_RTM067_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54_BDD55\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~48_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~49_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~13_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g[13]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44_BDD45\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \ren~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~42_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~1_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~41_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~43_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~44_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_RTM071_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_OTERM69\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~12_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58_BDD59\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60_BDD61\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_OTERM5\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_BDD41\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15feeder_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\ : std_logic;
SIGNAL \ifclk~combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~9_combout\ : std_logic;
SIGNAL \LLD~combout\ : std_logic;
SIGNAL \inst3|q0_Entrada~regout\ : std_logic;
SIGNAL \inst3|q1_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q1_Entrada~regout\ : std_logic;
SIGNAL \inst3|q2_Entrada~regout\ : std_logic;
SIGNAL \inst3|q3_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst3|q3_Entrada~regout\ : std_logic;
SIGNAL \inst3|q4_Entrada~regout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \NBusy3~combout\ : std_logic;
SIGNAL \NBusy1~combout\ : std_logic;
SIGNAL \NBusy2~combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~10\ : std_logic;
SIGNAL \inst|cuenta_180[1]~12\ : std_logic;
SIGNAL \inst|cuenta_180[2]~14\ : std_logic;
SIGNAL \inst|cuenta_180[3]~15_combout\ : std_logic;
SIGNAL \inst|cuenta_180[3]~16\ : std_logic;
SIGNAL \inst|cuenta_180[4]~18\ : std_logic;
SIGNAL \inst|cuenta_180[5]~19_combout\ : std_logic;
SIGNAL \inst|cuenta_180[5]~20\ : std_logic;
SIGNAL \inst|cuenta_180[6]~22\ : std_logic;
SIGNAL \inst|cuenta_180[7]~23_combout\ : std_logic;
SIGNAL \inst|cuenta_180[7]~24\ : std_logic;
SIGNAL \inst|cuenta_180[8]~25_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|leido[0]~11\ : std_logic;
SIGNAL \inst2|leido[1]~12_combout\ : std_logic;
SIGNAL \inst2|leido[4]~19\ : std_logic;
SIGNAL \inst2|leido[5]~21\ : std_logic;
SIGNAL \inst2|leido[6]~22_combout\ : std_logic;
SIGNAL \inst2|leido[6]~23\ : std_logic;
SIGNAL \inst2|leido[7]~25\ : std_logic;
SIGNAL \inst2|leido[8]~26_combout\ : std_logic;
SIGNAL \inst2|leido[8]~27\ : std_logic;
SIGNAL \inst2|leido[9]~28_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst2|Mux17~0_combout\ : std_logic;
SIGNAL \inst2|Mux17~1_combout\ : std_logic;
SIGNAL \inst2|Mux16~0_combout\ : std_logic;
SIGNAL \inst2|Mux16~1_combout\ : std_logic;
SIGNAL \inst2|leido[1]~13\ : std_logic;
SIGNAL \inst2|leido[2]~15\ : std_logic;
SIGNAL \inst2|leido[3]~17\ : std_logic;
SIGNAL \inst2|leido[4]~18_combout\ : std_logic;
SIGNAL \inst2|leido[5]~20_combout\ : std_logic;
SIGNAL \inst2|leido[2]~14_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|Mux15~3_combout\ : std_logic;
SIGNAL \inst2|Mux18~0_combout\ : std_logic;
SIGNAL \inst2|Mux19~0_combout\ : std_logic;
SIGNAL \inst2|Mux19~2_combout\ : std_logic;
SIGNAL \inst2|Mux15~1_combout\ : std_logic;
SIGNAL \inst2|Mux15~0_combout\ : std_logic;
SIGNAL \inst2|Mux15~2_combout\ : std_logic;
SIGNAL \inst2|Mux21~0_combout\ : std_logic;
SIGNAL \inst2|Mux22~0_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[0]~10\ : std_logic;
SIGNAL \inst9|cuenta_180[1]~11_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[6]~21_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[4]~17_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|q0_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst8|q0_Entrada~regout\ : std_logic;
SIGNAL \inst8|q1_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst8|q1_Entrada~regout\ : std_logic;
SIGNAL \inst8|q2_Entrada~regout\ : std_logic;
SIGNAL \inst8|q3_Entrada~regout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \NBusy_Disp~combout\ : std_logic;
SIGNAL \inst9|Mux3~1_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[1]~12\ : std_logic;
SIGNAL \inst9|cuenta_180[2]~14\ : std_logic;
SIGNAL \inst9|cuenta_180[3]~15_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[3]~16\ : std_logic;
SIGNAL \inst9|cuenta_180[4]~18\ : std_logic;
SIGNAL \inst9|cuenta_180[5]~19_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[5]~20\ : std_logic;
SIGNAL \inst9|cuenta_180[6]~22\ : std_logic;
SIGNAL \inst9|cuenta_180[7]~23_combout\ : std_logic;
SIGNAL \inst9|cuenta_180[7]~24\ : std_logic;
SIGNAL \inst9|cuenta_180[8]~25_combout\ : std_logic;
SIGNAL \inst9|Mux2~1_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~2_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~4_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_regout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~3_combout\ : std_logic;
SIGNAL \ifclk~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Mux20~0_combout\ : std_logic;
SIGNAL \inst2|Mux20~1_combout\ : std_logic;
SIGNAL \inst2|Mux20~2_combout\ : std_logic;
SIGNAL \inst2|Mux20~combout\ : std_logic;
SIGNAL \wen~combout\ : std_logic;
SIGNAL \writeOr~combout\ : std_logic;
SIGNAL \writeOr~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst2|Mux14~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst2|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst2|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst2|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst2|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst2|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst2|Mux14~1_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[0]~15_combout\ : std_logic;
SIGNAL \data_in1~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \data_in2~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cuenta_180\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|leido\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst9|cuenta_180\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst9|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ : std_logic;
SIGNAL \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_ifclk~clkctrl_outclk\ : std_logic;

BEGIN

IO_G16 <= ww_IO_G16;
NconvStart <= ww_NconvStart;
NGate <= ww_NGate;
NRead1 <= ww_NRead1;
NRead2 <= ww_NRead2;
NRead3 <= ww_NRead3;
NGate_Disp <= ww_NGate_Disp;
fd <= ww_fd;
ww_wen <= wen;
ww_NBusy1 <= NBusy1;
ww_NBusy2 <= NBusy2;
ww_NBusy3 <= NBusy3;
ww_NBusy4 <= NBusy4;
ww_ifclk <= ifclk;
ww_LLD <= LLD;
ww_data_in1 <= data_in1;
ww_data_in2 <= data_in2;
ww_ren <= ren;
ww_NBusy_Disp <= NBusy_Disp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\(0) <= \inst2|EA\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\(0) <= \inst2|EA\(2);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\(0) <= \inst2|Mux0~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\(0) <= \inst2|Mux0~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\(0) <= \inst2|Mux1~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\(0) <= \inst2|Mux1~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\(0) <= \inst2|Mux2~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\(0) <= \inst2|Mux2~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\(0) <= \inst2|Mux3~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\(0) <= \inst2|Mux3~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\(0) <= \inst2|Mux4~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\(0) <= \inst2|Mux4~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\(0) <= \inst2|Mux5~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\(0) <= \inst2|Mux5~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\(0) <= \inst2|Mux6~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\(0) <= \inst2|Mux6~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\(0) <= \inst2|Mux7~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\(0) <= \inst2|Mux7~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\(0) <= \inst2|Mux8~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\(0) <= \inst2|Mux8~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\(0) <= \inst2|Mux9~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\(0) <= \inst2|Mux9~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\(0) <= \inst2|Mux10~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\(0) <= \inst2|Mux10~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\(0) <= \inst2|Mux11~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\(0) <= \inst2|Mux11~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\(0) <= \inst2|Mux12~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\(0) <= \inst2|Mux12~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\(0) <= \inst2|Mux13~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\(0) <= \inst2|Mux13~0_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\(0) <= \inst2|Mux14~1_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\(0);

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\(0) <= vcc;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\(0) <= \inst2|Mux14~1_combout\;

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) & 
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\ <= (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0~portadataout\ <= \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\(0);

\inst4|altpll_component|pll_INCLK_bus\ <= (gnd & \ifclk~combout\);

\inst4|altpll_component|_clk0\ <= \inst4|altpll_component|pll_CLK_bus\(0);
\inst4|altpll_component|_clk1\ <= \inst4|altpll_component|pll_CLK_bus\(1);
\inst4|altpll_component|_clk2\ <= \inst4|altpll_component|pll_CLK_bus\(2);

\inst4|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|altpll_component|_clk1\);

\writeOr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \writeOr~combout\);

\ifclk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ifclk~combout\);

\inst4|altpll_component|_clk2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|altpll_component|_clk2\);
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\(0) <= NOT \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0);
\inst|ALT_INV_EA\(1) <= NOT \inst|EA\(1);
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst1|dcfifo_component|auto_generated|ALT_INV_rdcnt_addr_ena~combout\ <= NOT \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\;
\inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0) <= NOT \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0);
\ALT_INV_ifclk~clkctrl_outclk\ <= NOT \ifclk~clkctrl_outclk\;

-- Location: LCFF_X39_Y14_N13
\inst2|leido[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[3]~16_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(3));

-- Location: LCFF_X39_Y14_N21
\inst2|leido[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[7]~24_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(7));

-- Location: LCFF_X46_Y14_N17
\inst|cuenta_180[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[4]~17_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(4));

-- Location: LCFF_X46_Y14_N21
\inst|cuenta_180[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[6]~21_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(6));

-- Location: LCFF_X39_Y14_N7
\inst2|leido[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst2|leido[0]~10_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(0));

-- Location: LCCOMB_X39_Y14_N6
\inst2|leido[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[0]~10_combout\ = \inst2|leido\(0) $ (VCC)
-- \inst2|leido[0]~11\ = CARRY(\inst2|leido\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(0),
	datad => VCC,
	combout => \inst2|leido[0]~10_combout\,
	cout => \inst2|leido[0]~11\);

-- Location: LCCOMB_X39_Y14_N12
\inst2|leido[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[3]~16_combout\ = (\inst2|leido\(3) & (!\inst2|leido[2]~15\)) # (!\inst2|leido\(3) & ((\inst2|leido[2]~15\) # (GND)))
-- \inst2|leido[3]~17\ = CARRY((!\inst2|leido[2]~15\) # (!\inst2|leido\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(3),
	datad => VCC,
	cin => \inst2|leido[2]~15\,
	combout => \inst2|leido[3]~16_combout\,
	cout => \inst2|leido[3]~17\);

-- Location: LCCOMB_X39_Y14_N20
\inst2|leido[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[7]~24_combout\ = (\inst2|leido\(7) & (!\inst2|leido[6]~23\)) # (!\inst2|leido\(7) & ((\inst2|leido[6]~23\) # (GND)))
-- \inst2|leido[7]~25\ = CARRY((!\inst2|leido[6]~23\) # (!\inst2|leido\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(7),
	datad => VCC,
	cin => \inst2|leido[6]~23\,
	combout => \inst2|leido[7]~24_combout\,
	cout => \inst2|leido[7]~25\);

-- Location: LCFF_X46_Y14_N13
\inst|cuenta_180[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[2]~13_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(2));

-- Location: LCFF_X46_Y14_N11
\inst|cuenta_180[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[1]~11_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(1));

-- Location: LCCOMB_X46_Y14_N10
\inst|cuenta_180[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[1]~11_combout\ = (\inst|cuenta_180\(1) & (!\inst|cuenta_180[0]~10\)) # (!\inst|cuenta_180\(1) & ((\inst|cuenta_180[0]~10\) # (GND)))
-- \inst|cuenta_180[1]~12\ = CARRY((!\inst|cuenta_180[0]~10\) # (!\inst|cuenta_180\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(1),
	datad => VCC,
	cin => \inst|cuenta_180[0]~10\,
	combout => \inst|cuenta_180[1]~11_combout\,
	cout => \inst|cuenta_180[1]~12\);

-- Location: LCCOMB_X46_Y14_N12
\inst|cuenta_180[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[2]~13_combout\ = (\inst|cuenta_180\(2) & (\inst|cuenta_180[1]~12\ $ (GND))) # (!\inst|cuenta_180\(2) & (!\inst|cuenta_180[1]~12\ & VCC))
-- \inst|cuenta_180[2]~14\ = CARRY((\inst|cuenta_180\(2) & !\inst|cuenta_180[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(2),
	datad => VCC,
	cin => \inst|cuenta_180[1]~12\,
	combout => \inst|cuenta_180[2]~13_combout\,
	cout => \inst|cuenta_180[2]~14\);

-- Location: LCCOMB_X46_Y14_N16
\inst|cuenta_180[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[4]~17_combout\ = (\inst|cuenta_180\(4) & (\inst|cuenta_180[3]~16\ $ (GND))) # (!\inst|cuenta_180\(4) & (!\inst|cuenta_180[3]~16\ & VCC))
-- \inst|cuenta_180[4]~18\ = CARRY((\inst|cuenta_180\(4) & !\inst|cuenta_180[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(4),
	datad => VCC,
	cin => \inst|cuenta_180[3]~16\,
	combout => \inst|cuenta_180[4]~17_combout\,
	cout => \inst|cuenta_180[4]~18\);

-- Location: LCCOMB_X46_Y14_N20
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
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 12,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 25,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 24,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 25,
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

-- Location: LCFF_X48_Y17_N17
\inst9|cuenta_180[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[2]~13_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(2));

-- Location: LCFF_X48_Y17_N13
\inst9|cuenta_180[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[0]~9_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(0));

-- Location: LCCOMB_X48_Y17_N12
\inst9|cuenta_180[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[0]~9_combout\ = \inst9|cuenta_180\(0) $ (VCC)
-- \inst9|cuenta_180[0]~10\ = CARRY(\inst9|cuenta_180\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(0),
	datad => VCC,
	combout => \inst9|cuenta_180[0]~9_combout\,
	cout => \inst9|cuenta_180[0]~10\);

-- Location: LCCOMB_X48_Y17_N16
\inst9|cuenta_180[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[2]~13_combout\ = (\inst9|cuenta_180\(2) & (\inst9|cuenta_180[1]~12\ $ (GND))) # (!\inst9|cuenta_180\(2) & (!\inst9|cuenta_180[1]~12\ & VCC))
-- \inst9|cuenta_180[2]~14\ = CARRY((\inst9|cuenta_180\(2) & !\inst9|cuenta_180[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(2),
	datad => VCC,
	cin => \inst9|cuenta_180[1]~12\,
	combout => \inst9|cuenta_180[2]~13_combout\,
	cout => \inst9|cuenta_180[2]~14\);

-- Location: LCFF_X33_Y12_N21
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[13]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(13));

-- Location: LCFF_X33_Y12_N31
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[12]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(12));

-- Location: LCFF_X33_Y14_N31
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[11]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(11));

-- Location: LCFF_X33_Y11_N21
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(9));

-- Location: LCFF_X35_Y12_N11
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4));

-- Location: LCFF_X35_Y11_N21
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3));

-- Location: LCCOMB_X47_Y14_N12
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|cuenta_180\(5)) # ((\inst|cuenta_180\(7)) # ((\inst|cuenta_180\(6)) # (\inst|cuenta_180\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(5),
	datab => \inst|cuenta_180\(7),
	datac => \inst|cuenta_180\(6),
	datad => \inst|cuenta_180\(4),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y14_N26
\inst2|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux19~1_combout\ = (\inst2|EA\(0) & (((!\inst2|LessThan0~1_combout\ & !\inst2|LessThan0~0_combout\)) # (!\inst|EA\(1)))) # (!\inst2|EA\(0) & ((\inst2|LessThan0~1_combout\) # ((\inst2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datab => \inst2|EA\(0),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst|EA\(1),
	combout => \inst2|Mux19~1_combout\);

-- Location: LCCOMB_X49_Y17_N10
\inst9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst9|EA\(1) & (((!\inst5~0_combout\) # (!\NBusy_Disp~combout\)) # (!\inst9|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|EA\(1),
	datab => \inst9|EA\(0),
	datac => \NBusy_Disp~combout\,
	datad => \inst5~0_combout\,
	combout => \inst9|Mux2~0_combout\);

-- Location: LCFF_X33_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\,
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(12));

-- Location: LCFF_X33_Y14_N21
\inst1|dcfifo_component|auto_generated|rdptr_g[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(11));

-- Location: LCFF_X34_Y12_N5
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8));

-- Location: LCFF_X33_Y14_N17
\inst1|dcfifo_component|auto_generated|rdptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(9));

-- Location: LCFF_X33_Y12_N13
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9));

-- Location: LCCOMB_X33_Y12_N12
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(9))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(8)))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8) & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(8)) # 
-- (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9) $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(8),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(9),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(9),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCFF_X34_Y12_N31
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6));

-- Location: LCFF_X35_Y14_N19
\inst1|dcfifo_component|auto_generated|rdptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: LCFF_X34_Y12_N17
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2));

-- Location: LCFF_X33_Y12_N11
\inst1|dcfifo_component|auto_generated|p0addr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|p0addr~feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|p0addr~regout\);

-- Location: LCFF_X34_Y14_N13
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0_regout\);

-- Location: LCFF_X34_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2_regout\);

-- Location: LCFF_X34_Y14_N9
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3_regout\);

-- Location: LCCOMB_X35_Y14_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\);

-- Location: LCFF_X32_Y14_N13
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~1_regout\);

-- Location: LCFF_X33_Y11_N7
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\,
	ena => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\);

-- Location: LCFF_X34_Y14_N7
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\);

-- Location: LCFF_X32_Y14_N7
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\);

-- Location: LCCOMB_X32_Y14_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\ $ 
-- (((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~11_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\);

-- Location: LCFF_X34_Y14_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12_regout\);

-- Location: LCFF_X34_Y12_N1
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8));

-- Location: LCFF_X32_Y12_N19
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(9));

-- Location: LCFF_X34_Y12_N19
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6));

-- Location: LCFF_X34_Y12_N29
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(2));

-- Location: LCCOMB_X34_Y14_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: LCCOMB_X33_Y11_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~11_combout\);

-- Location: LCFF_X34_Y12_N27
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: LCFF_X32_Y12_N7
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(9));

-- Location: LCFF_X34_Y12_N21
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCFF_X34_Y12_N7
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCFF_X32_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\);

-- Location: LCCOMB_X32_Y14_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~10_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NBusy4~I\ : cycloneii_io
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
	padio => ww_NBusy4,
	combout => \NBusy4~combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[11]~I\ : cycloneii_io
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
	padio => ww_data_in2(11),
	combout => \data_in2~combout\(11));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[10]~I\ : cycloneii_io
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
	padio => ww_data_in2(10),
	combout => \data_in2~combout\(10));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[8]~I\ : cycloneii_io
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
	padio => ww_data_in1(8),
	combout => \data_in1~combout\(8));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[7]~I\ : cycloneii_io
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
	padio => ww_data_in2(7),
	combout => \data_in2~combout\(7));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[6]~I\ : cycloneii_io
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
	padio => ww_data_in2(6),
	combout => \data_in2~combout\(6));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[4]~I\ : cycloneii_io
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
	padio => ww_data_in1(4),
	combout => \data_in1~combout\(4));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[3]~I\ : cycloneii_io
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
	padio => ww_data_in2(3),
	combout => \data_in2~combout\(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[2]~I\ : cycloneii_io
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
	padio => ww_data_in1(2),
	combout => \data_in1~combout\(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[1]~I\ : cycloneii_io
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
	padio => ww_data_in2(1),
	combout => \data_in2~combout\(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[0]~I\ : cycloneii_io
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
	padio => ww_data_in2(0),
	combout => \data_in2~combout\(0));

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

-- Location: CLKCTRL_G2
\inst4|altpll_component|_clk2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|altpll_component|_clk2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|altpll_component|_clk2~clkctrl_outclk\);

-- Location: LCFF_X34_Y11_N11
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_NEW_REG0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1\);

-- Location: LCCOMB_X34_Y11_N12
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\ & (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\ $ 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\ & 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\);

-- Location: LCCOMB_X33_Y11_N2
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28_BDD29\ = ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6)) # (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28_BDD29\);

-- Location: LCCOMB_X35_Y11_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30_BDD31\ = ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3)) # (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30_BDD31\);

-- Location: LCCOMB_X35_Y11_N20
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32_BDD33\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32_BDD33\);

-- Location: LCCOMB_X33_Y11_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34_BDD35\ = \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(9) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(9),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34_BDD35\);

-- Location: LCCOMB_X33_Y12_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\ = \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(13) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(13),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN46_BDD47\);

-- Location: LCCOMB_X33_Y12_N30
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12) $ (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(12),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_RESYN48_BDD49\);

-- Location: LCCOMB_X34_Y12_N26
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[8]~feeder_combout\);

-- Location: LCCOMB_X34_Y12_N4
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(8),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[8]~feeder_combout\);

-- Location: LCCOMB_X34_Y12_N30
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(6),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[6]~feeder_combout\);

-- Location: LCCOMB_X34_Y12_N16
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y12_N0
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[8]~feeder_combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(9),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[9]~feeder_combout\);

-- Location: LCCOMB_X34_Y12_N28
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y11_N10
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1feeder_combout\);

-- Location: LCCOMB_X33_Y12_N10
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

-- Location: LCCOMB_X34_Y14_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0feeder_combout\);

-- Location: LCCOMB_X34_Y14_N14
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2feeder_combout\);

-- Location: LCCOMB_X34_Y14_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3feeder_combout\);

-- Location: LCCOMB_X34_Y14_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~10feeder_combout\);

-- Location: LCCOMB_X34_Y14_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12feeder_combout\);

-- Location: LCCOMB_X34_Y14_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~39_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~39_combout\);

-- Location: LCCOMB_X34_Y14_N2
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

-- Location: LCFF_X34_Y14_N3
\inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdaclr|dffe20a\(0));

-- Location: LCFF_X34_Y14_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[2]~39_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2));

-- Location: LCCOMB_X35_Y14_N14
\inst1|dcfifo_component|auto_generated|rdptr_g[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y14_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5feeder_combout\);

-- Location: LCFF_X34_Y14_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5_regout\);

-- Location: LCCOMB_X34_Y14_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4feeder_combout\);

-- Location: LCFF_X34_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4_regout\);

-- Location: LCCOMB_X32_Y14_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X34_Y14_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6feeder_combout\);

-- Location: LCFF_X34_Y14_N31
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_regout\);

-- Location: LCCOMB_X36_Y14_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~45_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~45_combout\);

-- Location: LCFF_X36_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\);

-- Location: LCCOMB_X35_Y14_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\ $ ((((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\)) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30_combout\);

-- Location: LCCOMB_X33_Y14_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~6_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~30_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\);

-- Location: LCCOMB_X35_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~46_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~46_combout\);

-- Location: LCFF_X35_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\);

-- Location: LCCOMB_X35_Y14_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\ & 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X34_Y14_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7feeder_combout\);

-- Location: LCFF_X34_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7_regout\);

-- Location: LCCOMB_X33_Y14_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~7_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\);

-- Location: LCCOMB_X32_Y14_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~47_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~47_combout\);

-- Location: LCFF_X32_Y14_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\);

-- Location: LCCOMB_X35_Y14_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~17_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: LCCOMB_X34_Y14_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8feeder_combout\);

-- Location: LCFF_X34_Y14_N19
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8_regout\);

-- Location: LCCOMB_X33_Y14_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~8_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\);

-- Location: LCFF_X33_Y14_N19
\inst1|dcfifo_component|auto_generated|rdptr_g[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(10));

-- Location: LCCOMB_X33_Y11_N0
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26_BDD27\ = ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9)) # (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))) # 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26_BDD27\);

-- Location: LCFF_X33_Y14_N23
\inst1|dcfifo_component|auto_generated|rdptr_g[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: LCFF_X34_Y11_N25
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[8]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(8));

-- Location: LCCOMB_X34_Y11_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36_BDD37\ = \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(8) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(8),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36_BDD37\);

-- Location: LCCOMB_X34_Y11_N20
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36_BDD37\) # 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34_BDD35\ $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN34_BDD35\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_RESYN36_BDD37\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\);

-- Location: LCFF_X33_Y14_N29
\inst1|dcfifo_component|auto_generated|rdptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X33_Y14_N26
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\);

-- Location: LCFF_X33_Y14_N27
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0));

-- Location: LCCOMB_X34_Y14_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~38_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1) $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~38_combout\);

-- Location: LCFF_X34_Y14_N1
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[1]~38_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1));

-- Location: LCFF_X33_Y14_N7
\inst1|dcfifo_component|auto_generated|rdptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X33_Y14_N12
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\);

-- Location: LCFF_X33_Y14_N13
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1));

-- Location: LCCOMB_X34_Y11_N16
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1))) # (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\ & 
-- ((\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0)) # (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\ $ (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\,
	datab => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(0),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\,
	datad => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(1),
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\);

-- Location: LCFF_X34_Y11_N9
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\);

-- Location: LCFF_X35_Y14_N13
\inst1|dcfifo_component|auto_generated|rdptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCFF_X35_Y11_N11
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5));

-- Location: LCCOMB_X35_Y11_N18
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4) & ((\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\))) # (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4) & 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\) # (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(4),
	datab => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\);

-- Location: LCFF_X35_Y11_N25
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\);

-- Location: LCCOMB_X34_Y11_N2
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52_BDD53\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\) # ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52_BDD53\);

-- Location: LCCOMB_X35_Y11_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52_BDD53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN52_BDD53\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\);

-- Location: LCCOMB_X35_Y11_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30_BDD31\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_RESYN30_BDD31\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\);

-- Location: LCFF_X35_Y11_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[5]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5));

-- Location: LCCOMB_X33_Y11_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\);

-- Location: LCFF_X33_Y11_N23
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6));

-- Location: LCCOMB_X33_Y11_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56_BDD57\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7)) # ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5)) # 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56_BDD57\);

-- Location: LCFF_X33_Y11_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10));

-- Location: LCCOMB_X33_Y11_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56_BDD57\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_RESYN56_BDD57\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\);

-- Location: LCCOMB_X33_Y14_N4
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	combout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]~feeder_combout\);

-- Location: LCFF_X33_Y14_N5
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(10));

-- Location: LCCOMB_X34_Y11_N0
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(11) & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(10))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\))) # (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(11) & 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\) # (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\ $ (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(11),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[10]~2_combout\,
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(10),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X34_Y11_N4
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_RTM067\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_RTM067_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\ & 
-- !\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_RTM067_combout\);

-- Location: LCFF_X34_Y11_N5
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_NEW_REG64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_RTM067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\);

-- Location: LCCOMB_X34_Y10_N24
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\) # (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_combout\);

-- Location: LCFF_X34_Y10_N25
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_NEW_REG62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\);

-- Location: LCCOMB_X36_Y11_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\);

-- Location: LCCOMB_X36_Y11_N24
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~12_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~feeder_combout\);

-- Location: LCFF_X36_Y11_N25
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0));

-- Location: LCCOMB_X35_Y11_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\);

-- Location: LCFF_X35_Y11_N31
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3));

-- Location: LCCOMB_X35_Y11_N22
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\);

-- Location: LCCOMB_X33_Y11_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54_BDD55\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54_BDD55\);

-- Location: LCCOMB_X33_Y11_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54_BDD55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_RESYN54_BDD55\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\);

-- Location: LCCOMB_X33_Y11_N10
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26_BDD27\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_RESYN26_BDD27\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\);

-- Location: LCFF_X33_Y11_N11
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11));

-- Location: LCFF_X32_Y12_N13
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(11));

-- Location: LCCOMB_X32_Y12_N0
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(11),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]~feeder_combout\);

-- Location: LCFF_X32_Y12_N1
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(11));

-- Location: LCFF_X33_Y12_N27
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[11]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(11));

-- Location: LCFF_X34_Y12_N9
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(10));

-- Location: LCFF_X34_Y12_N23
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[10]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(10));

-- Location: LCCOMB_X34_Y12_N2
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(10),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]~feeder_combout\);

-- Location: LCFF_X34_Y12_N3
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(10));

-- Location: LCCOMB_X33_Y12_N26
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(10) $ 
-- (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(10))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(11)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(11) & 
-- ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(11)) # (\inst1|dcfifo_component|auto_generated|rdptr_g\(10) $ (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(11),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(10),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(11),
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(10),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X32_Y14_N28
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~48_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~48_combout\);

-- Location: LCFF_X32_Y14_N29
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\);

-- Location: LCCOMB_X32_Y14_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\ $ ((((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\) # 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\)) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34_combout\);

-- Location: LCCOMB_X34_Y14_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9feeder_combout\);

-- Location: LCFF_X34_Y14_N5
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9feeder_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9_regout\);

-- Location: LCCOMB_X33_Y14_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~34_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~9_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\);

-- Location: LCCOMB_X32_Y14_N14
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~49_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~49_combout\);

-- Location: LCFF_X32_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\);

-- Location: LCFF_X32_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~13_regout\);

-- Location: LCCOMB_X32_Y14_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ & 
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~15_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~16_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X32_Y14_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~13_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~12_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~14_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~13_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\);

-- Location: LCCOMB_X33_Y14_N24
\inst1|dcfifo_component|auto_generated|rdptr_g[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g[13]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g[13]~feeder_combout\);

-- Location: LCFF_X33_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g[13]~feeder_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(13));

-- Location: LCCOMB_X33_Y11_N4
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44_BDD45\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44_BDD45\);

-- Location: LCCOMB_X34_Y11_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) & (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44_BDD45\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_RESYN44_BDD45\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~1_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~1_combout\);

-- Location: LCFF_X33_Y12_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13));

-- Location: LCFF_X34_Y13_N17
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(13));

-- Location: LCFF_X34_Y12_N13
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[13]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(13));

-- Location: LCFF_X33_Y12_N25
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[13]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(13));

-- Location: LCCOMB_X33_Y12_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~0_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~4_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~0_combout\);

-- Location: LCFF_X33_Y12_N9
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12));

-- Location: LCFF_X34_Y12_N15
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(12));

-- Location: LCFF_X34_Y12_N11
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[12]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(12));

-- Location: LCCOMB_X34_Y12_N24
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(12),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]~feeder_combout\);

-- Location: LCFF_X34_Y12_N25
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(12));

-- Location: LCCOMB_X33_Y12_N24
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(13) $ 
-- (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(13))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(12)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(12) & 
-- ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(12)) # (\inst1|dcfifo_component|auto_generated|rdptr_g\(13) $ (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(12),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(13),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(13),
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(12),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCFF_X33_Y14_N11
\inst1|dcfifo_component|auto_generated|rdptr_g[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X33_Y11_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6) & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\);

-- Location: LCFF_X33_Y11_N1
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7));

-- Location: LCCOMB_X32_Y12_N24
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(7),
	combout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\);

-- Location: LCFF_X32_Y12_N25
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCFF_X32_Y12_N21
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(7));

-- Location: LCFF_X33_Y12_N23
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7));

-- Location: LCCOMB_X33_Y12_N22
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(7))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(6)))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6) & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(6)) # 
-- (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7) $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(6),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(7),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X33_Y12_N16
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\) # 
-- ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\) # ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~2_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\);

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

-- Location: LCCOMB_X33_Y12_N4
\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ = ((\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\) # 
-- (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\)))) # (!\inst1|dcfifo_component|auto_generated|p0addr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|p0addr~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	datad => \ren~combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\);

-- Location: LCFF_X32_Y14_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0));

-- Location: LCCOMB_X32_Y14_N22
\inst1|dcfifo_component|auto_generated|ram_address_b[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ram_address_b\(12) = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[12]~36_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~37_combout\,
	combout => \inst1|dcfifo_component|auto_generated|ram_address_b\(12));

-- Location: LCFF_X32_Y14_N31
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	sload => VCC,
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\);

-- Location: LCCOMB_X32_Y14_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[8]~31_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[9]~32_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[10]~33_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[11]~35_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\);

-- Location: LCFF_X32_Y14_N5
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~12_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\);

-- Location: LCCOMB_X35_Y14_N24
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~42_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~42_combout\);

-- Location: LCFF_X35_Y14_N25
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\);

-- Location: LCCOMB_X35_Y14_N6
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\);

-- Location: LCFF_X35_Y14_N7
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\);

-- Location: LCCOMB_X35_Y14_N18
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~2_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\);

-- Location: LCCOMB_X32_Y14_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[4]~25_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\);

-- Location: LCFF_X32_Y14_N11
\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~11_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\);

-- Location: LCCOMB_X32_Y14_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\ $ (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\ $ (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a0~regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a3~regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a2~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|sub_parity6a1~regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\);

-- Location: LCFF_X32_Y14_N21
\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~9_combout\,
	aclr => \inst1|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe20a\(0),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\);

-- Location: LCCOMB_X34_Y14_N22
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = (\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\ & !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|parity5~regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(1),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: LCCOMB_X35_Y14_N26
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a\(2),
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: LCFF_X35_Y14_N27
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~1_regout\);

-- Location: LCCOMB_X35_Y14_N8
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~1_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~0_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~1_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\);

-- Location: LCCOMB_X35_Y14_N4
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~41_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~41_combout\);

-- Location: LCFF_X35_Y14_N5
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\);

-- Location: LCCOMB_X35_Y14_N20
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\ $ (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\) # 
-- ((!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26_combout\);

-- Location: LCCOMB_X35_Y14_N12
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~3_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~26_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\);

-- Location: LCCOMB_X35_Y14_N2
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~43_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[5]~27_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~43_combout\);

-- Location: LCFF_X35_Y14_N3
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\);

-- Location: LCCOMB_X35_Y14_N30
\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\ & (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\ & 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\ & \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~21_regout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~20_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~22_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~23_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X33_Y14_N10
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\ $ 
-- (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~4_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\);

-- Location: LCCOMB_X34_Y15_N16
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~44_combout\ = !\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[6]~28_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~44_combout\);

-- Location: LCFF_X34_Y15_N17
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\);

-- Location: LCCOMB_X35_Y14_N0
\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5_regout\ & (\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\ $ 
-- (((\inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\) # (!\inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g1p|cntr_cout[6]~0_combout\,
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~5_regout\,
	datac => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~19_regout\,
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[13]~18_regout\,
	combout => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\);

-- Location: LCFF_X35_Y14_N1
\inst1|dcfifo_component|auto_generated|rdptr_g[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[7]~29_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: LCCOMB_X35_Y12_N16
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(7),
	combout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]~feeder_combout\);

-- Location: LCFF_X35_Y12_N17
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7));

-- Location: LCCOMB_X33_Y14_N8
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rdptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]~feeder_combout\);

-- Location: LCFF_X33_Y14_N9
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6));

-- Location: LCCOMB_X34_Y11_N14
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\ & ((\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\)) # (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7)))) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\ & 
-- ((\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7)) # (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[7]~7_combout\,
	datab => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(7),
	datac => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(6),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[6]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X34_Y11_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_RTM071\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_RTM071_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\ & 
-- (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\ & 
-- !\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_RTM03_combout\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_RTM071_combout\);

-- Location: LCFF_X34_Y11_N31
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_NEW_REG68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_RTM071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_OTERM69\);

-- Location: LCFF_X34_Y11_N27
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\);

-- Location: LCCOMB_X34_Y11_N26
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\) # (((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\) # 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_OTERM69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_RESYN50_OTERM69\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\);

-- Location: LCCOMB_X34_Y11_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\ = (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~0_combout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_RESYN42_BDD43\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\);

-- Location: LCCOMB_X34_Y11_N18
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28_BDD29\ & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_RESYN28_BDD29\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~2_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\);

-- Location: LCFF_X34_Y11_N19
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8));

-- Location: LCCOMB_X33_Y11_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~5_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8) & 
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~3_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~5_combout\);

-- Location: LCFF_X33_Y11_N29
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9));

-- Location: LCCOMB_X33_Y11_N16
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~12_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(10),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(9),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(11),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(8),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~12_combout\);

-- Location: LCFF_X33_Y11_N17
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~12_combout\,
	ena => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\);

-- Location: LCCOMB_X33_Y11_N26
\inst1|dcfifo_component|auto_generated|ram_address_a[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|ram_address_a\(12) = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	combout => \inst1|dcfifo_component|auto_generated|ram_address_a\(12));

-- Location: LCFF_X33_Y11_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ram_address_a\(12),
	ena => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\);

-- Location: LCCOMB_X33_Y11_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\);

-- Location: LCFF_X33_Y11_N13
\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~10_combout\,
	ena => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\);

-- Location: LCCOMB_X36_Y11_N28
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\ $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\ $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\ $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a1~regout\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a2~regout\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a3~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|sub_parity12a0~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\);

-- Location: LCFF_X36_Y11_N29
\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~9_combout\,
	ena => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\);

-- Location: LCCOMB_X35_Y11_N14
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) $ (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\ & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\);

-- Location: LCFF_X35_Y11_N27
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[1]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1));

-- Location: LCCOMB_X35_Y11_N30
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58_BDD59\ = (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2)) # ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)) # 
-- ((!\inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|parity11~regout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58_BDD59\);

-- Location: LCCOMB_X34_Y11_N22
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7feeder_combout\);

-- Location: LCFF_X34_Y11_N23
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_NEW_REG6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7\);

-- Location: LCCOMB_X36_Y11_N8
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60_BDD61\ = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\) # ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7\) # (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_OTERM7\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~2_OTERM9\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60_BDD61\);

-- Location: LCFF_X34_Y11_N15
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_OTERM5\);

-- Location: LCCOMB_X35_Y11_N4
\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_BDD41\ = ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\) # ((\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60_BDD61\) # 
-- (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_OTERM5\))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_OTERM1\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_RESYN60_BDD61\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~3_OTERM5\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_BDD41\);

-- Location: LCCOMB_X35_Y11_N6
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58_BDD59\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_BDD41\ & !\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_RESYN58_BDD59\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|_~1_RESYN40_BDD41\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\);

-- Location: LCCOMB_X35_Y11_N0
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~8_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~feeder_combout\);

-- Location: LCFF_X35_Y11_N1
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4));

-- Location: LCCOMB_X32_Y12_N26
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(4),
	combout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\);

-- Location: LCFF_X32_Y12_N27
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X32_Y12_N14
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\);

-- Location: LCFF_X32_Y12_N15
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(4));

-- Location: LCCOMB_X33_Y12_N2
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(4),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]~feeder_combout\);

-- Location: LCFF_X33_Y12_N3
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4));

-- Location: LCFF_X32_Y12_N29
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X32_Y12_N8
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\);

-- Location: LCFF_X32_Y12_N9
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(5));

-- Location: LCFF_X33_Y12_N29
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[5]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5));

-- Location: LCCOMB_X33_Y12_N28
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(5))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(4) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4)) 
-- # (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5) $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(4),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(5),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\);

-- Location: LCFF_X36_Y11_N23
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LCCOMB_X33_Y13_N12
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\);

-- Location: LCFF_X33_Y13_N13
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(0));

-- Location: LCCOMB_X33_Y13_N8
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(0),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]~feeder_combout\);

-- Location: LCFF_X33_Y13_N9
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0));

-- Location: LCCOMB_X33_Y13_N0
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	combout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\);

-- Location: LCFF_X33_Y13_N1
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X33_Y13_N14
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]~feeder_combout\);

-- Location: LCFF_X33_Y13_N15
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(1));

-- Location: LCFF_X33_Y13_N19
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[1]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1));

-- Location: LCCOMB_X33_Y13_N18
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7_combout\ = (\inst1|dcfifo_component|auto_generated|rdptr_g\(1) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(0))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1)))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(1) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1)) 
-- # (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0) $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(0),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(1),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(0),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(3),
	combout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\);

-- Location: LCFF_X32_Y12_N23
\inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X32_Y12_N2
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\ = \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\);

-- Location: LCFF_X32_Y12_N3
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(3));

-- Location: LCFF_X33_Y12_N7
\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a[3]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe6a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3));

-- Location: LCFF_X35_Y14_N9
\inst1|dcfifo_component|auto_generated|rdptr_g[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g1p|counter7a[3]~24_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X33_Y12_N6
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2) & ((\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3) $ 
-- (\inst1|dcfifo_component|auto_generated|rdptr_g\(3))) # (!\inst1|dcfifo_component|auto_generated|rdptr_g\(2)))) # (!\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2) & ((\inst1|dcfifo_component|auto_generated|rdptr_g\(2)) # 
-- (\inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3) $ (\inst1|dcfifo_component|auto_generated|rdptr_g\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(2),
	datab => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \inst1|dcfifo_component|auto_generated|rs_dgwp|dffpipe5|dffe7a\(3),
	datad => \inst1|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X33_Y12_N0
\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\ = (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\) # 
-- ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7_combout\) # (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~5_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~7_combout\,
	datad => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\);

-- Location: LCCOMB_X33_Y12_N14
\inst1|dcfifo_component|auto_generated|valid_rdreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\ = (\ren~combout\ & ((\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\) # 
-- (\inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~8_combout\,
	datac => \inst1|dcfifo_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~4_combout\,
	datad => \ren~combout\,
	combout => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\);

-- Location: LCFF_X35_Y14_N15
\inst1|dcfifo_component|auto_generated|rdptr_g[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCFF_X35_Y11_N9
\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a[2]\ : cycloneii_lcell_ff
-- pragma translate_off
GENERIC MAP (
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	sdata => \inst1|dcfifo_component|auto_generated|rdptr_g\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2));

-- Location: LCFF_X35_Y11_N13
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2));

-- Location: LCCOMB_X35_Y11_N12
\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\ = \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2) $ (((!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32_BDD33\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1) & \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_RESYN32_BDD33\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(1),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(2),
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	combout => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\);

-- Location: LCCOMB_X35_Y11_N16
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\ = (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3) & ((\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2) $ 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\)) # (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\))) # (!\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3) & 
-- ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\) # (\inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(3),
	datab => \inst1|dcfifo_component|auto_generated|ws_dgrp|dffpipe8|dffe9a\(2),
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[2]~10_combout\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a[3]~11_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X35_Y11_N2
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15feeder_combout\ = \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_combout\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15feeder_combout\);

-- Location: LCFF_X35_Y11_N3
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \writeOr~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\);

-- Location: LCCOMB_X36_Y11_N18
\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\) # ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\) # 
-- ((\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~6_OTERM15\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~5_OTERM11\,
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\,
	datad => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~7_OTERM13\,
	combout => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0));

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

-- Location: LCCOMB_X46_Y14_N8
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

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LLD~I\ : cycloneii_io
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
	padio => ww_LLD,
	combout => \LLD~combout\);

-- Location: LCFF_X47_Y14_N3
\inst3|q0_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \LLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q0_Entrada~regout\);

-- Location: LCCOMB_X47_Y14_N24
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

-- Location: LCFF_X47_Y14_N25
\inst3|q1_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q1_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q1_Entrada~regout\);

-- Location: LCFF_X47_Y14_N7
\inst3|q2_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \inst3|q1_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q2_Entrada~regout\);

-- Location: LCCOMB_X47_Y14_N20
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

-- Location: LCFF_X47_Y14_N21
\inst3|q3_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst3|q3_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q3_Entrada~regout\);

-- Location: LCFF_X47_Y14_N9
\inst3|q4_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \inst3|q3_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|q4_Entrada~regout\);

-- Location: LCCOMB_X47_Y14_N8
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|EA\(0) & (!\inst|LessThan0~0_combout\ & (!\inst|cuenta_180\(8)))) # (!\inst|EA\(0) & (((\inst3|q4_Entrada~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|cuenta_180\(8),
	datac => \inst3|q4_Entrada~regout\,
	datad => \inst|EA\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NBusy3~I\ : cycloneii_io
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
	padio => ww_NBusy3,
	combout => \NBusy3~combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NBusy1~I\ : cycloneii_io
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
	padio => ww_NBusy1,
	combout => \NBusy1~combout\);

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NBusy2~I\ : cycloneii_io
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
	padio => ww_NBusy2,
	combout => \NBusy2~combout\);

-- Location: LCCOMB_X49_Y20_N24
\inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\NBusy4~combout\ & (\NBusy3~combout\ & (\NBusy1~combout\ & \NBusy2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NBusy4~combout\,
	datab => \NBusy3~combout\,
	datac => \NBusy1~combout\,
	datad => \NBusy2~combout\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X47_Y14_N0
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|EA\(1) & ((!\inst5~0_combout\))) # (!\inst|EA\(1) & (\inst|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux3~0_combout\,
	datac => \inst|EA\(1),
	datad => \inst5~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCFF_X47_Y14_N1
\inst|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(0));

-- Location: LCCOMB_X47_Y14_N26
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|EA\(1)) # (!\inst|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|EA\(1),
	datad => \inst|EA\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: LCFF_X46_Y14_N9
\inst|cuenta_180[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[0]~9_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(0));

-- Location: LCCOMB_X46_Y14_N14
\inst|cuenta_180[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[3]~15_combout\ = (\inst|cuenta_180\(3) & (!\inst|cuenta_180[2]~14\)) # (!\inst|cuenta_180\(3) & ((\inst|cuenta_180[2]~14\) # (GND)))
-- \inst|cuenta_180[3]~16\ = CARRY((!\inst|cuenta_180[2]~14\) # (!\inst|cuenta_180\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(3),
	datad => VCC,
	cin => \inst|cuenta_180[2]~14\,
	combout => \inst|cuenta_180[3]~15_combout\,
	cout => \inst|cuenta_180[3]~16\);

-- Location: LCFF_X46_Y14_N15
\inst|cuenta_180[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[3]~15_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(3));

-- Location: LCCOMB_X46_Y14_N18
\inst|cuenta_180[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[5]~19_combout\ = (\inst|cuenta_180\(5) & (!\inst|cuenta_180[4]~18\)) # (!\inst|cuenta_180\(5) & ((\inst|cuenta_180[4]~18\) # (GND)))
-- \inst|cuenta_180[5]~20\ = CARRY((!\inst|cuenta_180[4]~18\) # (!\inst|cuenta_180\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(5),
	datad => VCC,
	cin => \inst|cuenta_180[4]~18\,
	combout => \inst|cuenta_180[5]~19_combout\,
	cout => \inst|cuenta_180[5]~20\);

-- Location: LCFF_X46_Y14_N19
\inst|cuenta_180[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[5]~19_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(5));

-- Location: LCCOMB_X46_Y14_N22
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

-- Location: LCFF_X46_Y14_N23
\inst|cuenta_180[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[7]~23_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(7));

-- Location: LCCOMB_X46_Y14_N24
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

-- Location: LCFF_X46_Y14_N25
\inst|cuenta_180[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst|cuenta_180[8]~25_combout\,
	sclr => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(8));

-- Location: LCCOMB_X47_Y14_N22
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (!\inst|EA\(1) & (\inst|EA\(0) & ((\inst|LessThan0~0_combout\) # (\inst|cuenta_180\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|cuenta_180\(8),
	datac => \inst|EA\(1),
	datad => \inst|EA\(0),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y14_N10
\inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\) # ((\inst|EA\(1) & ((!\inst5~0_combout\) # (!\inst|EA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(0),
	datab => \inst|Mux2~0_combout\,
	datac => \inst|EA\(1),
	datad => \inst5~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCFF_X40_Y14_N11
\inst|EA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(1));

-- Location: LCCOMB_X47_Y14_N18
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|EA\(1)) # (\inst|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|EA\(1),
	datad => \inst|EA\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y14_N8
\inst2|leido[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[1]~12_combout\ = (\inst2|leido\(1) & (!\inst2|leido[0]~11\)) # (!\inst2|leido\(1) & ((\inst2|leido[0]~11\) # (GND)))
-- \inst2|leido[1]~13\ = CARRY((!\inst2|leido[0]~11\) # (!\inst2|leido\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|leido\(1),
	datad => VCC,
	cin => \inst2|leido[0]~11\,
	combout => \inst2|leido[1]~12_combout\,
	cout => \inst2|leido[1]~13\);

-- Location: LCCOMB_X39_Y14_N14
\inst2|leido[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[4]~18_combout\ = (\inst2|leido\(4) & (\inst2|leido[3]~17\ $ (GND))) # (!\inst2|leido\(4) & (!\inst2|leido[3]~17\ & VCC))
-- \inst2|leido[4]~19\ = CARRY((\inst2|leido\(4) & !\inst2|leido[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|leido\(4),
	datad => VCC,
	cin => \inst2|leido[3]~17\,
	combout => \inst2|leido[4]~18_combout\,
	cout => \inst2|leido[4]~19\);

-- Location: LCCOMB_X39_Y14_N16
\inst2|leido[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[5]~20_combout\ = (\inst2|leido\(5) & (!\inst2|leido[4]~19\)) # (!\inst2|leido\(5) & ((\inst2|leido[4]~19\) # (GND)))
-- \inst2|leido[5]~21\ = CARRY((!\inst2|leido[4]~19\) # (!\inst2|leido\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(5),
	datad => VCC,
	cin => \inst2|leido[4]~19\,
	combout => \inst2|leido[5]~20_combout\,
	cout => \inst2|leido[5]~21\);

-- Location: LCCOMB_X39_Y14_N18
\inst2|leido[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[6]~22_combout\ = (\inst2|leido\(6) & (\inst2|leido[5]~21\ $ (GND))) # (!\inst2|leido\(6) & (!\inst2|leido[5]~21\ & VCC))
-- \inst2|leido[6]~23\ = CARRY((\inst2|leido\(6) & !\inst2|leido[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|leido\(6),
	datad => VCC,
	cin => \inst2|leido[5]~21\,
	combout => \inst2|leido[6]~22_combout\,
	cout => \inst2|leido[6]~23\);

-- Location: LCFF_X39_Y14_N19
\inst2|leido[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[6]~22_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(6));

-- Location: LCCOMB_X39_Y14_N22
\inst2|leido[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[8]~26_combout\ = (\inst2|leido\(8) & (\inst2|leido[7]~25\ $ (GND))) # (!\inst2|leido\(8) & (!\inst2|leido[7]~25\ & VCC))
-- \inst2|leido[8]~27\ = CARRY((\inst2|leido\(8) & !\inst2|leido[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|leido\(8),
	datad => VCC,
	cin => \inst2|leido[7]~25\,
	combout => \inst2|leido[8]~26_combout\,
	cout => \inst2|leido[8]~27\);

-- Location: LCFF_X39_Y14_N23
\inst2|leido[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[8]~26_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(8));

-- Location: LCCOMB_X39_Y14_N24
\inst2|leido[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[9]~28_combout\ = \inst2|leido\(9) $ (\inst2|leido[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(9),
	cin => \inst2|leido[8]~27\,
	combout => \inst2|leido[9]~28_combout\);

-- Location: LCFF_X39_Y14_N25
\inst2|leido[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[9]~28_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(9));

-- Location: LCCOMB_X39_Y14_N4
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|leido\(7)) # ((\inst2|leido\(8)) # ((\inst2|leido\(9)) # (\inst2|leido\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(7),
	datab => \inst2|leido\(8),
	datac => \inst2|leido\(9),
	datad => \inst2|leido\(6),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y14_N0
\inst2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|LessThan0~1_combout\) # (\inst2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y14_N30
\inst2|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_1~0_combout\ = ((!\inst2|LessThan0~1_combout\ & !\inst2|LessThan0~0_combout\)) # (!\inst|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(1),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|process_1~0_combout\);

-- Location: LCCOMB_X38_Y14_N30
\inst2|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux17~0_combout\ = (\inst2|EA\(2) & (((\inst2|process_1~0_combout\)) # (!\inst2|EA\(0)))) # (!\inst2|EA\(2) & (((\inst2|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(2),
	datab => \inst2|EA\(0),
	datac => \inst2|Mux15~3_combout\,
	datad => \inst2|process_1~0_combout\,
	combout => \inst2|Mux17~0_combout\);

-- Location: LCCOMB_X37_Y14_N30
\inst2|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux17~1_combout\ = (\inst2|Mux17~0_combout\ & (\inst2|EA\(1) $ (\inst2|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|Mux17~0_combout\,
	combout => \inst2|Mux17~1_combout\);

-- Location: LCFF_X37_Y14_N31
\inst2|EA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|EA\(2));

-- Location: LCCOMB_X39_Y14_N28
\inst2|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux16~0_combout\ = (\inst2|EA\(0) & (((\inst2|EA\(2) & !\inst|EA\(1))) # (!\inst2|LessThan0~2_combout\))) # (!\inst2|EA\(0) & ((\inst2|EA\(2) & ((!\inst2|LessThan0~2_combout\))) # (!\inst2|EA\(2) & (\inst|EA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(0),
	datab => \inst2|EA\(2),
	datac => \inst|EA\(1),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|Mux16~0_combout\);

-- Location: LCCOMB_X39_Y14_N26
\inst2|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux16~1_combout\ = (\inst2|EA\(1) & ((\inst2|EA\(2)) # ((\inst2|LessThan0~2_combout\)))) # (!\inst2|EA\(1) & (((!\inst2|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(2),
	datab => \inst2|LessThan0~2_combout\,
	datac => \inst2|EA\(1),
	datad => \inst2|Mux16~0_combout\,
	combout => \inst2|Mux16~1_combout\);

-- Location: LCFF_X39_Y14_N9
\inst2|leido[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst2|leido[1]~12_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(1));

-- Location: LCCOMB_X39_Y14_N10
\inst2|leido[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leido[2]~14_combout\ = (\inst2|leido\(2) & (\inst2|leido[1]~13\ $ (GND))) # (!\inst2|leido\(2) & (!\inst2|leido[1]~13\ & VCC))
-- \inst2|leido[2]~15\ = CARRY((\inst2|leido\(2) & !\inst2|leido[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(2),
	datad => VCC,
	cin => \inst2|leido[1]~13\,
	combout => \inst2|leido[2]~14_combout\,
	cout => \inst2|leido[2]~15\);

-- Location: LCFF_X39_Y14_N15
\inst2|leido[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[4]~18_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(4));

-- Location: LCFF_X39_Y14_N17
\inst2|leido[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[5]~20_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(5));

-- Location: LCFF_X39_Y14_N11
\inst2|leido[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|leido[2]~14_combout\,
	sclr => \inst2|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leido\(2));

-- Location: LCCOMB_X39_Y14_N2
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|leido\(3)) # ((\inst2|leido\(4)) # ((\inst2|leido\(5)) # (\inst2|leido\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|leido\(3),
	datab => \inst2|leido\(4),
	datac => \inst2|leido\(5),
	datad => \inst2|leido\(2),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y14_N8
\inst2|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux15~3_combout\ = (\inst2|EA\(0) & ((\inst2|LessThan0~1_combout\) # (\inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datac => \inst2|EA\(0),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|Mux15~3_combout\);

-- Location: LCCOMB_X37_Y14_N14
\inst2|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux18~0_combout\ = (!\inst2|EA\(2) & (\inst2|Mux15~3_combout\ $ (\inst2|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(2),
	datab => \inst2|Mux15~3_combout\,
	datac => \inst2|EA\(1),
	combout => \inst2|Mux18~0_combout\);

-- Location: LCFF_X37_Y14_N15
\inst2|EA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|EA\(1));

-- Location: LCCOMB_X38_Y14_N24
\inst2|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux19~0_combout\ = (\inst2|EA\(0) & (((!\inst2|LessThan0~2_combout\)))) # (!\inst2|EA\(0) & ((\inst2|EA\(1) & ((\inst2|LessThan0~2_combout\))) # (!\inst2|EA\(1) & (!\inst|EA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(1),
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(0),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|Mux19~0_combout\);

-- Location: LCCOMB_X37_Y14_N16
\inst2|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux19~2_combout\ = (\inst2|EA\(2) & (\inst2|Mux19~1_combout\ & (!\inst2|EA\(1)))) # (!\inst2|EA\(2) & (((\inst2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux19~1_combout\,
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|Mux19~0_combout\,
	combout => \inst2|Mux19~2_combout\);

-- Location: LCFF_X37_Y14_N17
\inst2|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~combout\,
	datain => \inst2|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|EA\(0));

-- Location: LCCOMB_X38_Y14_N6
\inst2|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux15~1_combout\ = (\inst2|LessThan0~1_combout\) # ((\inst2|EA\(0)) # (\inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datab => \inst2|EA\(0),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|Mux15~1_combout\);

-- Location: LCCOMB_X38_Y14_N2
\inst2|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux15~0_combout\ = (!\inst2|EA\(1) & ((\inst2|EA\(2)) # ((\inst|EA\(1) & !\inst2|EA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(1),
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|EA\(0),
	combout => \inst2|Mux15~0_combout\);

-- Location: LCCOMB_X38_Y14_N16
\inst2|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux15~2_combout\ = (\inst2|Mux15~0_combout\) # ((\inst2|Mux15~1_combout\ & (\inst2|EA\(1) & !\inst2|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux15~1_combout\,
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|Mux15~0_combout\,
	combout => \inst2|Mux15~2_combout\);

-- Location: LCCOMB_X38_Y14_N20
\inst2|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux21~0_combout\ = (\inst2|Mux15~1_combout\ & (!\inst2|EA\(1))) # (!\inst2|Mux15~1_combout\ & ((!\inst2|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|Mux15~1_combout\,
	combout => \inst2|Mux21~0_combout\);

-- Location: LCCOMB_X38_Y14_N22
\inst2|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux22~0_combout\ = ((!\inst2|LessThan0~1_combout\ & (!\inst2|LessThan0~0_combout\ & !\inst2|EA\(0)))) # (!\inst2|EA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|EA\(2),
	datad => \inst2|EA\(0),
	combout => \inst2|Mux22~0_combout\);

-- Location: LCCOMB_X48_Y17_N14
\inst9|cuenta_180[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[1]~11_combout\ = (\inst9|cuenta_180\(1) & (!\inst9|cuenta_180[0]~10\)) # (!\inst9|cuenta_180\(1) & ((\inst9|cuenta_180[0]~10\) # (GND)))
-- \inst9|cuenta_180[1]~12\ = CARRY((!\inst9|cuenta_180[0]~10\) # (!\inst9|cuenta_180\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cuenta_180\(1),
	datad => VCC,
	cin => \inst9|cuenta_180[0]~10\,
	combout => \inst9|cuenta_180[1]~11_combout\,
	cout => \inst9|cuenta_180[1]~12\);

-- Location: LCCOMB_X48_Y17_N24
\inst9|cuenta_180[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[6]~21_combout\ = (\inst9|cuenta_180\(6) & (\inst9|cuenta_180[5]~20\ $ (GND))) # (!\inst9|cuenta_180\(6) & (!\inst9|cuenta_180[5]~20\ & VCC))
-- \inst9|cuenta_180[6]~22\ = CARRY((\inst9|cuenta_180\(6) & !\inst9|cuenta_180[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(6),
	datad => VCC,
	cin => \inst9|cuenta_180[5]~20\,
	combout => \inst9|cuenta_180[6]~21_combout\,
	cout => \inst9|cuenta_180[6]~22\);

-- Location: LCFF_X48_Y17_N25
\inst9|cuenta_180[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[6]~21_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(6));

-- Location: LCCOMB_X48_Y17_N20
\inst9|cuenta_180[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[4]~17_combout\ = (\inst9|cuenta_180\(4) & (\inst9|cuenta_180[3]~16\ $ (GND))) # (!\inst9|cuenta_180\(4) & (!\inst9|cuenta_180[3]~16\ & VCC))
-- \inst9|cuenta_180[4]~18\ = CARRY((\inst9|cuenta_180\(4) & !\inst9|cuenta_180[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(4),
	datad => VCC,
	cin => \inst9|cuenta_180[3]~16\,
	combout => \inst9|cuenta_180[4]~17_combout\,
	cout => \inst9|cuenta_180[4]~18\);

-- Location: LCFF_X48_Y17_N21
\inst9|cuenta_180[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[4]~17_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(4));

-- Location: LCCOMB_X49_Y17_N8
\inst9|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = (\inst9|cuenta_180\(7)) # ((\inst9|cuenta_180\(6)) # ((\inst9|cuenta_180\(4)) # (\inst9|cuenta_180\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(7),
	datab => \inst9|cuenta_180\(6),
	datac => \inst9|cuenta_180\(4),
	datad => \inst9|cuenta_180\(5),
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y17_N2
\inst8|q0_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|q0_Entrada~feeder_combout\ = \LLD~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LLD~combout\,
	combout => \inst8|q0_Entrada~feeder_combout\);

-- Location: LCFF_X49_Y17_N3
\inst8|q0_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk2~clkctrl_outclk\,
	datain => \inst8|q0_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|q0_Entrada~regout\);

-- Location: LCCOMB_X49_Y17_N24
\inst8|q1_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|q1_Entrada~feeder_combout\ = \inst8|q0_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|q0_Entrada~regout\,
	combout => \inst8|q1_Entrada~feeder_combout\);

-- Location: LCFF_X49_Y17_N25
\inst8|q1_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk2~clkctrl_outclk\,
	datain => \inst8|q1_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|q1_Entrada~regout\);

-- Location: LCFF_X49_Y17_N15
\inst8|q2_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk2~clkctrl_outclk\,
	sdata => \inst8|q1_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|q2_Entrada~regout\);

-- Location: LCFF_X49_Y17_N31
\inst8|q3_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|altpll_component|_clk2~clkctrl_outclk\,
	sdata => \inst8|q2_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|q3_Entrada~regout\);

-- Location: LCCOMB_X49_Y17_N30
\inst9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst9|EA\(0) & (!\inst9|cuenta_180\(8) & (!\inst9|LessThan0~0_combout\))) # (!\inst9|EA\(0) & (((\inst8|q3_Entrada~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cuenta_180\(8),
	datab => \inst9|LessThan0~0_combout\,
	datac => \inst8|q3_Entrada~regout\,
	datad => \inst9|EA\(0),
	combout => \inst9|Mux3~0_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NBusy_Disp~I\ : cycloneii_io
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
	padio => ww_NBusy_Disp,
	combout => \NBusy_Disp~combout\);

-- Location: LCCOMB_X49_Y17_N0
\inst9|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~1_combout\ = (\inst9|EA\(1) & (((!\inst5~0_combout\) # (!\NBusy_Disp~combout\)))) # (!\inst9|EA\(1) & (\inst9|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|EA\(1),
	datab => \inst9|Mux3~0_combout\,
	datac => \NBusy_Disp~combout\,
	datad => \inst5~0_combout\,
	combout => \inst9|Mux3~1_combout\);

-- Location: LCFF_X49_Y17_N1
\inst9|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|EA\(0));

-- Location: LCCOMB_X49_Y17_N12
\inst9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst9|EA\(1)) # (!\inst9|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|EA\(1),
	datad => \inst9|EA\(0),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCFF_X48_Y17_N15
\inst9|cuenta_180[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[1]~11_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(1));

-- Location: LCCOMB_X48_Y17_N18
\inst9|cuenta_180[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[3]~15_combout\ = (\inst9|cuenta_180\(3) & (!\inst9|cuenta_180[2]~14\)) # (!\inst9|cuenta_180\(3) & ((\inst9|cuenta_180[2]~14\) # (GND)))
-- \inst9|cuenta_180[3]~16\ = CARRY((!\inst9|cuenta_180[2]~14\) # (!\inst9|cuenta_180\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cuenta_180\(3),
	datad => VCC,
	cin => \inst9|cuenta_180[2]~14\,
	combout => \inst9|cuenta_180[3]~15_combout\,
	cout => \inst9|cuenta_180[3]~16\);

-- Location: LCFF_X48_Y17_N19
\inst9|cuenta_180[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[3]~15_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(3));

-- Location: LCCOMB_X48_Y17_N22
\inst9|cuenta_180[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[5]~19_combout\ = (\inst9|cuenta_180\(5) & (!\inst9|cuenta_180[4]~18\)) # (!\inst9|cuenta_180\(5) & ((\inst9|cuenta_180[4]~18\) # (GND)))
-- \inst9|cuenta_180[5]~20\ = CARRY((!\inst9|cuenta_180[4]~18\) # (!\inst9|cuenta_180\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cuenta_180\(5),
	datad => VCC,
	cin => \inst9|cuenta_180[4]~18\,
	combout => \inst9|cuenta_180[5]~19_combout\,
	cout => \inst9|cuenta_180[5]~20\);

-- Location: LCFF_X48_Y17_N23
\inst9|cuenta_180[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[5]~19_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(5));

-- Location: LCCOMB_X48_Y17_N26
\inst9|cuenta_180[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[7]~23_combout\ = (\inst9|cuenta_180\(7) & (!\inst9|cuenta_180[6]~22\)) # (!\inst9|cuenta_180\(7) & ((\inst9|cuenta_180[6]~22\) # (GND)))
-- \inst9|cuenta_180[7]~24\ = CARRY((!\inst9|cuenta_180[6]~22\) # (!\inst9|cuenta_180\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cuenta_180\(7),
	datad => VCC,
	cin => \inst9|cuenta_180[6]~22\,
	combout => \inst9|cuenta_180[7]~23_combout\,
	cout => \inst9|cuenta_180[7]~24\);

-- Location: LCFF_X48_Y17_N27
\inst9|cuenta_180[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[7]~23_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(7));

-- Location: LCCOMB_X48_Y17_N28
\inst9|cuenta_180[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cuenta_180[8]~25_combout\ = \inst9|cuenta_180[7]~24\ $ (!\inst9|cuenta_180\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|cuenta_180\(8),
	cin => \inst9|cuenta_180[7]~24\,
	combout => \inst9|cuenta_180[8]~25_combout\);

-- Location: LCFF_X48_Y17_N29
\inst9|cuenta_180[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|cuenta_180[8]~25_combout\,
	sclr => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cuenta_180\(8));

-- Location: LCCOMB_X49_Y17_N18
\inst9|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~1_combout\ = (\inst9|Mux2~0_combout\) # ((!\inst9|Mux1~0_combout\ & ((\inst9|cuenta_180\(8)) # (\inst9|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Mux2~0_combout\,
	datab => \inst9|cuenta_180\(8),
	datac => \inst9|LessThan0~0_combout\,
	datad => \inst9|Mux1~0_combout\,
	combout => \inst9|Mux2~1_combout\);

-- Location: LCFF_X49_Y17_N19
\inst9|EA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst9|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|EA\(1));

-- Location: LCCOMB_X49_Y17_N28
\inst9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst9|EA\(1)) # (\inst9|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|EA\(1),
	datad => \inst9|EA\(0),
	combout => \inst9|Mux0~0_combout\);

-- Location: LCFF_X33_Y12_N5
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~2_regout\);

-- Location: LCFF_X32_Y14_N23
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|ram_address_b\(12),
	ena => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0));

-- Location: LCCOMB_X32_Y14_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~4_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0) & !\inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|addr_store_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|rdcnt_addr_ena~combout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~4_combout\);

-- Location: LCFF_X32_Y14_N3
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_regout\);

-- Location: LCCOMB_X33_Y14_N0
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~3_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_regout\) # 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~1_regout\ & \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~1_regout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~2_regout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~0_regout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~3_combout\);

-- Location: LCFF_X33_Y14_N1
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ifclk~clkctrl_outclk\,
	datain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|address_reg_a[0]~3_combout\,
	ena => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0));

-- Location: LCCOMB_X34_Y10_N4
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0) = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\ & ((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12) $ 
-- (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13))))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12) $ (!\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\,
	datab => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\,
	datac => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
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

-- Location: LCCOMB_X38_Y14_N14
\inst2|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux20~0_combout\ = (\inst2|EA\(1) & (!\inst2|LessThan0~2_combout\)) # (!\inst2|EA\(1) & ((!\inst2|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~2_combout\,
	datac => \inst2|Mux15~3_combout\,
	datad => \inst2|EA\(1),
	combout => \inst2|Mux20~0_combout\);

-- Location: LCCOMB_X38_Y14_N12
\inst2|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux20~1_combout\ = (\inst2|EA\(0) & ((\inst2|process_1~0_combout\))) # (!\inst2|EA\(0) & (!\inst2|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(0),
	datac => \inst2|LessThan0~2_combout\,
	datad => \inst2|process_1~0_combout\,
	combout => \inst2|Mux20~1_combout\);

-- Location: LCCOMB_X38_Y14_N0
\inst2|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux20~2_combout\ = (\inst2|EA\(1)) # (\inst2|Mux20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(1),
	datad => \inst2|Mux20~1_combout\,
	combout => \inst2|Mux20~2_combout\);

-- Location: LCCOMB_X38_Y14_N4
\inst2|Mux20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux20~combout\ = (\inst2|EA\(2) & ((!\inst2|Mux20~2_combout\))) # (!\inst2|EA\(2) & (!\inst2|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(2),
	datac => \inst2|Mux20~0_combout\,
	datad => \inst2|Mux20~2_combout\,
	combout => \inst2|Mux20~combout\);

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wen~I\ : cycloneii_io
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
	padio => ww_wen,
	combout => \wen~combout\);

-- Location: LCCOMB_X30_Y1_N4
writeOr : cycloneii_lcell_comb
-- Equation(s):
-- \writeOr~combout\ = LCELL((\inst2|Mux20~combout\) # (\wen~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux20~combout\,
	datad => \wen~combout\,
	combout => \writeOr~combout\);

-- Location: CLKCTRL_G12
\writeOr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \writeOr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \writeOr~clkctrl_outclk\);

-- Location: M4K_X17_Y19
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y10_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1) = (\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\ & (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13) $ 
-- (((\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12)))))) # (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\ & (!\inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\ & 
-- (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13) $ (\inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~8_OTERM63\,
	datab => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(13),
	datac => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~4_OTERM65\,
	datad => \inst1|dcfifo_component|auto_generated|wrptr_gp|counter13a\(12),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1));

-- Location: M4K_X17_Y14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X33_Y14_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a15~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a31~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[15]~0_combout\);

-- Location: LCCOMB_X38_Y14_N18
\inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|EA\(0) & (\inst2|EA\(1) $ (\inst2|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|EA\(0),
	combout => \inst2|Mux0~0_combout\);

-- Location: M4K_X17_Y12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y9
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a14~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a30~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[14]~1_combout\);

-- Location: LCCOMB_X38_Y14_N28
\inst2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|EA\(1) & !\inst2|EA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(1),
	datad => \inst2|EA\(0),
	combout => \inst2|Mux1~0_combout\);

-- Location: M4K_X17_Y11
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y17
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a29~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a13~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[13]~2_combout\);

-- Location: LCCOMB_X38_Y14_N10
\inst2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (!\inst2|EA\(1) & (!\inst2|EA\(2) & \inst2|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(1),
	datac => \inst2|EA\(2),
	datad => \inst2|EA\(0),
	combout => \inst2|Mux2~0_combout\);

-- Location: M4K_X17_Y15
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y7
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N4
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a12~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a28~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[12]~3_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[11]~I\ : cycloneii_io
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
	padio => ww_data_in1(11),
	combout => \data_in1~combout\(11));

-- Location: LCCOMB_X37_Y14_N2
\inst2|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux14~0_combout\ = (!\inst2|EA\(0) & ((\inst2|EA\(1)) # (\inst2|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|EA\(1),
	datac => \inst2|EA\(0),
	datad => \inst2|EA\(2),
	combout => \inst2|Mux14~0_combout\);

-- Location: LCCOMB_X37_Y14_N0
\inst2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\data_in2~combout\(11) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(11) & \inst2|EA\(0))))) # (!\data_in2~combout\(11) & (\data_in1~combout\(11) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(11),
	datab => \data_in1~combout\(11),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: M4K_X17_Y18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y6
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a27~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a11~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[11]~4_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[10]~I\ : cycloneii_io
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
	padio => ww_data_in1(10),
	combout => \data_in1~combout\(10));

-- Location: LCCOMB_X37_Y14_N12
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\data_in2~combout\(10) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(10) & \inst2|EA\(0))))) # (!\data_in2~combout\(10) & (\data_in1~combout\(10) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(10),
	datab => \data_in1~combout\(10),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: M4K_X17_Y13
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y6
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N0
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a26~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a10~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[10]~5_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[9]~I\ : cycloneii_io
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
	padio => ww_data_in1(9),
	combout => \data_in1~combout\(9));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[9]~I\ : cycloneii_io
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
	padio => ww_data_in2(9),
	combout => \data_in2~combout\(9));

-- Location: LCCOMB_X37_Y14_N8
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst2|EA\(0) & ((\data_in1~combout\(9)) # ((\data_in2~combout\(9) & \inst2|Mux14~0_combout\)))) # (!\inst2|EA\(0) & (((\data_in2~combout\(9) & \inst2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(0),
	datab => \data_in1~combout\(9),
	datac => \data_in2~combout\(9),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: M4K_X41_Y15
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N2
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a25~portadataout\,
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a9~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[9]~6_combout\);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[8]~I\ : cycloneii_io
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
	padio => ww_data_in2(8),
	combout => \data_in2~combout\(8));

-- Location: LCCOMB_X37_Y14_N6
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\data_in1~combout\(8) & ((\inst2|EA\(0)) # ((\data_in2~combout\(8) & \inst2|Mux14~0_combout\)))) # (!\data_in1~combout\(8) & (\data_in2~combout\(8) & ((\inst2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in1~combout\(8),
	datab => \data_in2~combout\(8),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: M4K_X41_Y8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y11
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a8~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a24~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[8]~7_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[7]~I\ : cycloneii_io
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
	padio => ww_data_in1(7),
	combout => \data_in1~combout\(7));

-- Location: LCCOMB_X37_Y14_N24
\inst2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\data_in2~combout\(7) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(7) & \inst2|EA\(0))))) # (!\data_in2~combout\(7) & (\data_in1~combout\(7) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(7),
	datab => \data_in1~combout\(7),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux7~0_combout\);

-- Location: M4K_X41_Y21
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a7_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N6
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[6]~I\ : cycloneii_io
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
	padio => ww_data_in1(6),
	combout => \data_in1~combout\(6));

-- Location: LCCOMB_X37_Y14_N20
\inst2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\data_in2~combout\(6) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(6) & \inst2|EA\(0))))) # (!\data_in2~combout\(6) & (\data_in1~combout\(6) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(6),
	datab => \data_in1~combout\(6),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux8~0_combout\);

-- Location: M4K_X41_Y13
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y14
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a22~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a6~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[6]~9_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[5]~I\ : cycloneii_io
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
	padio => ww_data_in1(5),
	combout => \data_in1~combout\(5));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[5]~I\ : cycloneii_io
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
	padio => ww_data_in2(5),
	combout => \data_in2~combout\(5));

-- Location: LCCOMB_X37_Y14_N26
\inst2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux9~0_combout\ = (\inst2|EA\(0) & ((\data_in1~combout\(5)) # ((\data_in2~combout\(5) & \inst2|Mux14~0_combout\)))) # (!\inst2|EA\(0) & (((\data_in2~combout\(5) & \inst2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|EA\(0),
	datab => \data_in1~combout\(5),
	datac => \data_in2~combout\(5),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux9~0_combout\);

-- Location: M4K_X41_Y10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y19
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N26
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a5~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a21~portadataout\,
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[5]~10_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[4]~I\ : cycloneii_io
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
	padio => ww_data_in2(4),
	combout => \data_in2~combout\(4));

-- Location: LCCOMB_X37_Y14_N10
\inst2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux10~0_combout\ = (\data_in1~combout\(4) & ((\inst2|EA\(0)) # ((\data_in2~combout\(4) & \inst2|Mux14~0_combout\)))) # (!\data_in1~combout\(4) & (\data_in2~combout\(4) & ((\inst2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in1~combout\(4),
	datab => \data_in2~combout\(4),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux10~0_combout\);

-- Location: M4K_X41_Y12
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N28
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a20~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a4~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[4]~11_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[3]~I\ : cycloneii_io
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
	padio => ww_data_in1(3),
	combout => \data_in1~combout\(3));

-- Location: LCCOMB_X37_Y14_N28
\inst2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux11~0_combout\ = (\data_in2~combout\(3) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(3) & \inst2|EA\(0))))) # (!\data_in2~combout\(3) & (\data_in1~combout\(3) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(3),
	datab => \data_in1~combout\(3),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux11~0_combout\);

-- Location: M4K_X17_Y8
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y20
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N22
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\)) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a19~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a3~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[3]~12_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in2[2]~I\ : cycloneii_io
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
	padio => ww_data_in2(2),
	combout => \data_in2~combout\(2));

-- Location: LCCOMB_X37_Y14_N4
\inst2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux12~0_combout\ = (\data_in1~combout\(2) & ((\inst2|EA\(0)) # ((\data_in2~combout\(2) & \inst2|Mux14~0_combout\)))) # (!\data_in1~combout\(2) & (\data_in2~combout\(2) & ((\inst2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in1~combout\(2),
	datab => \data_in2~combout\(2),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux12~0_combout\);

-- Location: M4K_X17_Y10
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N24
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a2~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a18~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[2]~13_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[1]~I\ : cycloneii_io
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
	padio => ww_data_in1(1),
	combout => \data_in1~combout\(1));

-- Location: LCCOMB_X37_Y14_N18
\inst2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux13~0_combout\ = (\data_in2~combout\(1) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(1) & \inst2|EA\(0))))) # (!\data_in2~combout\(1) & (\data_in1~combout\(1) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(1),
	datab => \data_in1~combout\(1),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux13~0_combout\);

-- Location: M4K_X17_Y9
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y7
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y8_N18
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\ = (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- ((\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\))) # (!\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0) & 
-- (\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a1~portadataout\,
	datac => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a17~portadataout\,
	datad => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|out_address_reg_a\(0),
	combout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|mux18|result_node[1]~14_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in1[0]~I\ : cycloneii_io
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
	padio => ww_data_in1(0),
	combout => \data_in1~combout\(0));

-- Location: LCCOMB_X37_Y14_N22
\inst2|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux14~1_combout\ = (\data_in2~combout\(0) & ((\inst2|Mux14~0_combout\) # ((\data_in1~combout\(0) & \inst2|EA\(0))))) # (!\data_in2~combout\(0) & (\data_in1~combout\(0) & (\inst2|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in2~combout\(0),
	datab => \data_in1~combout\(0),
	datac => \inst2|EA\(0),
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux14~1_combout\);

-- Location: M4K_X41_Y16
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(0),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y17
\inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo0:inst1|dcfifo:dcfifo_component|dcfifo_fnj1:auto_generated|altsyncram_1qu:fifo_ram|altsyncram_cec1:altsyncram14|ALTSYNCRAM",
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
	clk1 => \writeOr~clkctrl_outclk\,
	ena0 => \inst1|dcfifo_component|auto_generated|valid_rdreq~combout\,
	ena1 => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|decode_b|eq_node\(1),
	portadatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAIN_bus\,
	portbdatain => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBDATAIN_bus\,
	portaaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTAADDR_bus\,
	portbaddr => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dcfifo_component|auto_generated|fifo_ram|altsyncram14|ram_block15a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y9_N16
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
	datain => \inst1|dcfifo_component|auto_generated|wrfull_eq_comp|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IO_G16);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NconvStart~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_EA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NconvStart);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NGate~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NGate);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NRead1~I\ : cycloneii_io
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
	datain => \inst2|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NRead1);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NRead2~I\ : cycloneii_io
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
	datain => \inst2|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NRead2);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NRead3~I\ : cycloneii_io
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
	datain => \inst2|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NRead3);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NGate_Disp~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NGate_Disp);

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


