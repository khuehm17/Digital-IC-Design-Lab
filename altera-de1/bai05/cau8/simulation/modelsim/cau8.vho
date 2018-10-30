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

-- DATE "10/25/2018 15:07:36"

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

ENTITY 	cau8 IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cau8;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau8 IS
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
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_3|bcd[0]~7_combout\ : std_logic;
SIGNAL \comb_3|bcd[1]~9_cout\ : std_logic;
SIGNAL \comb_3|bcd[1]~10_combout\ : std_logic;
SIGNAL \comb_3|bcd[1]~11\ : std_logic;
SIGNAL \comb_3|bcd[2]~12_combout\ : std_logic;
SIGNAL \comb_3|bcd[2]~13\ : std_logic;
SIGNAL \comb_3|bcd[3]~14_combout\ : std_logic;
SIGNAL \comb_4|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_3|bcd[3]~15\ : std_logic;
SIGNAL \comb_3|bcd[4]~16_combout\ : std_logic;
SIGNAL \comb_3|bcd[4]~17\ : std_logic;
SIGNAL \comb_3|bcd[5]~19\ : std_logic;
SIGNAL \comb_3|bcd[6]~20_combout\ : std_logic;
SIGNAL \comb_3|bcd[5]~18_combout\ : std_logic;
SIGNAL \comb_3|bcd[6]~21\ : std_logic;
SIGNAL \comb_3|bcd[7]~22_combout\ : std_logic;
SIGNAL \comb_5|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_5|WideOr0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_3|bcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \comb_5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \comb_4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY~combout\(1) <= NOT \KEY~combout\(1);
\comb_5|ALT_INV_WideOr0~0_combout\ <= NOT \comb_5|WideOr0~0_combout\;
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

-- Location: LCCOMB_X2_Y18_N28
\comb_3|bcd[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[0]~7_combout\ = \comb_3|bcd\(0) $ (\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|bcd\(0),
	datad => \SW~combout\(0),
	combout => \comb_3|bcd[0]~7_combout\);

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

-- Location: LCFF_X2_Y18_N29
\comb_3|bcd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[0]~7_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(0));

-- Location: LCCOMB_X2_Y18_N0
\comb_3|bcd[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[1]~9_cout\ = CARRY(\comb_3|bcd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|bcd\(0),
	datad => VCC,
	cout => \comb_3|bcd[1]~9_cout\);

-- Location: LCCOMB_X2_Y18_N2
\comb_3|bcd[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[1]~10_combout\ = (\SW~combout\(1) & ((\comb_3|bcd\(1) & (!\comb_3|bcd[1]~9_cout\)) # (!\comb_3|bcd\(1) & ((\comb_3|bcd[1]~9_cout\) # (GND))))) # (!\SW~combout\(1) & ((\comb_3|bcd\(1) & (\comb_3|bcd[1]~9_cout\ & VCC)) # (!\comb_3|bcd\(1) & 
-- (!\comb_3|bcd[1]~9_cout\))))
-- \comb_3|bcd[1]~11\ = CARRY((\SW~combout\(1) & ((!\comb_3|bcd[1]~9_cout\) # (!\comb_3|bcd\(1)))) # (!\SW~combout\(1) & (!\comb_3|bcd\(1) & !\comb_3|bcd[1]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \comb_3|bcd\(1),
	datad => VCC,
	cin => \comb_3|bcd[1]~9_cout\,
	combout => \comb_3|bcd[1]~10_combout\,
	cout => \comb_3|bcd[1]~11\);

-- Location: LCFF_X2_Y18_N3
\comb_3|bcd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[1]~10_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(1));

-- Location: LCCOMB_X2_Y18_N4
\comb_3|bcd[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[2]~12_combout\ = ((\SW~combout\(1) $ (\comb_3|bcd\(2) $ (\comb_3|bcd[1]~11\)))) # (GND)
-- \comb_3|bcd[2]~13\ = CARRY((\SW~combout\(1) & (\comb_3|bcd\(2) & !\comb_3|bcd[1]~11\)) # (!\SW~combout\(1) & ((\comb_3|bcd\(2)) # (!\comb_3|bcd[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \comb_3|bcd\(2),
	datad => VCC,
	cin => \comb_3|bcd[1]~11\,
	combout => \comb_3|bcd[2]~12_combout\,
	cout => \comb_3|bcd[2]~13\);

-- Location: LCFF_X2_Y18_N5
\comb_3|bcd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[2]~12_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(2));

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

-- Location: LCCOMB_X2_Y18_N6
\comb_3|bcd[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[3]~14_combout\ = (\comb_3|bcd\(3) & ((\SW~combout\(1) & (!\comb_3|bcd[2]~13\)) # (!\SW~combout\(1) & (\comb_3|bcd[2]~13\ & VCC)))) # (!\comb_3|bcd\(3) & ((\SW~combout\(1) & ((\comb_3|bcd[2]~13\) # (GND))) # (!\SW~combout\(1) & 
-- (!\comb_3|bcd[2]~13\))))
-- \comb_3|bcd[3]~15\ = CARRY((\comb_3|bcd\(3) & (\SW~combout\(1) & !\comb_3|bcd[2]~13\)) # (!\comb_3|bcd\(3) & ((\SW~combout\(1)) # (!\comb_3|bcd[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(3),
	datab => \SW~combout\(1),
	datad => VCC,
	cin => \comb_3|bcd[2]~13\,
	combout => \comb_3|bcd[3]~14_combout\,
	cout => \comb_3|bcd[3]~15\);

-- Location: LCFF_X2_Y18_N7
\comb_3|bcd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[3]~14_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(3));

-- Location: LCCOMB_X1_Y18_N28
\comb_4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr6~0_combout\ = (\comb_3|bcd\(2) & (!\comb_3|bcd\(1) & (\comb_3|bcd\(0) $ (!\comb_3|bcd\(3))))) # (!\comb_3|bcd\(2) & (\comb_3|bcd\(0) & (\comb_3|bcd\(1) $ (!\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\comb_4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr5~0_combout\ = (\comb_3|bcd\(1) & ((\comb_3|bcd\(0) & ((\comb_3|bcd\(3)))) # (!\comb_3|bcd\(0) & (\comb_3|bcd\(2))))) # (!\comb_3|bcd\(1) & (\comb_3|bcd\(2) & (\comb_3|bcd\(0) $ (\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\comb_4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr4~0_combout\ = (\comb_3|bcd\(2) & (\comb_3|bcd\(3) & ((\comb_3|bcd\(1)) # (!\comb_3|bcd\(0))))) # (!\comb_3|bcd\(2) & (!\comb_3|bcd\(0) & (\comb_3|bcd\(1) & !\comb_3|bcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y18_N2
\comb_4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr3~0_combout\ = (\comb_3|bcd\(1) & ((\comb_3|bcd\(2) & (\comb_3|bcd\(0))) # (!\comb_3|bcd\(2) & (!\comb_3|bcd\(0) & \comb_3|bcd\(3))))) # (!\comb_3|bcd\(1) & (!\comb_3|bcd\(3) & (\comb_3|bcd\(2) $ (\comb_3|bcd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\comb_4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr2~0_combout\ = (\comb_3|bcd\(1) & (((\comb_3|bcd\(0) & !\comb_3|bcd\(3))))) # (!\comb_3|bcd\(1) & ((\comb_3|bcd\(2) & ((!\comb_3|bcd\(3)))) # (!\comb_3|bcd\(2) & (\comb_3|bcd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\comb_4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr1~0_combout\ = (\comb_3|bcd\(2) & (\comb_3|bcd\(0) & (\comb_3|bcd\(1) $ (\comb_3|bcd\(3))))) # (!\comb_3|bcd\(2) & (!\comb_3|bcd\(3) & ((\comb_3|bcd\(0)) # (\comb_3|bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\comb_4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|WideOr0~0_combout\ = (\comb_3|bcd\(0) & ((\comb_3|bcd\(3)) # (\comb_3|bcd\(2) $ (\comb_3|bcd\(1))))) # (!\comb_3|bcd\(0) & ((\comb_3|bcd\(1)) # (\comb_3|bcd\(2) $ (\comb_3|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(2),
	datab => \comb_3|bcd\(0),
	datac => \comb_3|bcd\(1),
	datad => \comb_3|bcd\(3),
	combout => \comb_4|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y18_N8
\comb_3|bcd[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[4]~16_combout\ = ((\SW~combout\(1) $ (\comb_3|bcd\(4) $ (\comb_3|bcd[3]~15\)))) # (GND)
-- \comb_3|bcd[4]~17\ = CARRY((\SW~combout\(1) & (\comb_3|bcd\(4) & !\comb_3|bcd[3]~15\)) # (!\SW~combout\(1) & ((\comb_3|bcd\(4)) # (!\comb_3|bcd[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \comb_3|bcd\(4),
	datad => VCC,
	cin => \comb_3|bcd[3]~15\,
	combout => \comb_3|bcd[4]~16_combout\,
	cout => \comb_3|bcd[4]~17\);

-- Location: LCFF_X2_Y18_N9
\comb_3|bcd[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[4]~16_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(4));

-- Location: LCCOMB_X2_Y18_N10
\comb_3|bcd[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[5]~18_combout\ = (\comb_3|bcd\(5) & ((\SW~combout\(1) & (!\comb_3|bcd[4]~17\)) # (!\SW~combout\(1) & (\comb_3|bcd[4]~17\ & VCC)))) # (!\comb_3|bcd\(5) & ((\SW~combout\(1) & ((\comb_3|bcd[4]~17\) # (GND))) # (!\SW~combout\(1) & 
-- (!\comb_3|bcd[4]~17\))))
-- \comb_3|bcd[5]~19\ = CARRY((\comb_3|bcd\(5) & (\SW~combout\(1) & !\comb_3|bcd[4]~17\)) # (!\comb_3|bcd\(5) & ((\SW~combout\(1)) # (!\comb_3|bcd[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(5),
	datab => \SW~combout\(1),
	datad => VCC,
	cin => \comb_3|bcd[4]~17\,
	combout => \comb_3|bcd[5]~18_combout\,
	cout => \comb_3|bcd[5]~19\);

-- Location: LCCOMB_X2_Y18_N12
\comb_3|bcd[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[6]~20_combout\ = ((\comb_3|bcd\(6) $ (\SW~combout\(1) $ (\comb_3|bcd[5]~19\)))) # (GND)
-- \comb_3|bcd[6]~21\ = CARRY((\comb_3|bcd\(6) & ((!\comb_3|bcd[5]~19\) # (!\SW~combout\(1)))) # (!\comb_3|bcd\(6) & (!\SW~combout\(1) & !\comb_3|bcd[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \SW~combout\(1),
	datad => VCC,
	cin => \comb_3|bcd[5]~19\,
	combout => \comb_3|bcd[6]~20_combout\,
	cout => \comb_3|bcd[6]~21\);

-- Location: LCFF_X2_Y18_N13
\comb_3|bcd[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[6]~20_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(6));

-- Location: LCFF_X2_Y18_N11
\comb_3|bcd[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[5]~18_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(5));

-- Location: LCCOMB_X2_Y18_N14
\comb_3|bcd[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|bcd[7]~22_combout\ = \SW~combout\(1) $ (\comb_3|bcd[6]~21\ $ (!\comb_3|bcd\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datad => \comb_3|bcd\(7),
	cin => \comb_3|bcd[6]~21\,
	combout => \comb_3|bcd[7]~22_combout\);

-- Location: LCFF_X2_Y18_N15
\comb_3|bcd[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|bcd[7]~22_combout\,
	aclr => \ALT_INV_KEY~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|bcd\(7));

-- Location: LCCOMB_X1_Y21_N8
\comb_5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr6~0_combout\ = (\comb_3|bcd\(6) & (!\comb_3|bcd\(5) & (\comb_3|bcd\(7) $ (!\comb_3|bcd\(4))))) # (!\comb_3|bcd\(6) & (\comb_3|bcd\(4) & (\comb_3|bcd\(5) $ (!\comb_3|bcd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\comb_5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr5~0_combout\ = (\comb_3|bcd\(5) & ((\comb_3|bcd\(4) & ((\comb_3|bcd\(7)))) # (!\comb_3|bcd\(4) & (\comb_3|bcd\(6))))) # (!\comb_3|bcd\(5) & (\comb_3|bcd\(6) & (\comb_3|bcd\(7) $ (\comb_3|bcd\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\comb_5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr4~0_combout\ = (\comb_3|bcd\(6) & (\comb_3|bcd\(7) & ((\comb_3|bcd\(5)) # (!\comb_3|bcd\(4))))) # (!\comb_3|bcd\(6) & (\comb_3|bcd\(5) & (!\comb_3|bcd\(7) & !\comb_3|bcd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\comb_5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr3~0_combout\ = (\comb_3|bcd\(5) & ((\comb_3|bcd\(6) & ((\comb_3|bcd\(4)))) # (!\comb_3|bcd\(6) & (\comb_3|bcd\(7) & !\comb_3|bcd\(4))))) # (!\comb_3|bcd\(5) & (!\comb_3|bcd\(7) & (\comb_3|bcd\(6) $ (\comb_3|bcd\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\comb_5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr2~0_combout\ = (\comb_3|bcd\(5) & (((!\comb_3|bcd\(7) & \comb_3|bcd\(4))))) # (!\comb_3|bcd\(5) & ((\comb_3|bcd\(6) & (!\comb_3|bcd\(7))) # (!\comb_3|bcd\(6) & ((\comb_3|bcd\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\comb_5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr1~0_combout\ = (\comb_3|bcd\(6) & (\comb_3|bcd\(4) & (\comb_3|bcd\(5) $ (\comb_3|bcd\(7))))) # (!\comb_3|bcd\(6) & (!\comb_3|bcd\(7) & ((\comb_3|bcd\(5)) # (\comb_3|bcd\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\comb_5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_5|WideOr0~0_combout\ = (\comb_3|bcd\(4) & ((\comb_3|bcd\(7)) # (\comb_3|bcd\(6) $ (\comb_3|bcd\(5))))) # (!\comb_3|bcd\(4) & ((\comb_3|bcd\(5)) # (\comb_3|bcd\(6) $ (\comb_3|bcd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|bcd\(6),
	datab => \comb_3|bcd\(5),
	datac => \comb_3|bcd\(7),
	datad => \comb_3|bcd\(4),
	combout => \comb_5|WideOr0~0_combout\);

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

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \comb_5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \comb_5|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));
END structure;


