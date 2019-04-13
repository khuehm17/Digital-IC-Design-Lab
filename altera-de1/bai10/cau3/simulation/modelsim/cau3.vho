-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/05/2018 09:54:52"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cau3 IS
    PORT (
	SW : IN std_logic_vector(0 TO 9);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cau3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 TO 9);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_3|WideNor0~32clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|Equal7~2_combout\ : std_logic;
SIGNAL \comb_3|WideOr2~7_combout\ : std_logic;
SIGNAL \comb_3|WideOr2~3_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~8_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~7_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~6_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~3_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~30_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~23_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~22_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~21_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~31_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~32_combout\ : std_logic;
SIGNAL \comb_3|WideNor0~32clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|WideOr4~7_combout\ : std_logic;
SIGNAL \comb_3|WideOr4~3_combout\ : std_logic;
SIGNAL \comb_3|WideOr4~16_combout\ : std_logic;
SIGNAL \comb_3|WideOr2~combout\ : std_logic;
SIGNAL \comb_3|f~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(0 TO 9);
SIGNAL \comb_3|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_3|WideNor0~32clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb_3|WideNor0~32_combout\);
\comb_4|ALT_INV_WideOr0~0_combout\ <= NOT \comb_4|WideOr0~0_combout\;

-- Location: LCCOMB_X47_Y14_N20
\comb_3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~0_combout\ = (!\SW~combout\(3) & (!\SW~combout\(1) & (!\SW~combout\(4) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(4),
	datad => \SW~combout\(2),
	combout => \comb_3|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y14_N16
\comb_3|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal7~2_combout\ = (\comb_3|Equal0~0_combout\ & (!\SW~combout\(0) & (!\SW~combout\(5) & !\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~0_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \comb_3|Equal7~2_combout\);

-- Location: LCCOMB_X47_Y14_N18
\comb_3|WideOr2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr2~7_combout\ = (\SW~combout\(7) & (!\SW~combout\(5) & (!\SW~combout\(4) & !\SW~combout\(6)))) # (!\SW~combout\(7) & ((\SW~combout\(5) & (!\SW~combout\(4) & !\SW~combout\(6))) # (!\SW~combout\(5) & (\SW~combout\(4) $ (\SW~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(5),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \comb_3|WideOr2~7_combout\);

-- Location: LCCOMB_X49_Y14_N20
\comb_3|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr2~3_combout\ = (!\SW~combout\(9) & (!\SW~combout\(0) & (\comb_3|WideOr2~7_combout\ & !\SW~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(0),
	datac => \comb_3|WideOr2~7_combout\,
	datad => \SW~combout\(8),
	combout => \comb_3|WideOr2~3_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X32_Y14_N2
\comb_3|WideNor0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~8_combout\ = (\SW~combout\(7)) # ((\SW~combout\(5)) # ((\SW~combout\(9)) # (\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(5),
	datac => \SW~combout\(9),
	datad => \SW~combout\(1),
	combout => \comb_3|WideNor0~8_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X32_Y14_N0
\comb_3|WideNor0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~7_combout\ = (\SW~combout\(7) & ((\SW~combout\(5)) # ((\SW~combout\(9)) # (\SW~combout\(1))))) # (!\SW~combout\(7) & ((\SW~combout\(5) & ((\SW~combout\(9)) # (\SW~combout\(1)))) # (!\SW~combout\(5) & (\SW~combout\(9) $ 
-- (!\SW~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(5),
	datac => \SW~combout\(9),
	datad => \SW~combout\(1),
	combout => \comb_3|WideNor0~7_combout\);

-- Location: LCCOMB_X32_Y14_N4
\comb_3|WideNor0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~6_combout\ = (\SW~combout\(3) & (\comb_3|WideNor0~8_combout\)) # (!\SW~combout\(3) & ((\comb_3|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|WideNor0~8_combout\,
	datac => \SW~combout\(3),
	datad => \comb_3|WideNor0~7_combout\,
	combout => \comb_3|WideNor0~6_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X49_Y14_N30
\comb_3|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~3_combout\ = (\SW~combout\(4)) # ((\comb_3|WideNor0~6_combout\) # (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \comb_3|WideNor0~6_combout\,
	datad => \SW~combout\(0),
	combout => \comb_3|WideNor0~3_combout\);

-- Location: LCCOMB_X49_Y14_N0
\comb_3|WideNor0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~30_combout\ = (\SW~combout\(2)) # ((\SW~combout\(6)) # ((\SW~combout\(8)) # (\comb_3|WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(6),
	datac => \SW~combout\(8),
	datad => \comb_3|WideNor0~3_combout\,
	combout => \comb_3|WideNor0~30_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X49_Y14_N14
\comb_3|WideNor0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~23_combout\ = (!\SW~combout\(2) & (!\SW~combout\(4) & (!\SW~combout\(8) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(4),
	datac => \SW~combout\(8),
	datad => \SW~combout\(0),
	combout => \comb_3|WideNor0~23_combout\);

-- Location: LCCOMB_X49_Y14_N26
\comb_3|WideNor0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~22_combout\ = (\SW~combout\(2) & (!\SW~combout\(4) & (!\SW~combout\(8) & !\SW~combout\(0)))) # (!\SW~combout\(2) & ((\SW~combout\(4) & (!\SW~combout\(8) & !\SW~combout\(0))) # (!\SW~combout\(4) & (\SW~combout\(8) $ (\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(4),
	datac => \SW~combout\(8),
	datad => \SW~combout\(0),
	combout => \comb_3|WideNor0~22_combout\);

-- Location: LCCOMB_X49_Y14_N12
\comb_3|WideNor0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~21_combout\ = (\SW~combout\(6) & (\comb_3|WideNor0~23_combout\)) # (!\SW~combout\(6) & ((\comb_3|WideNor0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(6),
	datac => \comb_3|WideNor0~23_combout\,
	datad => \comb_3|WideNor0~22_combout\,
	combout => \comb_3|WideNor0~21_combout\);

-- Location: LCCOMB_X49_Y14_N8
\comb_3|WideNor0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~31_combout\ = (!\SW~combout\(9) & (!\SW~combout\(3) & (!\SW~combout\(1) & \comb_3|WideNor0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \comb_3|WideNor0~21_combout\,
	combout => \comb_3|WideNor0~31_combout\);

-- Location: LCCOMB_X49_Y14_N18
\comb_3|WideNor0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideNor0~32_combout\ = ((!\SW~combout\(5) & (!\SW~combout\(7) & \comb_3|WideNor0~31_combout\))) # (!\comb_3|WideNor0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \comb_3|WideNor0~31_combout\,
	datad => \comb_3|WideNor0~30_combout\,
	combout => \comb_3|WideNor0~32_combout\);

-- Location: CLKCTRL_G5
\comb_3|WideNor0~32clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|WideNor0~32clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|WideNor0~32clkctrl_outclk\);

-- Location: LCCOMB_X49_Y14_N24
\comb_3|f[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|f\(0) = (GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & ((!\comb_3|WideNor0~30_combout\))) # (!GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & (\comb_3|f\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(0),
	datac => \comb_3|WideNor0~30_combout\,
	datad => \comb_3|WideNor0~32clkctrl_outclk\,
	combout => \comb_3|f\(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X47_Y14_N4
\comb_3|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr4~7_combout\ = (\SW~combout\(3) & ((\SW~combout\(2)) # ((\SW~combout\(7)) # (\SW~combout\(6))))) # (!\SW~combout\(3) & ((\SW~combout\(2) & ((\SW~combout\(7)) # (\SW~combout\(6)))) # (!\SW~combout\(2) & (\SW~combout\(7) $ 
-- (!\SW~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(2),
	datac => \SW~combout\(7),
	datad => \SW~combout\(6),
	combout => \comb_3|WideOr4~7_combout\);

-- Location: LCCOMB_X49_Y14_N4
\comb_3|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr4~3_combout\ = (\SW~combout\(5)) # ((\SW~combout\(0)) # ((\SW~combout\(9)) # (\comb_3|WideOr4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(0),
	datac => \SW~combout\(9),
	datad => \comb_3|WideOr4~7_combout\,
	combout => \comb_3|WideOr4~3_combout\);

-- Location: LCCOMB_X49_Y14_N28
\comb_3|WideOr4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr4~16_combout\ = (\SW~combout\(4)) # ((\SW~combout\(8)) # ((\SW~combout\(1)) # (\comb_3|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(8),
	datac => \SW~combout\(1),
	datad => \comb_3|WideOr4~3_combout\,
	combout => \comb_3|WideOr4~16_combout\);

-- Location: LCCOMB_X49_Y14_N6
\comb_3|f[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|f\(1) = (GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & ((!\comb_3|WideOr4~16_combout\))) # (!GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & (\comb_3|f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datac => \comb_3|WideNor0~32clkctrl_outclk\,
	datad => \comb_3|WideOr4~16_combout\,
	combout => \comb_3|f\(1));

-- Location: LCCOMB_X49_Y14_N22
\comb_3|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|WideOr2~combout\ = (\comb_3|WideOr2~3_combout\ & (!\SW~combout\(1) & (!\SW~combout\(3) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|WideOr2~3_combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \comb_3|WideOr2~combout\);

-- Location: LCCOMB_X48_Y14_N20
\comb_3|f[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|f\(2) = (GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & (\comb_3|WideOr2~combout\)) # (!GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & ((\comb_3|f\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|WideOr2~combout\,
	datac => \comb_3|f\(2),
	datad => \comb_3|WideNor0~32clkctrl_outclk\,
	combout => \comb_3|f\(2));

-- Location: LCCOMB_X49_Y14_N2
\comb_3|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|f~0_combout\ = (\comb_3|Equal7~2_combout\ & (!\SW~combout\(7) & (\SW~combout\(9) $ (\SW~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal7~2_combout\,
	datab => \SW~combout\(7),
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \comb_3|f~0_combout\);

-- Location: LCCOMB_X49_Y14_N10
\comb_3|f[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|f\(3) = (GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & ((\comb_3|f~0_combout\))) # (!GLOBAL(\comb_3|WideNor0~32clkctrl_outclk\) & (\comb_3|f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(3),
	datac => \comb_3|f~0_combout\,
	datad => \comb_3|WideNor0~32clkctrl_outclk\,
	combout => \comb_3|f\(3));

-- Location: LCCOMB_X1_Y18_N28
\comb_4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr6~0_combout\ = (\comb_3|f\(1) & (((\comb_3|f\(3))))) # (!\comb_3|f\(1) & (\comb_3|f\(2) $ (((!\comb_3|f\(3) & \comb_3|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\comb_4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr5~0_combout\ = (\comb_3|f\(2) & ((\comb_3|f\(3)) # (\comb_3|f\(1) $ (\comb_3|f\(0))))) # (!\comb_3|f\(2) & (\comb_3|f\(1) & (\comb_3|f\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\comb_4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr4~0_combout\ = (\comb_3|f\(2) & (((\comb_3|f\(3))))) # (!\comb_3|f\(2) & (\comb_3|f\(1) & ((\comb_3|f\(3)) # (!\comb_3|f\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y18_N2
\comb_4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr3~0_combout\ = (\comb_3|f\(1) & ((\comb_3|f\(3)) # ((\comb_3|f\(2) & \comb_3|f\(0))))) # (!\comb_3|f\(1) & (\comb_3|f\(2) $ (((!\comb_3|f\(3) & \comb_3|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\comb_4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr2~0_combout\ = (\comb_3|f\(0)) # ((\comb_3|f\(1) & ((\comb_3|f\(3)))) # (!\comb_3|f\(1) & (\comb_3|f\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\comb_4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr1~0_combout\ = (\comb_3|f\(2) & ((\comb_3|f\(3)) # ((\comb_3|f\(1) & \comb_3|f\(0))))) # (!\comb_3|f\(2) & ((\comb_3|f\(1)) # ((!\comb_3|f\(3) & \comb_3|f\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\comb_4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr0~0_combout\ = (\comb_3|f\(1) & (!\comb_3|f\(3) & ((!\comb_3|f\(0)) # (!\comb_3|f\(2))))) # (!\comb_3|f\(1) & (\comb_3|f\(2) $ ((\comb_3|f\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|f\(1),
	datab => \comb_3|f\(2),
	datac => \comb_3|f\(3),
	datad => \comb_3|f\(0),
	combout => \comb_4|WideOr0~0_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \comb_3|f\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \comb_3|f\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \comb_3|f\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \comb_3|f\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \comb_4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \comb_4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


