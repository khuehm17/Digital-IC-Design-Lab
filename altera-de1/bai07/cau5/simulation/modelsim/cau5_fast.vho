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

-- DATE "12/19/2018 11:45:02"

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

ENTITY 	cau5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END cau5;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~14_combout\ : std_logic;
SIGNAL \comb_3|Add0~18_combout\ : std_logic;
SIGNAL \comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|Add0~32_combout\ : std_logic;
SIGNAL \comb_3|Equal0~4_combout\ : std_logic;
SIGNAL \comb_3|giay0~0_combout\ : std_logic;
SIGNAL \comb_3|count~0_combout\ : std_logic;
SIGNAL \comb_3|count~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~9\ : std_logic;
SIGNAL \comb_3|Add0~11\ : std_logic;
SIGNAL \comb_3|Add0~12_combout\ : std_logic;
SIGNAL \comb_3|Add0~13\ : std_logic;
SIGNAL \comb_3|Add0~15\ : std_logic;
SIGNAL \comb_3|Add0~16_combout\ : std_logic;
SIGNAL \comb_3|Add0~17\ : std_logic;
SIGNAL \comb_3|Add0~19\ : std_logic;
SIGNAL \comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|count~3_combout\ : std_logic;
SIGNAL \comb_3|Add0~25\ : std_logic;
SIGNAL \comb_3|Add0~26_combout\ : std_logic;
SIGNAL \comb_3|Add0~27\ : std_logic;
SIGNAL \comb_3|Add0~28_combout\ : std_logic;
SIGNAL \comb_3|Add0~29\ : std_logic;
SIGNAL \comb_3|Add0~31\ : std_logic;
SIGNAL \comb_3|Add0~33\ : std_logic;
SIGNAL \comb_3|Add0~34_combout\ : std_logic;
SIGNAL \comb_3|Add0~35\ : std_logic;
SIGNAL \comb_3|Add0~36_combout\ : std_logic;
SIGNAL \comb_3|Add0~37\ : std_logic;
SIGNAL \comb_3|Add0~38_combout\ : std_logic;
SIGNAL \comb_3|count~5_combout\ : std_logic;
SIGNAL \comb_3|Add0~39\ : std_logic;
SIGNAL \comb_3|Add0~41\ : std_logic;
SIGNAL \comb_3|Add0~42_combout\ : std_logic;
SIGNAL \comb_3|Add0~43\ : std_logic;
SIGNAL \comb_3|Add0~44_combout\ : std_logic;
SIGNAL \comb_3|Add0~45\ : std_logic;
SIGNAL \comb_3|Add0~46_combout\ : std_logic;
SIGNAL \comb_3|count~7_combout\ : std_logic;
SIGNAL \comb_3|Add0~47\ : std_logic;
SIGNAL \comb_3|Add0~48_combout\ : std_logic;
SIGNAL \comb_3|Add0~49\ : std_logic;
SIGNAL \comb_3|Add0~50_combout\ : std_logic;
SIGNAL \comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|Equal0~3_combout\ : std_logic;
SIGNAL \comb_3|Equal0~6_combout\ : std_logic;
SIGNAL \comb_3|Equal0~5_combout\ : std_logic;
SIGNAL \comb_3|Equal0~7_combout\ : std_logic;
SIGNAL \comb_3|Equal0~10_combout\ : std_logic;
SIGNAL \comb_3|count~2_combout\ : std_logic;
SIGNAL \comb_3|Equal0~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~40_combout\ : std_logic;
SIGNAL \comb_3|count~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~30_combout\ : std_logic;
SIGNAL \comb_3|count~4_combout\ : std_logic;
SIGNAL \comb_3|Equal0~9_combout\ : std_logic;
SIGNAL \comb_3|count~1_combout\ : std_logic;
SIGNAL \comb_3|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|Equal1~2_combout\ : std_logic;
SIGNAL \comb_3|Add0~51\ : std_logic;
SIGNAL \comb_3|Add0~52_combout\ : std_logic;
SIGNAL \comb_3|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|giay0[2]~1_combout\ : std_logic;
SIGNAL \comb_3|Add2~0_combout\ : std_logic;
SIGNAL \comb_3|giay0~4_combout\ : std_logic;
SIGNAL \comb_3|giay0~3_combout\ : std_logic;
SIGNAL \comb_3|giay1[3]~0_combout\ : std_logic;
SIGNAL \comb_3|giay0~2_combout\ : std_logic;
SIGNAL \dv|WideOr6~0_combout\ : std_logic;
SIGNAL \dv|WideOr5~0_combout\ : std_logic;
SIGNAL \dv|WideOr4~0_combout\ : std_logic;
SIGNAL \dv|WideOr3~0_combout\ : std_logic;
SIGNAL \dv|WideOr2~0_combout\ : std_logic;
SIGNAL \dv|WideOr1~0_combout\ : std_logic;
SIGNAL \dv|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_3|giay1~4_combout\ : std_logic;
SIGNAL \comb_3|Equal1~3_combout\ : std_logic;
SIGNAL \comb_3|giay1[3]~3_combout\ : std_logic;
SIGNAL \comb_3|giay1~5_combout\ : std_logic;
SIGNAL \comb_3|giay1[3]~1_combout\ : std_logic;
SIGNAL \comb_3|giay1~2_combout\ : std_logic;
SIGNAL \comb_3|Add1~0_combout\ : std_logic;
SIGNAL \comb_3|giay1~6_combout\ : std_logic;
SIGNAL \ch|WideOr6~0_combout\ : std_logic;
SIGNAL \ch|WideOr5~0_combout\ : std_logic;
SIGNAL \ch|WideOr4~0_combout\ : std_logic;
SIGNAL \ch|WideOr3~0_combout\ : std_logic;
SIGNAL \ch|WideOr2~0_combout\ : std_logic;
SIGNAL \ch|WideOr1~0_combout\ : std_logic;
SIGNAL \ch|WideOr0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|red~0_combout\ : std_logic;
SIGNAL \comb_3|red~1_combout\ : std_logic;
SIGNAL \comb_3|red~regout\ : std_logic;
SIGNAL \comb_3|green~0_combout\ : std_logic;
SIGNAL \comb_3|green~regout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_3|giay0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \comb_3|giay1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ch|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \dv|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ch|ALT_INV_WideOr6~0_combout\ <= NOT \ch|WideOr6~0_combout\;
\dv|ALT_INV_WideOr6~0_combout\ <= NOT \dv|WideOr6~0_combout\;

-- Location: LCCOMB_X3_Y19_N6
\comb_3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~0_combout\ = \comb_3|count\(0) $ (VCC)
-- \comb_3|Add0~1\ = CARRY(\comb_3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(0),
	datad => VCC,
	combout => \comb_3|Add0~0_combout\,
	cout => \comb_3|Add0~1\);

-- Location: LCCOMB_X3_Y19_N12
\comb_3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~6_combout\ = (\comb_3|count\(3) & (!\comb_3|Add0~5\)) # (!\comb_3|count\(3) & ((\comb_3|Add0~5\) # (GND)))
-- \comb_3|Add0~7\ = CARRY((!\comb_3|Add0~5\) # (!\comb_3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(3),
	datad => VCC,
	cin => \comb_3|Add0~5\,
	combout => \comb_3|Add0~6_combout\,
	cout => \comb_3|Add0~7\);

-- Location: LCCOMB_X3_Y19_N16
\comb_3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~10_combout\ = (\comb_3|count\(5) & (!\comb_3|Add0~9\)) # (!\comb_3|count\(5) & ((\comb_3|Add0~9\) # (GND)))
-- \comb_3|Add0~11\ = CARRY((!\comb_3|Add0~9\) # (!\comb_3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(5),
	datad => VCC,
	cin => \comb_3|Add0~9\,
	combout => \comb_3|Add0~10_combout\,
	cout => \comb_3|Add0~11\);

-- Location: LCCOMB_X3_Y19_N20
\comb_3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~14_combout\ = (\comb_3|count\(7) & (!\comb_3|Add0~13\)) # (!\comb_3|count\(7) & ((\comb_3|Add0~13\) # (GND)))
-- \comb_3|Add0~15\ = CARRY((!\comb_3|Add0~13\) # (!\comb_3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(7),
	datad => VCC,
	cin => \comb_3|Add0~13\,
	combout => \comb_3|Add0~14_combout\,
	cout => \comb_3|Add0~15\);

-- Location: LCCOMB_X3_Y19_N24
\comb_3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~18_combout\ = (\comb_3|count\(9) & (!\comb_3|Add0~17\)) # (!\comb_3|count\(9) & ((\comb_3|Add0~17\) # (GND)))
-- \comb_3|Add0~19\ = CARRY((!\comb_3|Add0~17\) # (!\comb_3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(9),
	datad => VCC,
	cin => \comb_3|Add0~17\,
	combout => \comb_3|Add0~18_combout\,
	cout => \comb_3|Add0~19\);

-- Location: LCCOMB_X3_Y19_N26
\comb_3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~20_combout\ = (\comb_3|count\(10) & (\comb_3|Add0~19\ $ (GND))) # (!\comb_3|count\(10) & (!\comb_3|Add0~19\ & VCC))
-- \comb_3|Add0~21\ = CARRY((\comb_3|count\(10) & !\comb_3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(10),
	datad => VCC,
	cin => \comb_3|Add0~19\,
	combout => \comb_3|Add0~20_combout\,
	cout => \comb_3|Add0~21\);

-- Location: LCCOMB_X3_Y18_N6
\comb_3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~32_combout\ = (\comb_3|count\(16) & (\comb_3|Add0~31\ $ (GND))) # (!\comb_3|count\(16) & (!\comb_3|Add0~31\ & VCC))
-- \comb_3|Add0~33\ = CARRY((\comb_3|count\(16) & !\comb_3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(16),
	datad => VCC,
	cin => \comb_3|Add0~31\,
	combout => \comb_3|Add0~32_combout\,
	cout => \comb_3|Add0~33\);

-- Location: LCFF_X3_Y19_N13
\comb_3|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(3));

-- Location: LCFF_X3_Y19_N17
\comb_3|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(5));

-- Location: LCCOMB_X3_Y19_N2
\comb_3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~4_combout\ = (!\comb_3|count\(5) & (!\comb_3|count\(6) & (!\comb_3|count\(4) & !\comb_3|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(5),
	datab => \comb_3|count\(6),
	datac => \comb_3|count\(4),
	datad => \comb_3|count\(8),
	combout => \comb_3|Equal0~4_combout\);

-- Location: LCFF_X3_Y18_N7
\comb_3|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(16));

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

-- Location: LCCOMB_X4_Y19_N28
\comb_3|giay0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay0~0_combout\ = (!\comb_3|giay0\(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|giay0\(0),
	datad => \KEY~combout\(0),
	combout => \comb_3|giay0~0_combout\);

-- Location: LCCOMB_X2_Y19_N24
\comb_3|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~0_combout\ = (\comb_3|Add0~14_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~14_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~0_combout\);

-- Location: LCFF_X2_Y19_N25
\comb_3|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(7));

-- Location: LCCOMB_X3_Y19_N0
\comb_3|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~8_combout\ = (\comb_3|Add0~0_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~0_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~8_combout\);

-- Location: LCFF_X3_Y19_N1
\comb_3|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(0));

-- Location: LCCOMB_X3_Y19_N8
\comb_3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~2_combout\ = (\comb_3|count\(1) & (!\comb_3|Add0~1\)) # (!\comb_3|count\(1) & ((\comb_3|Add0~1\) # (GND)))
-- \comb_3|Add0~3\ = CARRY((!\comb_3|Add0~1\) # (!\comb_3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(1),
	datad => VCC,
	cin => \comb_3|Add0~1\,
	combout => \comb_3|Add0~2_combout\,
	cout => \comb_3|Add0~3\);

-- Location: LCFF_X3_Y19_N9
\comb_3|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(1));

-- Location: LCCOMB_X3_Y19_N10
\comb_3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~4_combout\ = (\comb_3|count\(2) & (\comb_3|Add0~3\ $ (GND))) # (!\comb_3|count\(2) & (!\comb_3|Add0~3\ & VCC))
-- \comb_3|Add0~5\ = CARRY((\comb_3|count\(2) & !\comb_3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(2),
	datad => VCC,
	cin => \comb_3|Add0~3\,
	combout => \comb_3|Add0~4_combout\,
	cout => \comb_3|Add0~5\);

-- Location: LCCOMB_X3_Y19_N14
\comb_3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~8_combout\ = (\comb_3|count\(4) & (\comb_3|Add0~7\ $ (GND))) # (!\comb_3|count\(4) & (!\comb_3|Add0~7\ & VCC))
-- \comb_3|Add0~9\ = CARRY((\comb_3|count\(4) & !\comb_3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(4),
	datad => VCC,
	cin => \comb_3|Add0~7\,
	combout => \comb_3|Add0~8_combout\,
	cout => \comb_3|Add0~9\);

-- Location: LCFF_X3_Y19_N15
\comb_3|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(4));

-- Location: LCCOMB_X3_Y19_N18
\comb_3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~12_combout\ = (\comb_3|count\(6) & (\comb_3|Add0~11\ $ (GND))) # (!\comb_3|count\(6) & (!\comb_3|Add0~11\ & VCC))
-- \comb_3|Add0~13\ = CARRY((\comb_3|count\(6) & !\comb_3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(6),
	datad => VCC,
	cin => \comb_3|Add0~11\,
	combout => \comb_3|Add0~12_combout\,
	cout => \comb_3|Add0~13\);

-- Location: LCFF_X3_Y19_N19
\comb_3|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(6));

-- Location: LCCOMB_X3_Y19_N22
\comb_3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~16_combout\ = (\comb_3|count\(8) & (\comb_3|Add0~15\ $ (GND))) # (!\comb_3|count\(8) & (!\comb_3|Add0~15\ & VCC))
-- \comb_3|Add0~17\ = CARRY((\comb_3|count\(8) & !\comb_3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(8),
	datad => VCC,
	cin => \comb_3|Add0~15\,
	combout => \comb_3|Add0~16_combout\,
	cout => \comb_3|Add0~17\);

-- Location: LCFF_X3_Y19_N23
\comb_3|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(8));

-- Location: LCCOMB_X3_Y19_N28
\comb_3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~22_combout\ = (\comb_3|count\(11) & (!\comb_3|Add0~21\)) # (!\comb_3|count\(11) & ((\comb_3|Add0~21\) # (GND)))
-- \comb_3|Add0~23\ = CARRY((!\comb_3|Add0~21\) # (!\comb_3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(11),
	datad => VCC,
	cin => \comb_3|Add0~21\,
	combout => \comb_3|Add0~22_combout\,
	cout => \comb_3|Add0~23\);

-- Location: LCFF_X3_Y19_N29
\comb_3|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(11));

-- Location: LCCOMB_X3_Y19_N30
\comb_3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~24_combout\ = (\comb_3|count\(12) & (\comb_3|Add0~23\ $ (GND))) # (!\comb_3|count\(12) & (!\comb_3|Add0~23\ & VCC))
-- \comb_3|Add0~25\ = CARRY((\comb_3|count\(12) & !\comb_3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(12),
	datad => VCC,
	cin => \comb_3|Add0~23\,
	combout => \comb_3|Add0~24_combout\,
	cout => \comb_3|Add0~25\);

-- Location: LCCOMB_X2_Y19_N26
\comb_3|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~3_combout\ = (\comb_3|Add0~24_combout\ & (((!\comb_3|Equal0~8_combout\) # (!\comb_3|Equal0~10_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Equal0~10_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Add0~24_combout\,
	combout => \comb_3|count~3_combout\);

-- Location: LCFF_X2_Y19_N27
\comb_3|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(12));

-- Location: LCCOMB_X3_Y18_N0
\comb_3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~26_combout\ = (\comb_3|count\(13) & (!\comb_3|Add0~25\)) # (!\comb_3|count\(13) & ((\comb_3|Add0~25\) # (GND)))
-- \comb_3|Add0~27\ = CARRY((!\comb_3|Add0~25\) # (!\comb_3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(13),
	datad => VCC,
	cin => \comb_3|Add0~25\,
	combout => \comb_3|Add0~26_combout\,
	cout => \comb_3|Add0~27\);

-- Location: LCFF_X3_Y18_N1
\comb_3|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(13));

-- Location: LCCOMB_X3_Y18_N2
\comb_3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~28_combout\ = (\comb_3|count\(14) & (\comb_3|Add0~27\ $ (GND))) # (!\comb_3|count\(14) & (!\comb_3|Add0~27\ & VCC))
-- \comb_3|Add0~29\ = CARRY((\comb_3|count\(14) & !\comb_3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(14),
	datad => VCC,
	cin => \comb_3|Add0~27\,
	combout => \comb_3|Add0~28_combout\,
	cout => \comb_3|Add0~29\);

-- Location: LCFF_X3_Y18_N3
\comb_3|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(14));

-- Location: LCCOMB_X3_Y18_N4
\comb_3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~30_combout\ = (\comb_3|count\(15) & (!\comb_3|Add0~29\)) # (!\comb_3|count\(15) & ((\comb_3|Add0~29\) # (GND)))
-- \comb_3|Add0~31\ = CARRY((!\comb_3|Add0~29\) # (!\comb_3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(15),
	datad => VCC,
	cin => \comb_3|Add0~29\,
	combout => \comb_3|Add0~30_combout\,
	cout => \comb_3|Add0~31\);

-- Location: LCCOMB_X3_Y18_N8
\comb_3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~34_combout\ = (\comb_3|count\(17) & (!\comb_3|Add0~33\)) # (!\comb_3|count\(17) & ((\comb_3|Add0~33\) # (GND)))
-- \comb_3|Add0~35\ = CARRY((!\comb_3|Add0~33\) # (!\comb_3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(17),
	datad => VCC,
	cin => \comb_3|Add0~33\,
	combout => \comb_3|Add0~34_combout\,
	cout => \comb_3|Add0~35\);

-- Location: LCFF_X3_Y18_N9
\comb_3|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(17));

-- Location: LCCOMB_X3_Y18_N10
\comb_3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~36_combout\ = (\comb_3|count\(18) & (\comb_3|Add0~35\ $ (GND))) # (!\comb_3|count\(18) & (!\comb_3|Add0~35\ & VCC))
-- \comb_3|Add0~37\ = CARRY((\comb_3|count\(18) & !\comb_3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(18),
	datad => VCC,
	cin => \comb_3|Add0~35\,
	combout => \comb_3|Add0~36_combout\,
	cout => \comb_3|Add0~37\);

-- Location: LCFF_X3_Y18_N11
\comb_3|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(18));

-- Location: LCCOMB_X3_Y18_N12
\comb_3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~38_combout\ = (\comb_3|count\(19) & (!\comb_3|Add0~37\)) # (!\comb_3|count\(19) & ((\comb_3|Add0~37\) # (GND)))
-- \comb_3|Add0~39\ = CARRY((!\comb_3|Add0~37\) # (!\comb_3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(19),
	datad => VCC,
	cin => \comb_3|Add0~37\,
	combout => \comb_3|Add0~38_combout\,
	cout => \comb_3|Add0~39\);

-- Location: LCCOMB_X2_Y19_N8
\comb_3|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~5_combout\ = (\comb_3|Add0~38_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Equal0~8_combout\,
	datac => \comb_3|Add0~38_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~5_combout\);

-- Location: LCFF_X2_Y19_N9
\comb_3|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(19));

-- Location: LCCOMB_X3_Y18_N14
\comb_3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~40_combout\ = (\comb_3|count\(20) & (\comb_3|Add0~39\ $ (GND))) # (!\comb_3|count\(20) & (!\comb_3|Add0~39\ & VCC))
-- \comb_3|Add0~41\ = CARRY((\comb_3|count\(20) & !\comb_3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(20),
	datad => VCC,
	cin => \comb_3|Add0~39\,
	combout => \comb_3|Add0~40_combout\,
	cout => \comb_3|Add0~41\);

-- Location: LCCOMB_X3_Y18_N16
\comb_3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~42_combout\ = (\comb_3|count\(21) & (!\comb_3|Add0~41\)) # (!\comb_3|count\(21) & ((\comb_3|Add0~41\) # (GND)))
-- \comb_3|Add0~43\ = CARRY((!\comb_3|Add0~41\) # (!\comb_3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(21),
	datad => VCC,
	cin => \comb_3|Add0~41\,
	combout => \comb_3|Add0~42_combout\,
	cout => \comb_3|Add0~43\);

-- Location: LCFF_X3_Y18_N17
\comb_3|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(21));

-- Location: LCCOMB_X3_Y18_N18
\comb_3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~44_combout\ = (\comb_3|count\(22) & (\comb_3|Add0~43\ $ (GND))) # (!\comb_3|count\(22) & (!\comb_3|Add0~43\ & VCC))
-- \comb_3|Add0~45\ = CARRY((\comb_3|count\(22) & !\comb_3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(22),
	datad => VCC,
	cin => \comb_3|Add0~43\,
	combout => \comb_3|Add0~44_combout\,
	cout => \comb_3|Add0~45\);

-- Location: LCFF_X3_Y18_N19
\comb_3|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(22));

-- Location: LCCOMB_X3_Y18_N20
\comb_3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~46_combout\ = (\comb_3|count\(23) & (!\comb_3|Add0~45\)) # (!\comb_3|count\(23) & ((\comb_3|Add0~45\) # (GND)))
-- \comb_3|Add0~47\ = CARRY((!\comb_3|Add0~45\) # (!\comb_3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(23),
	datad => VCC,
	cin => \comb_3|Add0~45\,
	combout => \comb_3|Add0~46_combout\,
	cout => \comb_3|Add0~47\);

-- Location: LCCOMB_X2_Y19_N20
\comb_3|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~7_combout\ = (\comb_3|Add0~46_combout\ & (((!\comb_3|Equal0~8_combout\) # (!\comb_3|Equal0~10_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Equal0~10_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Add0~46_combout\,
	combout => \comb_3|count~7_combout\);

-- Location: LCFF_X2_Y19_N21
\comb_3|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(23));

-- Location: LCCOMB_X3_Y18_N22
\comb_3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~48_combout\ = (\comb_3|count\(24) & (\comb_3|Add0~47\ $ (GND))) # (!\comb_3|count\(24) & (!\comb_3|Add0~47\ & VCC))
-- \comb_3|Add0~49\ = CARRY((\comb_3|count\(24) & !\comb_3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(24),
	datad => VCC,
	cin => \comb_3|Add0~47\,
	combout => \comb_3|Add0~48_combout\,
	cout => \comb_3|Add0~49\);

-- Location: LCFF_X3_Y18_N23
\comb_3|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(24));

-- Location: LCCOMB_X3_Y18_N24
\comb_3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~50_combout\ = (\comb_3|count\(25) & (!\comb_3|Add0~49\)) # (!\comb_3|count\(25) & ((\comb_3|Add0~49\) # (GND)))
-- \comb_3|Add0~51\ = CARRY((!\comb_3|Add0~49\) # (!\comb_3|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(25),
	datad => VCC,
	cin => \comb_3|Add0~49\,
	combout => \comb_3|Add0~50_combout\,
	cout => \comb_3|Add0~51\);

-- Location: LCFF_X3_Y18_N25
\comb_3|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(25));

-- Location: LCFF_X3_Y19_N11
\comb_3|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(2));

-- Location: LCCOMB_X4_Y19_N12
\comb_3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~3_combout\ = (!\comb_3|count\(3) & (!\comb_3|count\(1) & (!\comb_3|count\(0) & !\comb_3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(3),
	datab => \comb_3|count\(1),
	datac => \comb_3|count\(0),
	datad => \comb_3|count\(2),
	combout => \comb_3|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y18_N30
\comb_3|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~6_combout\ = (!\comb_3|count\(21) & (!\comb_3|count\(22) & (!\comb_3|count\(17) & !\comb_3|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(21),
	datab => \comb_3|count\(22),
	datac => \comb_3|count\(17),
	datad => \comb_3|count\(18),
	combout => \comb_3|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y18_N28
\comb_3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~5_combout\ = (!\comb_3|count\(16) & (!\comb_3|count\(13) & (!\comb_3|count\(11) & !\comb_3|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(16),
	datab => \comb_3|count\(13),
	datac => \comb_3|count\(11),
	datad => \comb_3|count\(14),
	combout => \comb_3|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y19_N4
\comb_3|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~7_combout\ = (\comb_3|Equal0~4_combout\ & (\comb_3|Equal0~3_combout\ & (\comb_3|Equal0~6_combout\ & \comb_3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~4_combout\,
	datab => \comb_3|Equal0~3_combout\,
	datac => \comb_3|Equal0~6_combout\,
	datad => \comb_3|Equal0~5_combout\,
	combout => \comb_3|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y19_N2
\comb_3|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~10_combout\ = (!\comb_3|count\(26) & (!\comb_3|count\(24) & (!\comb_3|count\(25) & \comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(26),
	datab => \comb_3|count\(24),
	datac => \comb_3|count\(25),
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Equal0~10_combout\);

-- Location: LCCOMB_X2_Y19_N4
\comb_3|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~2_combout\ = (\comb_3|Add0~20_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~20_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~2_combout\);

-- Location: LCFF_X2_Y19_N5
\comb_3|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(10));

-- Location: LCCOMB_X2_Y19_N14
\comb_3|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~8_combout\ = (\comb_3|count\(7) & (\comb_3|count\(9) & (\comb_3|count\(10) & \comb_3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(7),
	datab => \comb_3|count\(9),
	datac => \comb_3|count\(10),
	datad => \comb_3|count\(12),
	combout => \comb_3|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y19_N18
\comb_3|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~6_combout\ = (\comb_3|Add0~40_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Equal0~8_combout\,
	datac => \comb_3|Add0~40_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~6_combout\);

-- Location: LCFF_X2_Y19_N19
\comb_3|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(20));

-- Location: LCCOMB_X2_Y19_N6
\comb_3|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~4_combout\ = (\comb_3|Add0~30_combout\ & (((!\comb_3|Equal0~8_combout\) # (!\comb_3|Equal0~10_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Equal0~10_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Add0~30_combout\,
	combout => \comb_3|count~4_combout\);

-- Location: LCFF_X2_Y19_N7
\comb_3|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(15));

-- Location: LCCOMB_X2_Y19_N28
\comb_3|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~9_combout\ = (\comb_3|count\(23) & (\comb_3|count\(20) & (\comb_3|count\(19) & \comb_3|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(23),
	datab => \comb_3|count\(20),
	datac => \comb_3|count\(19),
	datad => \comb_3|count\(15),
	combout => \comb_3|Equal0~9_combout\);

-- Location: LCCOMB_X2_Y19_N22
\comb_3|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|count~1_combout\ = (\comb_3|Add0~18_combout\ & (((!\comb_3|Equal0~10_combout\) # (!\comb_3|Equal0~8_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~18_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~8_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~1_combout\);

-- Location: LCFF_X2_Y19_N23
\comb_3|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(9));

-- Location: LCCOMB_X2_Y19_N12
\comb_3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~0_combout\ = (\comb_3|count\(7)) # ((\comb_3|count\(9)) # ((\comb_3|count\(10)) # (\comb_3|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(7),
	datab => \comb_3|count\(9),
	datac => \comb_3|count\(10),
	datad => \comb_3|count\(12),
	combout => \comb_3|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y19_N10
\comb_3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~1_combout\ = (\comb_3|count\(15)) # ((\comb_3|count\(19)) # ((\comb_3|count\(23)) # (\comb_3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(15),
	datab => \comb_3|count\(19),
	datac => \comb_3|count\(23),
	datad => \comb_3|count\(20),
	combout => \comb_3|Equal1~1_combout\);

-- Location: LCCOMB_X4_Y19_N18
\comb_3|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~2_combout\ = (\comb_3|Equal1~0_combout\) # (\comb_3|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Equal1~0_combout\,
	datad => \comb_3|Equal1~1_combout\,
	combout => \comb_3|Equal1~2_combout\);

-- Location: LCCOMB_X3_Y18_N26
\comb_3|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add0~52_combout\ = \comb_3|Add0~51\ $ (!\comb_3|count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|count\(26),
	cin => \comb_3|Add0~51\,
	combout => \comb_3|Add0~52_combout\);

-- Location: LCFF_X3_Y18_N27
\comb_3|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|count\(26));

-- Location: LCCOMB_X2_Y19_N16
\comb_3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~2_combout\ = (!\comb_3|count\(24) & (!\comb_3|count\(25) & !\comb_3|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(24),
	datac => \comb_3|count\(25),
	datad => \comb_3|count\(26),
	combout => \comb_3|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y19_N22
\comb_3|giay0[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay0[2]~1_combout\ = ((!\comb_3|Equal1~2_combout\ & (\comb_3|Equal0~7_combout\ & \comb_3|Equal0~2_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_3|Equal1~2_combout\,
	datac => \comb_3|Equal0~7_combout\,
	datad => \comb_3|Equal0~2_combout\,
	combout => \comb_3|giay0[2]~1_combout\);

-- Location: LCFF_X4_Y19_N29
\comb_3|giay0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay0~0_combout\,
	ena => \comb_3|giay0[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay0\(0));

-- Location: LCCOMB_X4_Y19_N30
\comb_3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add2~0_combout\ = (!\comb_3|giay0\(1) & !\comb_3|giay0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datad => \comb_3|giay0\(0),
	combout => \comb_3|Add2~0_combout\);

-- Location: LCCOMB_X4_Y19_N14
\comb_3|giay0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay0~4_combout\ = (\KEY~combout\(0) & (\comb_3|giay0\(3) $ (((!\comb_3|giay0\(2) & \comb_3|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(2),
	datab => \comb_3|Add2~0_combout\,
	datac => \comb_3|giay0\(3),
	datad => \KEY~combout\(0),
	combout => \comb_3|giay0~4_combout\);

-- Location: LCFF_X4_Y19_N15
\comb_3|giay0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay0~4_combout\,
	ena => \comb_3|giay0[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay0\(3));

-- Location: LCCOMB_X4_Y19_N20
\comb_3|giay0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay0~3_combout\ = (\KEY~combout\(0) & (!\comb_3|giay1[3]~0_combout\ & (\comb_3|giay0\(2) $ (\comb_3|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_3|giay1[3]~0_combout\,
	datac => \comb_3|giay0\(2),
	datad => \comb_3|Add2~0_combout\,
	combout => \comb_3|giay0~3_combout\);

-- Location: LCFF_X4_Y19_N21
\comb_3|giay0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay0~3_combout\,
	ena => \comb_3|giay0[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay0\(2));

-- Location: LCCOMB_X4_Y19_N8
\comb_3|giay1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1[3]~0_combout\ = (!\comb_3|giay0\(1) & (!\comb_3|giay0\(3) & (!\comb_3|giay0\(2) & !\comb_3|giay0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \comb_3|giay1[3]~0_combout\);

-- Location: LCCOMB_X4_Y19_N6
\comb_3|giay0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay0~2_combout\ = (\KEY~combout\(0) & (!\comb_3|giay1[3]~0_combout\ & (\comb_3|giay0\(1) $ (!\comb_3|giay0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_3|giay1[3]~0_combout\,
	datac => \comb_3|giay0\(1),
	datad => \comb_3|giay0\(0),
	combout => \comb_3|giay0~2_combout\);

-- Location: LCFF_X4_Y19_N7
\comb_3|giay0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay0~2_combout\,
	ena => \comb_3|giay0[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay0\(1));

-- Location: LCCOMB_X4_Y19_N0
\dv|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr6~0_combout\ = (\comb_3|giay0\(0) & ((\comb_3|giay0\(3)) # (\comb_3|giay0\(1) $ (\comb_3|giay0\(2))))) # (!\comb_3|giay0\(0) & ((\comb_3|giay0\(1)) # (\comb_3|giay0\(3) $ (\comb_3|giay0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y19_N2
\dv|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr5~0_combout\ = (\comb_3|giay0\(1) & (!\comb_3|giay0\(3) & ((\comb_3|giay0\(0)) # (!\comb_3|giay0\(2))))) # (!\comb_3|giay0\(1) & (\comb_3|giay0\(0) & (\comb_3|giay0\(3) $ (!\comb_3|giay0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y19_N24
\dv|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr4~0_combout\ = (\comb_3|giay0\(1) & (!\comb_3|giay0\(3) & ((\comb_3|giay0\(0))))) # (!\comb_3|giay0\(1) & ((\comb_3|giay0\(2) & (!\comb_3|giay0\(3))) # (!\comb_3|giay0\(2) & ((\comb_3|giay0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y19_N26
\dv|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr3~0_combout\ = (\comb_3|giay0\(1) & ((\comb_3|giay0\(2) & ((\comb_3|giay0\(0)))) # (!\comb_3|giay0\(2) & (\comb_3|giay0\(3) & !\comb_3|giay0\(0))))) # (!\comb_3|giay0\(1) & (!\comb_3|giay0\(3) & (\comb_3|giay0\(2) $ (\comb_3|giay0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y19_N4
\dv|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr2~0_combout\ = (\comb_3|giay0\(3) & (\comb_3|giay0\(2) & ((\comb_3|giay0\(1)) # (!\comb_3|giay0\(0))))) # (!\comb_3|giay0\(3) & (\comb_3|giay0\(1) & (!\comb_3|giay0\(2) & !\comb_3|giay0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y19_N10
\dv|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr1~0_combout\ = (\comb_3|giay0\(1) & ((\comb_3|giay0\(0) & (\comb_3|giay0\(3))) # (!\comb_3|giay0\(0) & ((\comb_3|giay0\(2)))))) # (!\comb_3|giay0\(1) & (\comb_3|giay0\(2) & (\comb_3|giay0\(3) $ (\comb_3|giay0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y19_N16
\dv|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dv|WideOr0~0_combout\ = (\comb_3|giay0\(3) & (\comb_3|giay0\(0) & (\comb_3|giay0\(1) $ (\comb_3|giay0\(2))))) # (!\comb_3|giay0\(3) & (!\comb_3|giay0\(1) & (\comb_3|giay0\(2) $ (\comb_3|giay0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay0\(1),
	datab => \comb_3|giay0\(3),
	datac => \comb_3|giay0\(2),
	datad => \comb_3|giay0\(0),
	combout => \dv|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y19_N14
\comb_3|giay1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1~4_combout\ = (\KEY~combout\(0) & (\comb_3|giay1\(0) $ (!\comb_3|giay1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(0),
	datac => \comb_3|giay1\(1),
	datad => \KEY~combout\(0),
	combout => \comb_3|giay1~4_combout\);

-- Location: LCCOMB_X2_Y19_N30
\comb_3|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~3_combout\ = (\comb_3|Equal1~0_combout\) # ((\comb_3|Equal1~1_combout\) # ((!\comb_3|Equal0~7_combout\) # (!\comb_3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal1~0_combout\,
	datab => \comb_3|Equal1~1_combout\,
	datac => \comb_3|Equal0~2_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Equal1~3_combout\);

-- Location: LCCOMB_X1_Y19_N0
\comb_3|giay1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1[3]~3_combout\ = ((\comb_3|giay1[3]~0_combout\ & !\comb_3|Equal1~3_combout\)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \comb_3|giay1[3]~0_combout\,
	datad => \comb_3|Equal1~3_combout\,
	combout => \comb_3|giay1[3]~3_combout\);

-- Location: LCFF_X1_Y19_N15
\comb_3|giay1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay1~4_combout\,
	ena => \comb_3|giay1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay1\(1));

-- Location: LCCOMB_X1_Y19_N20
\comb_3|giay1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1~5_combout\ = (\KEY~combout\(0) & (!\comb_3|giay1[3]~1_combout\ & (\comb_3|Add1~0_combout\ $ (\comb_3|giay1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_3|Add1~0_combout\,
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1[3]~1_combout\,
	combout => \comb_3|giay1~5_combout\);

-- Location: LCFF_X1_Y19_N21
\comb_3|giay1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay1~5_combout\,
	ena => \comb_3|giay1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay1\(2));

-- Location: LCCOMB_X1_Y19_N2
\comb_3|giay1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1[3]~1_combout\ = (!\comb_3|giay1\(3) & (!\comb_3|giay1\(1) & (!\comb_3|giay1\(2) & !\comb_3|giay1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \comb_3|giay1[3]~1_combout\);

-- Location: LCCOMB_X1_Y19_N12
\comb_3|giay1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1~2_combout\ = (!\comb_3|giay1[3]~1_combout\ & (!\comb_3|giay1\(0) & \KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|giay1[3]~1_combout\,
	datac => \comb_3|giay1\(0),
	datad => \KEY~combout\(0),
	combout => \comb_3|giay1~2_combout\);

-- Location: LCFF_X1_Y19_N13
\comb_3|giay1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay1~2_combout\,
	ena => \comb_3|giay1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay1\(0));

-- Location: LCCOMB_X2_Y19_N0
\comb_3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|Add1~0_combout\ = (!\comb_3|giay1\(1) & !\comb_3|giay1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(0),
	combout => \comb_3|Add1~0_combout\);

-- Location: LCCOMB_X1_Y19_N6
\comb_3|giay1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|giay1~6_combout\ = (\comb_3|giay1\(3) & (\KEY~combout\(0) & ((\comb_3|giay1\(2)) # (!\comb_3|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(2),
	datab => \comb_3|Add1~0_combout\,
	datac => \comb_3|giay1\(3),
	datad => \KEY~combout\(0),
	combout => \comb_3|giay1~6_combout\);

-- Location: LCFF_X1_Y19_N7
\comb_3|giay1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|giay1~6_combout\,
	ena => \comb_3|giay1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|giay1\(3));

-- Location: LCCOMB_X1_Y19_N16
\ch|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr6~0_combout\ = (\comb_3|giay1\(0) & ((\comb_3|giay1\(3)) # (\comb_3|giay1\(1) $ (\comb_3|giay1\(2))))) # (!\comb_3|giay1\(0) & ((\comb_3|giay1\(1)) # (\comb_3|giay1\(3) $ (\comb_3|giay1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y19_N26
\ch|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr5~0_combout\ = (\comb_3|giay1\(1) & (!\comb_3|giay1\(3) & ((\comb_3|giay1\(0)) # (!\comb_3|giay1\(2))))) # (!\comb_3|giay1\(1) & (\comb_3|giay1\(0) & (\comb_3|giay1\(3) $ (!\comb_3|giay1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y19_N4
\ch|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr4~0_combout\ = (\comb_3|giay1\(1) & (!\comb_3|giay1\(3) & ((\comb_3|giay1\(0))))) # (!\comb_3|giay1\(1) & ((\comb_3|giay1\(2) & (!\comb_3|giay1\(3))) # (!\comb_3|giay1\(2) & ((\comb_3|giay1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\ch|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr3~0_combout\ = (\comb_3|giay1\(1) & ((\comb_3|giay1\(2) & ((\comb_3|giay1\(0)))) # (!\comb_3|giay1\(2) & (\comb_3|giay1\(3) & !\comb_3|giay1\(0))))) # (!\comb_3|giay1\(1) & (!\comb_3|giay1\(3) & (\comb_3|giay1\(2) $ (\comb_3|giay1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y19_N24
\ch|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr2~0_combout\ = (\comb_3|giay1\(3) & (\comb_3|giay1\(2) & ((\comb_3|giay1\(1)) # (!\comb_3|giay1\(0))))) # (!\comb_3|giay1\(3) & (\comb_3|giay1\(1) & (!\comb_3|giay1\(2) & !\comb_3|giay1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y19_N18
\ch|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr1~0_combout\ = (\comb_3|giay1\(3) & ((\comb_3|giay1\(0) & (\comb_3|giay1\(1))) # (!\comb_3|giay1\(0) & ((\comb_3|giay1\(2)))))) # (!\comb_3|giay1\(3) & (\comb_3|giay1\(2) & (\comb_3|giay1\(1) $ (\comb_3|giay1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\ch|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ch|WideOr0~0_combout\ = (\comb_3|giay1\(3) & (\comb_3|giay1\(0) & (\comb_3|giay1\(1) $ (\comb_3|giay1\(2))))) # (!\comb_3|giay1\(3) & (!\comb_3|giay1\(1) & (\comb_3|giay1\(2) $ (\comb_3|giay1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|giay1\(3),
	datab => \comb_3|giay1\(1),
	datac => \comb_3|giay1\(2),
	datad => \comb_3|giay1\(0),
	combout => \ch|WideOr0~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y19_N10
\comb_3|red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|red~0_combout\ = (!\comb_3|red~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|red~regout\,
	datad => \KEY~combout\(0),
	combout => \comb_3|red~0_combout\);

-- Location: LCCOMB_X1_Y19_N30
\comb_3|red~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|red~1_combout\ = ((\comb_3|giay1[3]~1_combout\ & (\comb_3|giay1[3]~0_combout\ & !\comb_3|Equal1~3_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_3|giay1[3]~1_combout\,
	datac => \comb_3|giay1[3]~0_combout\,
	datad => \comb_3|Equal1~3_combout\,
	combout => \comb_3|red~1_combout\);

-- Location: LCFF_X1_Y19_N11
\comb_3|red\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|red~0_combout\,
	ena => \comb_3|red~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|red~regout\);

-- Location: LCCOMB_X1_Y19_N28
\comb_3|green~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|green~0_combout\ = (!\KEY~combout\(0)) # (!\comb_3|green~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|green~regout\,
	datad => \KEY~combout\(0),
	combout => \comb_3|green~0_combout\);

-- Location: LCFF_X1_Y19_N29
\comb_3|green\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_3|green~0_combout\,
	ena => \comb_3|red~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|green~regout\);

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
	datain => \dv|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

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
	datain => \dv|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

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
	datain => \dv|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

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
	datain => \dv|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

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
	datain => \dv|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

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
	datain => \dv|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

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
	datain => \dv|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

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
	datain => \ch|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

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
	datain => \ch|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

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
	datain => \ch|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

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
	datain => \ch|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

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
	datain => \ch|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

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
	datain => \ch|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

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
	datain => \ch|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

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
	datain => \comb_3|red~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \comb_3|green~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));
END structure;


