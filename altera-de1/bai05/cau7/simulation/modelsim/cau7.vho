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

-- DATE "10/25/2018 15:03:07"

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

ENTITY 	cau7 IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cau7;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_3|bcd[0]~3_combout\ : std_logic;
SIGNAL \comb_3|bcd[1]~5_cout\ : std_logic;
SIGNAL \comb_3|bcd[1]~6_combout\ : std_logic;
SIGNAL \comb_3|bcd[1]~7\ : std_logic;
SIGNAL \comb_3|bcd[2]~8_combout\ : std_logic;
SIGNAL \comb_3|bcd[2]~9\ : std_logic;
SIGNAL \comb_3|bcd[3]~10_combout\ : std_logic;
SIGNAL \comb_4|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_3|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \comb_4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY~combout\(1) <= NOT \KEY~combout\(1);
\comb_4|ALT_INV_WideOr0~0_combout\ <= NOT \comb_4|WideOr0~0_combout\;

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

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

-- Location: LCCOMB_X8_Y14_N28
\comb_3|bcd[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[0]~3_combout\ = \comb_3|bcd\(0) $ (\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|bcd\(0),
	datad => \SW~combout\(0),
	combout => \comb_3|bcd[0]~3_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCFF_X8_Y14_N29
\comb_3|bcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[0]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(0));

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

-- Location: LCCOMB_X8_Y14_N2
\comb_3|bcd[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[1]~5_cout\ = CARRY(\comb_3|bcd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|bcd\(0),
	datad => VCC,
	cout => \comb_3|bcd[1]~5_cout\);

-- Location: LCCOMB_X8_Y14_N4
\comb_3|bcd[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[1]~6_combout\ = (\SW~combout\(1) & ((\comb_3|bcd\(1) & (!\comb_3|bcd[1]~5_cout\)) # (!\comb_3|bcd\(1) & ((\comb_3|bcd[1]~5_cout\) # (GND))))) # (!\SW~combout\(1) & ((\comb_3|bcd\(1) & (\comb_3|bcd[1]~5_cout\ & VCC)) # (!\comb_3|bcd\(1) & 
-- (!\comb_3|bcd[1]~5_cout\))))
-- \comb_3|bcd[1]~7\ = CARRY((\SW~combout\(1) & ((!\comb_3|bcd[1]~5_cout\) # (!\comb_3|bcd\(1)))) # (!\SW~combout\(1) & (!\comb_3|bcd\(1) & !\comb_3|bcd[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \comb_3|bcd\(1),
	datad => VCC,
	cin => \comb_3|bcd[1]~5_cout\,
	combout => \comb_3|bcd[1]~6_combout\,
	cout => \comb_3|bcd[1]~7\);

-- Location: LCFF_X8_Y14_N5
\comb_3|bcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[1]~6_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(1));

-- Location: LCCOMB_X8_Y14_N6
\comb_3|bcd[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[2]~8_combout\ = ((\comb_3|bcd\(2) $ (\SW~combout\(1) $ (\comb_3|bcd[1]~7\)))) # (GND)
-- \comb_3|bcd[2]~9\ = CARRY((\comb_3|bcd\(2) & ((!\comb_3|bcd[1]~7\) # (!\SW~combout\(1)))) # (!\comb_3|bcd\(2) & (!\SW~combout\(1) & !\comb_3|bcd[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \SW~combout\(1),
	datad => VCC,
	cin => \comb_3|bcd[1]~7\,
	combout => \comb_3|bcd[2]~8_combout\,
	cout => \comb_3|bcd[2]~9\);

-- Location: LCFF_X8_Y14_N7
\comb_3|bcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[2]~8_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(2));

-- Location: LCCOMB_X8_Y14_N8
\comb_3|bcd[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[3]~10_combout\ = \SW~combout\(1) $ (\comb_3|bcd[2]~9\ $ (!\comb_3|bcd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datad => \comb_3|bcd\(3),
	cin => \comb_3|bcd[2]~9\,
	combout => \comb_3|bcd[3]~10_combout\);

-- Location: LCFF_X8_Y14_N9
\comb_3|bcd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[3]~10_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(3));

-- Location: LCCOMB_X8_Y14_N26
\comb_4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr6~0_combout\ = (\comb_3|bcd\(2) & (!\comb_3|bcd\(1) & (\comb_3|bcd\(0) $ (!\comb_3|bcd\(3))))) # (!\comb_3|bcd\(2) & (\comb_3|bcd\(0) & (\comb_3|bcd\(1) $ (!\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr6~0_combout\);

-- Location: LCCOMB_X8_Y14_N12
\comb_4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr5~0_combout\ = (\comb_3|bcd\(1) & ((\comb_3|bcd\(0) & ((\comb_3|bcd\(3)))) # (!\comb_3|bcd\(0) & (\comb_3|bcd\(2))))) # (!\comb_3|bcd\(1) & (\comb_3|bcd\(2) & (\comb_3|bcd\(0) $ (\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr5~0_combout\);

-- Location: LCCOMB_X8_Y14_N18
\comb_4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr4~0_combout\ = (\comb_3|bcd\(2) & (\comb_3|bcd\(3) & ((\comb_3|bcd\(1)) # (!\comb_3|bcd\(0))))) # (!\comb_3|bcd\(2) & (!\comb_3|bcd\(0) & (\comb_3|bcd\(1) & !\comb_3|bcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr4~0_combout\);

-- Location: LCCOMB_X8_Y14_N0
\comb_4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr3~0_combout\ = (\comb_3|bcd\(1) & ((\comb_3|bcd\(0) & (\comb_3|bcd\(2))) # (!\comb_3|bcd\(0) & (!\comb_3|bcd\(2) & \comb_3|bcd\(3))))) # (!\comb_3|bcd\(1) & (!\comb_3|bcd\(3) & (\comb_3|bcd\(0) $ (\comb_3|bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr3~0_combout\);

-- Location: LCCOMB_X8_Y14_N22
\comb_4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr2~0_combout\ = (\comb_3|bcd\(1) & (\comb_3|bcd\(0) & ((!\comb_3|bcd\(3))))) # (!\comb_3|bcd\(1) & ((\comb_3|bcd\(2) & ((!\comb_3|bcd\(3)))) # (!\comb_3|bcd\(2) & (\comb_3|bcd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr2~0_combout\);

-- Location: LCCOMB_X8_Y14_N24
\comb_4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr1~0_combout\ = (\comb_3|bcd\(0) & (\comb_3|bcd\(3) $ (((\comb_3|bcd\(1)) # (!\comb_3|bcd\(2)))))) # (!\comb_3|bcd\(0) & (!\comb_3|bcd\(2) & (\comb_3|bcd\(1) & !\comb_3|bcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X8_Y14_N10
\comb_4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr0~0_combout\ = (\comb_3|bcd\(0) & ((\comb_3|bcd\(3)) # (\comb_3|bcd\(2) $ (\comb_3|bcd\(1))))) # (!\comb_3|bcd\(0) & ((\comb_3|bcd\(1)) # (\comb_3|bcd\(2) $ (\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(0),
	datab => \comb_3|bcd\(2),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr0~0_combout\);

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


