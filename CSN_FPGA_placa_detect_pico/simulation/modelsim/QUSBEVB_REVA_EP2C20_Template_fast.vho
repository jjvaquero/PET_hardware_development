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

-- DATE "06/04/2012 13:20:23"

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
	pb1 : OUT std_logic;
	pb0 : OUT std_logic;
	IO_E3 : IN std_logic;
	ifclk : IN std_logic;
	IO_E1 : IN std_logic
	);
END Template;

-- Design Ports Information
-- IO_D2	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IO_C1	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pa4	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pb1	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pb0	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IO_E3	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ifclk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb0 : std_logic;
SIGNAL ww_IO_E3 : std_logic;
SIGNAL ww_ifclk : std_logic;
SIGNAL ww_IO_E1 : std_logic;
SIGNAL \inst1|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|_clk1\ : std_logic;
SIGNAL \inst1|altpll_component|_clk2\ : std_logic;
SIGNAL \inst|cuenta_180[4]~17_combout\ : std_logic;
SIGNAL \inst|cuenta_180[7]~24\ : std_logic;
SIGNAL \inst|cuenta_180[8]~25_combout\ : std_logic;
SIGNAL \inst2|q5_Entrada~regout\ : std_logic;
SIGNAL \inst2|q4_Entrada~regout\ : std_logic;
SIGNAL \inst2|q3_Entrada~regout\ : std_logic;
SIGNAL \inst2|q2_Entrada~regout\ : std_logic;
SIGNAL \inst2|q1_Entrada~regout\ : std_logic;
SIGNAL \inst2|q0_Entrada~regout\ : std_logic;
SIGNAL \IO_E1~combout\ : std_logic;
SIGNAL \inst1|altpll_component|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux8~3_RESYN2_BDD3\ : std_logic;
SIGNAL \inst|Mux8~3_RESYN6_BDD7\ : std_logic;
SIGNAL \inst2|q5_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q4_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q2_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst2|q1_Entrada~feeder_combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~10\ : std_logic;
SIGNAL \inst|cuenta_180[1]~12\ : std_logic;
SIGNAL \inst|cuenta_180[2]~13_combout\ : std_logic;
SIGNAL \IO_E3~combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|cuenta_180[3]~15_combout\ : std_logic;
SIGNAL \inst|Mux3~1_RESYN0_BDD1\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|cuenta_180[0]~9_combout\ : std_logic;
SIGNAL \inst|cuenta_180[1]~11_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux8~3_RESYN4_BDD5\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|reset~combout\ : std_logic;
SIGNAL \inst|cuenta_180[2]~14\ : std_logic;
SIGNAL \inst|cuenta_180[3]~16\ : std_logic;
SIGNAL \inst|cuenta_180[4]~18\ : std_logic;
SIGNAL \inst|cuenta_180[5]~19_combout\ : std_logic;
SIGNAL \inst|cuenta_180[5]~20\ : std_logic;
SIGNAL \inst|cuenta_180[6]~21_combout\ : std_logic;
SIGNAL \inst|cuenta_180[6]~22\ : std_logic;
SIGNAL \inst|cuenta_180[7]~23_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \ifclk~combout\ : std_logic;
SIGNAL \inst1|altpll_component|_clk0\ : std_logic;
SIGNAL \inst1|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|EA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cuenta_180\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_reset~combout\ : std_logic;

BEGIN

IO_D2 <= ww_IO_D2;
IO_C1 <= ww_IO_C1;
pa4 <= ww_pa4;
pb1 <= ww_pb1;
pb0 <= ww_pb0;
ww_IO_E3 <= IO_E3;
ww_ifclk <= ifclk;
ww_IO_E1 <= IO_E1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|pll_INCLK_bus\ <= (gnd & \ifclk~combout\);

\inst1|altpll_component|_clk0\ <= \inst1|altpll_component|pll_CLK_bus\(0);
\inst1|altpll_component|_clk1\ <= \inst1|altpll_component|pll_CLK_bus\(1);
\inst1|altpll_component|_clk2\ <= \inst1|altpll_component|pll_CLK_bus\(2);

\inst1|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|altpll_component|_clk0\);

\inst1|altpll_component|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|altpll_component|_clk1\);
\inst|ALT_INV_reset~combout\ <= NOT \inst|reset~combout\;

-- Location: LCFF_X1_Y22_N15
\inst|cuenta_180[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[4]~17_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(4));

-- Location: LCFF_X1_Y22_N23
\inst|cuenta_180[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[8]~25_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(8));

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

-- Location: LCCOMB_X1_Y22_N14
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

-- Location: LCCOMB_X1_Y22_N20
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

-- Location: LCCOMB_X1_Y22_N22
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

-- Location: LCFF_X2_Y22_N21
\inst2|q5_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q5_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q5_Entrada~regout\);

-- Location: LCFF_X2_Y22_N3
\inst2|q4_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q4_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q4_Entrada~regout\);

-- Location: LCFF_X2_Y22_N11
\inst2|q3_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \inst2|q2_Entrada~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q3_Entrada~regout\);

-- Location: LCFF_X2_Y22_N25
\inst2|q2_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q2_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q2_Entrada~regout\);

-- Location: LCFF_X2_Y22_N1
\inst2|q1_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	datain => \inst2|q1_Entrada~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q1_Entrada~regout\);

-- Location: LCFF_X2_Y22_N27
\inst2|q0_Entrada\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk1~clkctrl_outclk\,
	sdata => \IO_E1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|q0_Entrada~regout\);

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

-- Location: LCCOMB_X1_Y21_N2
\inst|Mux8~3_RESYN2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_RESYN2_BDD3\ = (((\inst|cuenta_180\(4) & !\inst|LessThan1~0_combout\)) # (!\inst|LessThan1~1_combout\)) # (!\IO_E3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_E3~combout\,
	datab => \inst|cuenta_180\(4),
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|Mux8~3_RESYN2_BDD3\);

-- Location: LCCOMB_X1_Y21_N4
\inst|Mux8~3_RESYN6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_RESYN6_BDD7\ = (\inst|EA\(1) & (\inst|Mux8~3_RESYN2_BDD3\)) # (!\inst|EA\(1) & ((\inst2|q5_Entrada~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux8~3_RESYN2_BDD3\,
	datac => \inst|EA\(1),
	datad => \inst2|q5_Entrada~regout\,
	combout => \inst|Mux8~3_RESYN6_BDD7\);

-- Location: LCCOMB_X2_Y22_N20
\inst2|q5_Entrada~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|q5_Entrada~feeder_combout\ = \inst2|q4_Entrada~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|q4_Entrada~regout\,
	combout => \inst2|q5_Entrada~feeder_combout\);

-- Location: LCCOMB_X2_Y22_N2
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

-- Location: LCCOMB_X2_Y22_N24
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

-- Location: LCCOMB_X2_Y22_N0
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

-- Location: LCCOMB_X1_Y22_N6
\inst|cuenta_180[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[0]~9_combout\ = \inst|cuenta_180\(0) $ (VCC)
-- \inst|cuenta_180[0]~10\ = CARRY(\inst|cuenta_180\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(0),
	datad => VCC,
	combout => \inst|cuenta_180[0]~9_combout\,
	cout => \inst|cuenta_180[0]~10\);

-- Location: LCCOMB_X1_Y22_N8
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

-- Location: LCCOMB_X1_Y22_N10
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

-- Location: LCCOMB_X1_Y22_N24
\inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|EA\(0) & ((\inst|EA\(1) & (!\IO_E3~combout\)) # (!\inst|EA\(1) & ((\inst|LessThan1~2_combout\))))) # (!\inst|EA\(0) & (((\inst|EA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(0),
	datab => \IO_E3~combout\,
	datac => \inst|EA\(1),
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCFF_X1_Y22_N25
\inst|EA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux7~0_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(1));

-- Location: LCCOMB_X1_Y22_N28
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|EA\(1) & (\IO_E3~combout\ & (\inst|EA\(0) & !\inst|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(1),
	datab => \IO_E3~combout\,
	datac => \inst|EA\(0),
	datad => \inst|EA\(2),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N30
\inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux1~0_combout\) # ((!\inst|LessThan1~2_combout\ & (!\inst|EA\(0) & \inst|EA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \inst|EA\(0),
	datac => \inst|EA\(2),
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCFF_X1_Y22_N31
\inst|EA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux1~1_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(2));

-- Location: LCCOMB_X1_Y22_N12
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

-- Location: LCCOMB_X1_Y21_N0
\inst|Mux3~1_RESYN0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_RESYN0_BDD1\ = (\inst|EA\(2) & ((\inst|LessThan1~2_combout\) # (\inst|EA\(1)))) # (!\inst|EA\(2) & ((!\inst|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datac => \inst|EA\(2),
	datad => \inst|EA\(1),
	combout => \inst|Mux3~1_RESYN0_BDD1\);

-- Location: LCCOMB_X1_Y22_N2
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|EA\(0) & ((\inst|EA\(2)) # ((!\inst|Mux3~1_RESYN0_BDD1\ & !\IO_E3~combout\)))) # (!\inst|EA\(0) & (((\inst|Mux3~1_RESYN0_BDD1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(2),
	datab => \inst|Mux3~1_RESYN0_BDD1\,
	datac => \IO_E3~combout\,
	datad => \inst|EA\(0),
	combout => \inst|Mux3~1_combout\);

-- Location: LCFF_X1_Y22_N13
\inst|cuenta_180[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[3]~15_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(3));

-- Location: LCFF_X1_Y22_N7
\inst|cuenta_180[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[0]~9_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(0));

-- Location: LCFF_X1_Y22_N9
\inst|cuenta_180[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[1]~11_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(1));

-- Location: LCCOMB_X2_Y22_N6
\inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|cuenta_180\(3) & (((!\inst|cuenta_180\(0) & !\inst|cuenta_180\(1))) # (!\inst|cuenta_180\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(2),
	datab => \inst|cuenta_180\(3),
	datac => \inst|cuenta_180\(0),
	datad => \inst|cuenta_180\(1),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y22_N30
\inst|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (!\inst|cuenta_180\(4) & (!\inst|EA\(2) & (\inst|LessThan1~1_combout\ & \inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(4),
	datab => \inst|EA\(2),
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y22_N0
\inst|Mux8~3_RESYN4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_RESYN4_BDD5\ = (\inst|EA\(1) & (!\inst|EA\(2) & (!\IO_E3~combout\))) # (!\inst|EA\(1) & (((\inst|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(2),
	datab => \inst|EA\(1),
	datac => \IO_E3~combout\,
	datad => \inst|Mux2~2_combout\,
	combout => \inst|Mux8~3_RESYN4_BDD5\);

-- Location: LCCOMB_X1_Y22_N26
\inst|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = (\inst|EA\(0) & (((\inst|Mux8~3_RESYN4_BDD5\)))) # (!\inst|EA\(0) & (\inst|Mux8~3_RESYN6_BDD7\ & ((!\inst|EA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~3_RESYN6_BDD7\,
	datab => \inst|Mux8~3_RESYN4_BDD5\,
	datac => \inst|EA\(0),
	datad => \inst|EA\(2),
	combout => \inst|Mux8~3_combout\);

-- Location: LCFF_X1_Y22_N27
\inst|EA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux8~3_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|EA\(0));

-- Location: LCCOMB_X2_Y22_N14
\inst|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = \inst|EA\(2) $ (((\inst|EA\(0)) # (\inst|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EA\(0),
	datac => \inst|EA\(2),
	datad => \inst|EA\(1),
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X1_Y22_N4
\inst|reset\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|reset~combout\ = (\inst|Mux9~0_combout\ & (\inst|reset~combout\)) # (!\inst|Mux9~0_combout\ & ((!\inst|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reset~combout\,
	datac => \inst|Mux9~0_combout\,
	datad => \inst|EA\(0),
	combout => \inst|reset~combout\);

-- Location: LCFF_X1_Y22_N11
\inst|cuenta_180[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[2]~13_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(2));

-- Location: LCCOMB_X1_Y22_N16
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

-- Location: LCFF_X1_Y22_N17
\inst|cuenta_180[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[5]~19_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(5));

-- Location: LCCOMB_X1_Y22_N18
\inst|cuenta_180[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cuenta_180[6]~21_combout\ = (\inst|cuenta_180\(6) & (\inst|cuenta_180[5]~20\ $ (GND))) # (!\inst|cuenta_180\(6) & (!\inst|cuenta_180[5]~20\ & VCC))
-- \inst|cuenta_180[6]~22\ = CARRY((\inst|cuenta_180\(6) & !\inst|cuenta_180[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta_180\(6),
	datad => VCC,
	cin => \inst|cuenta_180[5]~20\,
	combout => \inst|cuenta_180[6]~21_combout\,
	cout => \inst|cuenta_180[6]~22\);

-- Location: LCFF_X1_Y22_N19
\inst|cuenta_180[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[6]~21_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(6));

-- Location: LCFF_X1_Y22_N21
\inst|cuenta_180[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|cuenta_180[7]~23_combout\,
	aclr => \inst|ALT_INV_reset~combout\,
	sclr => \inst|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cuenta_180\(7));

-- Location: LCCOMB_X2_Y22_N22
\inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|cuenta_180\(8) & (!\inst|cuenta_180\(6) & (!\inst|cuenta_180\(7) & !\inst|cuenta_180\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(8),
	datab => \inst|cuenta_180\(6),
	datac => \inst|cuenta_180\(7),
	datad => \inst|cuenta_180\(5),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X2_Y22_N12
\inst|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|cuenta_180\(4)) # ((!\inst|LessThan1~0_combout\) # (!\inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta_180\(4),
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X2_Y22_N16
\inst|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (!\inst|EA\(1) & ((\inst|Mux2~2_combout\) # ((\inst|LessThan1~2_combout\ & !\inst|EA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \inst|EA\(1),
	datac => \inst|EA\(0),
	datad => \inst|Mux2~2_combout\,
	combout => \inst|Mux2~3_combout\);

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

-- Location: LCCOMB_X2_Y22_N28
\inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|EA\(2)) # ((\inst|EA\(1) & ((\inst|EA\(0)) # (GLOBAL(\inst1|altpll_component|_clk0~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EA\(2),
	datab => \inst|EA\(0),
	datac => \inst1|altpll_component|_clk0~clkctrl_outclk\,
	datad => \inst|EA\(1),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y22_N18
\inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|EA\(0)) # (\inst|EA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EA\(0),
	datac => \inst|EA\(2),
	combout => \inst|Mux5~0_combout\);

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
	datain => \inst|Mux2~3_combout\,
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
	datain => \inst|Mux1~1_combout\,
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

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pb1~I\ : cycloneii_io
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
	datain => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pb1);

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pb0~I\ : cycloneii_io
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
	datain => \inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pb0);
END structure;


