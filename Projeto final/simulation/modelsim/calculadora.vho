-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "06/08/2018 15:31:44"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	s0 : IN std_logic;
	s1 : IN std_logic;
	s : BUFFER std_logic_vector(15 DOWNTO 0);
	cout : OUT std_logic
	);
END calculadora;

-- Design Ports Information
-- s[0]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[8]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[9]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[10]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[11]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[12]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[13]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[14]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[15]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s0	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \somador|cla4_1|carry|c~1_combout\ : std_logic;
SIGNAL \somador|cla4_1|somador1|g~combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|c~3_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~14_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~32_combout\ : std_logic;
SIGNAL \somador|cla4_4|carry|c~1_combout\ : std_logic;
SIGNAL \somador|cla4_4|carry|c~2_combout\ : std_logic;
SIGNAL \somador|v1|cout~5_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \s0~combout\ : std_logic;
SIGNAL \multiplexador1|y[0]~0_combout\ : std_logic;
SIGNAL \multiplexador1|y[1]~1_combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|c[2]~0_combout\ : std_logic;
SIGNAL \somador|cla4_1|somador1|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[1]~2_combout\ : std_logic;
SIGNAL \somador|cla4_1|somador2|p~combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|c~2_combout\ : std_logic;
SIGNAL \multiplexador1|y[2]~3_combout\ : std_logic;
SIGNAL \multiplexador1|y[2]~4_combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|c[4]~4_combout\ : std_logic;
SIGNAL \multiplexador0|y[3]~0_combout\ : std_logic;
SIGNAL \multiplexador1|y[3]~5_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador0|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[4]~6_combout\ : std_logic;
SIGNAL \somador|cla4_1|somador0|g~combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|gg~1_combout\ : std_logic;
SIGNAL \somador|cla4_1|somador2|g~combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|cout~0_combout\ : std_logic;
SIGNAL \somador|cla4_1|carry|gg~0_combout\ : std_logic;
SIGNAL \multiplexador1|y[4]~7_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador1|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[5]~8_combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|c[2]~0_combout\ : std_logic;
SIGNAL \multiplexador1|y[5]~9_combout\ : std_logic;
SIGNAL \multiplexador1|y[6]~10_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador2|p~combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|c~1_combout\ : std_logic;
SIGNAL \multiplexador1|y[6]~11_combout\ : std_logic;
SIGNAL \multiplexador1|y[6]~12_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~19_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~13_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~15_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~16_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador3|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~17_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador1|g~combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|c~2_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~18_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador0|g~combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~20_combout\ : std_logic;
SIGNAL \multiplexador1|y[7]~21_combout\ : std_logic;
SIGNAL \somador|cla4_3|somador0|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[8]~22_combout\ : std_logic;
SIGNAL \somador|v1|c[2]~0_combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|pg~0_combout\ : std_logic;
SIGNAL \somador|cla4_2|somador2|g~combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|cout~0_combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|gg~0_combout\ : std_logic;
SIGNAL \somador|cla4_2|carry|gg~1_combout\ : std_logic;
SIGNAL \somador|v1|c[2]~1_combout\ : std_logic;
SIGNAL \multiplexador1|y[8]~23_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|c[2]~0_combout\ : std_logic;
SIGNAL \somador|cla4_3|somador1|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[9]~24_combout\ : std_logic;
SIGNAL \multiplexador1|y[9]~25_combout\ : std_logic;
SIGNAL \multiplexador1|y[10]~26_combout\ : std_logic;
SIGNAL \somador|cla4_3|somador2|p~combout\ : std_logic;
SIGNAL \somador|cla4_3|somador0|g~combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|c~1_combout\ : std_logic;
SIGNAL \multiplexador1|y[10]~27_combout\ : std_logic;
SIGNAL \multiplexador1|y[10]~28_combout\ : std_logic;
SIGNAL \somador|cla4_3|somador1|g~combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~29_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~30_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~31_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|pg~0_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|c~2_combout\ : std_logic;
SIGNAL \somador|cla4_3|somador3|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~37_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~33_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~34_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~35_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~36_combout\ : std_logic;
SIGNAL \multiplexador1|y[11]~38_combout\ : std_logic;
SIGNAL \somador|cla4_4|somador0|p~combout\ : std_logic;
SIGNAL \somador|cla4_3|somador2|g~combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|cout~0_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|gg~0_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|pg~1_combout\ : std_logic;
SIGNAL \somador|v1|c[3]~2_combout\ : std_logic;
SIGNAL \somador|v1|c[3]~3_combout\ : std_logic;
SIGNAL \multiplexador1|y[12]~39_combout\ : std_logic;
SIGNAL \multiplexador1|y[12]~40_combout\ : std_logic;
SIGNAL \multiplexador1|y[13]~41_combout\ : std_logic;
SIGNAL \somador|cla4_4|somador1|p~combout\ : std_logic;
SIGNAL \somador|cla4_4|carry|c[2]~0_combout\ : std_logic;
SIGNAL \multiplexador1|y[13]~42_combout\ : std_logic;
SIGNAL \somador|cla4_4|somador2|p~combout\ : std_logic;
SIGNAL \multiplexador1|y[14]~43_combout\ : std_logic;
SIGNAL \multiplexador1|y[14]~44_combout\ : std_logic;
SIGNAL \multiplexador1|y[14]~45_combout\ : std_logic;
SIGNAL \multiplexador0|y[15]~1_combout\ : std_logic;
SIGNAL \somador|cla4_4|somador0|g~combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|gg~1_combout\ : std_logic;
SIGNAL \multiplexador1|y[15]~46_combout\ : std_logic;
SIGNAL \multiplexador1|y[15]~47_combout\ : std_logic;
SIGNAL \multiplexador1|y[15]~48_combout\ : std_logic;
SIGNAL \somador|cla4_4|somador1|g~combout\ : std_logic;
SIGNAL \somador|v1|cout~4_combout\ : std_logic;
SIGNAL \somador|v1|cout~6_combout\ : std_logic;
SIGNAL \somador|cla4_3|carry|pg~2_combout\ : std_logic;
SIGNAL \somador|v1|cout~1_combout\ : std_logic;
SIGNAL \somador|v1|cout~2_combout\ : std_logic;
SIGNAL \somador|v1|cout~0_combout\ : std_logic;
SIGNAL \somador|v1|cout~3_combout\ : std_logic;
SIGNAL \somador|v1|cout~7_combout\ : std_logic;
SIGNAL \somador|v1|c\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \acumulador|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_clk <= clk;
ww_s0 <= s0;
ww_s1 <= s1;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X18_Y9_N16
\somador|cla4_1|carry|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|c~1_combout\ = (\somador|cla4_1|somador0|g~combout\ & ((\acumulador|q\(1)) # (\a~combout\(1) $ (\s0~combout\)))) # (!\somador|cla4_1|somador0|g~combout\ & (\acumulador|q\(1) & (\a~combout\(1) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \somador|cla4_1|somador0|g~combout\,
	datac => \s0~combout\,
	datad => \acumulador|q\(1),
	combout => \somador|cla4_1|carry|c~1_combout\);

-- Location: LCCOMB_X18_Y9_N20
\somador|cla4_1|somador1|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|somador1|g~combout\ = (\acumulador|q\(1) & (\a~combout\(1) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \s0~combout\,
	datad => \acumulador|q\(1),
	combout => \somador|cla4_1|somador1|g~combout\);

-- Location: LCCOMB_X18_Y9_N6
\somador|cla4_1|carry|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|c~3_combout\ = (\somador|cla4_1|somador1|g~combout\ & ((\acumulador|q\(2)) # (\a~combout\(2) $ (\s0~combout\)))) # (!\somador|cla4_1|somador1|g~combout\ & (\acumulador|q\(2) & (\a~combout\(2) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|somador1|g~combout\,
	datab => \acumulador|q\(2),
	datac => \a~combout\(2),
	datad => \s0~combout\,
	combout => \somador|cla4_1|carry|c~3_combout\);

-- Location: LCCOMB_X10_Y10_N4
\multiplexador1|y[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~14_combout\ = (\acumulador|q\(5) & (\a~combout\(5) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \s0~combout\,
	datad => \acumulador|q\(5),
	combout => \multiplexador1|y[7]~14_combout\);

-- Location: LCCOMB_X18_Y11_N16
\multiplexador1|y[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~32_combout\ = (\s1~combout\ & (\a~combout\(11) $ (\acumulador|q\(11) $ (!\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \a~combout\(11),
	datac => \acumulador|q\(11),
	datad => \s0~combout\,
	combout => \multiplexador1|y[11]~32_combout\);

-- Location: LCCOMB_X14_Y11_N12
\somador|cla4_4|carry|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|carry|c~1_combout\ = (\acumulador|q\(13) & ((\somador|cla4_4|somador0|g~combout\) # (\a~combout\(13) $ (\s0~combout\)))) # (!\acumulador|q\(13) & (\somador|cla4_4|somador0|g~combout\ & (\a~combout\(13) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(13),
	datab => \somador|cla4_4|somador0|g~combout\,
	datac => \a~combout\(13),
	datad => \s0~combout\,
	combout => \somador|cla4_4|carry|c~1_combout\);

-- Location: LCCOMB_X14_Y11_N20
\somador|cla4_4|carry|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|carry|c~2_combout\ = (\acumulador|q\(14) & ((\somador|cla4_4|somador1|g~combout\) # (\s0~combout\ $ (\a~combout\(14))))) # (!\acumulador|q\(14) & (\somador|cla4_4|somador1|g~combout\ & (\s0~combout\ $ (\a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~combout\,
	datab => \acumulador|q\(14),
	datac => \a~combout\(14),
	datad => \somador|cla4_4|somador1|g~combout\,
	combout => \somador|cla4_4|carry|c~2_combout\);

-- Location: LCCOMB_X14_Y11_N4
\somador|v1|cout~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~5_combout\ = (\acumulador|q\(14) & (\a~combout\(14) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acumulador|q\(14),
	datac => \a~combout\(14),
	datad => \s0~combout\,
	combout => \somador|v1|cout~5_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCFF_X15_Y11_N1
\acumulador|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s1~I\ : cycloneii_io
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
	padio => ww_s1,
	combout => \s1~combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s0~I\ : cycloneii_io
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
	padio => ww_s0,
	combout => \s0~combout\);

-- Location: LCCOMB_X18_Y9_N8
\multiplexador1|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[0]~0_combout\ = \a~combout\(0) $ (((\s1~combout\ & (\acumulador|q\(0))) # (!\s1~combout\ & ((\s0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(0),
	datab => \s1~combout\,
	datac => \a~combout\(0),
	datad => \s0~combout\,
	combout => \multiplexador1|y[0]~0_combout\);

-- Location: LCCOMB_X18_Y9_N18
\multiplexador1|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[1]~1_combout\ = (!\s1~combout\ & (\a~combout\(1) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \s1~combout\,
	datad => \s0~combout\,
	combout => \multiplexador1|y[1]~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\somador|cla4_1|carry|c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|c[2]~0_combout\ = (\a~combout\(0) & (\acumulador|q\(0))) # (!\a~combout\(0) & ((\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(0),
	datab => \a~combout\(0),
	datad => \s0~combout\,
	combout => \somador|cla4_1|carry|c[2]~0_combout\);

-- Location: LCFF_X17_Y11_N9
\acumulador|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(1));

-- Location: LCCOMB_X17_Y11_N26
\somador|cla4_1|somador1|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|somador1|p~combout\ = \a~combout\(1) $ (\s0~combout\ $ (\acumulador|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \s0~combout\,
	datac => \acumulador|q\(1),
	combout => \somador|cla4_1|somador1|p~combout\);

-- Location: LCCOMB_X18_Y9_N30
\multiplexador1|y[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[1]~2_combout\ = (\multiplexador1|y[1]~1_combout\) # ((\s1~combout\ & (\somador|cla4_1|carry|c[2]~0_combout\ $ (\somador|cla4_1|somador1|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[1]~1_combout\,
	datab => \s1~combout\,
	datac => \somador|cla4_1|carry|c[2]~0_combout\,
	datad => \somador|cla4_1|somador1|p~combout\,
	combout => \multiplexador1|y[1]~2_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCFF_X18_Y9_N19
\acumulador|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[2]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(2));

-- Location: LCCOMB_X18_Y9_N26
\somador|cla4_1|somador2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|somador2|p~combout\ = \s0~combout\ $ (\a~combout\(2) $ (\acumulador|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(2),
	datad => \acumulador|q\(2),
	combout => \somador|cla4_1|somador2|p~combout\);

-- Location: LCCOMB_X17_Y11_N12
\somador|cla4_1|carry|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|c~2_combout\ = (\s0~combout\ & (\somador|cla4_1|somador1|p~combout\ & (\a~combout\(0) $ (!\acumulador|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \s0~combout\,
	datac => \acumulador|q\(0),
	datad => \somador|cla4_1|somador1|p~combout\,
	combout => \somador|cla4_1|carry|c~2_combout\);

-- Location: LCCOMB_X18_Y9_N12
\multiplexador1|y[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[2]~3_combout\ = (\s1~combout\ & (\somador|cla4_1|somador2|p~combout\ $ (((\somador|cla4_1|carry|c~1_combout\) # (\somador|cla4_1|carry|c~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|carry|c~1_combout\,
	datab => \somador|cla4_1|somador2|p~combout\,
	datac => \somador|cla4_1|carry|c~2_combout\,
	datad => \s1~combout\,
	combout => \multiplexador1|y[2]~3_combout\);

-- Location: LCCOMB_X18_Y9_N14
\multiplexador1|y[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[2]~4_combout\ = (\multiplexador1|y[2]~3_combout\) # ((!\s1~combout\ & (\a~combout\(2) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[2]~3_combout\,
	datab => \s1~combout\,
	datac => \a~combout\(2),
	datad => \s0~combout\,
	combout => \multiplexador1|y[2]~4_combout\);

-- Location: LCCOMB_X18_Y9_N24
\somador|cla4_1|carry|c[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|c[4]~4_combout\ = (\somador|cla4_1|carry|c~3_combout\) # ((\somador|cla4_1|somador1|p~combout\ & (\somador|cla4_1|carry|c[2]~0_combout\ & \somador|cla4_1|somador2|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|carry|c~3_combout\,
	datab => \somador|cla4_1|somador1|p~combout\,
	datac => \somador|cla4_1|carry|c[2]~0_combout\,
	datad => \somador|cla4_1|somador2|p~combout\,
	combout => \somador|cla4_1|carry|c[4]~4_combout\);

-- Location: LCFF_X18_Y9_N11
\acumulador|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(3));

-- Location: LCCOMB_X18_Y9_N0
\multiplexador0|y[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador0|y[3]~0_combout\ = \a~combout\(3) $ (\s0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datad => \s0~combout\,
	combout => \multiplexador0|y[3]~0_combout\);

-- Location: LCCOMB_X18_Y9_N10
\multiplexador1|y[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[3]~5_combout\ = \multiplexador0|y[3]~0_combout\ $ (((\s1~combout\ & (\somador|cla4_1|carry|c[4]~4_combout\ $ (\acumulador|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|carry|c[4]~4_combout\,
	datab => \s1~combout\,
	datac => \acumulador|q\(3),
	datad => \multiplexador0|y[3]~0_combout\,
	combout => \multiplexador1|y[3]~5_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCFF_X10_Y10_N3
\acumulador|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(4));

-- Location: LCCOMB_X10_Y10_N12
\somador|cla4_2|somador0|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador0|p~combout\ = \a~combout\(4) $ (\s0~combout\ $ (\acumulador|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \s0~combout\,
	datad => \acumulador|q\(4),
	combout => \somador|cla4_2|somador0|p~combout\);

-- Location: LCCOMB_X10_Y10_N16
\multiplexador1|y[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[4]~6_combout\ = (!\s1~combout\ & (\s0~combout\ $ (\a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \s0~combout\,
	datad => \a~combout\(4),
	combout => \multiplexador1|y[4]~6_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X15_Y11_N0
\somador|cla4_1|somador0|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|somador0|g~combout\ = (\acumulador|q\(0) & (\a~combout\(0) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \acumulador|q\(0),
	datad => \s0~combout\,
	combout => \somador|cla4_1|somador0|g~combout\);

-- Location: LCCOMB_X15_Y11_N18
\somador|cla4_1|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|gg~1_combout\ = (\acumulador|q\(1) & ((\somador|cla4_1|somador0|g~combout\) # (\s0~combout\ $ (\a~combout\(1))))) # (!\acumulador|q\(1) & (\somador|cla4_1|somador0|g~combout\ & (\s0~combout\ $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(1),
	datab => \s0~combout\,
	datac => \a~combout\(1),
	datad => \somador|cla4_1|somador0|g~combout\,
	combout => \somador|cla4_1|carry|gg~1_combout\);

-- Location: LCCOMB_X18_Y9_N2
\somador|cla4_1|somador2|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|somador2|g~combout\ = (\acumulador|q\(2) & (\s0~combout\ $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(2),
	datad => \acumulador|q\(2),
	combout => \somador|cla4_1|somador2|g~combout\);

-- Location: LCCOMB_X18_Y9_N28
\somador|cla4_1|carry|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|cout~0_combout\ = (\acumulador|q\(3) & ((\somador|cla4_1|somador2|g~combout\) # (\a~combout\(3) $ (\s0~combout\)))) # (!\acumulador|q\(3) & (\somador|cla4_1|somador2|g~combout\ & (\a~combout\(3) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \s0~combout\,
	datac => \acumulador|q\(3),
	datad => \somador|cla4_1|somador2|g~combout\,
	combout => \somador|cla4_1|carry|cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N22
\somador|cla4_1|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_1|carry|gg~0_combout\ = (\somador|cla4_1|somador2|p~combout\ & (\a~combout\(3) $ (\s0~combout\ $ (\acumulador|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \s0~combout\,
	datac => \acumulador|q\(3),
	datad => \somador|cla4_1|somador2|p~combout\,
	combout => \somador|cla4_1|carry|gg~0_combout\);

-- Location: LCCOMB_X15_Y11_N20
\somador|v1|c[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|c\(1) = (\somador|cla4_1|carry|cout~0_combout\) # ((\somador|cla4_1|carry|gg~0_combout\ & ((\somador|cla4_1|carry|c~2_combout\) # (\somador|cla4_1|carry|gg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|carry|c~2_combout\,
	datab => \somador|cla4_1|carry|gg~1_combout\,
	datac => \somador|cla4_1|carry|cout~0_combout\,
	datad => \somador|cla4_1|carry|gg~0_combout\,
	combout => \somador|v1|c\(1));

-- Location: LCCOMB_X10_Y10_N14
\multiplexador1|y[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[4]~7_combout\ = (\multiplexador1|y[4]~6_combout\) # ((\s1~combout\ & (\somador|cla4_2|somador0|p~combout\ $ (\somador|v1|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \somador|cla4_2|somador0|p~combout\,
	datac => \multiplexador1|y[4]~6_combout\,
	datad => \somador|v1|c\(1),
	combout => \multiplexador1|y[4]~7_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCFF_X10_Y10_N17
\acumulador|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[5]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(5));

-- Location: LCCOMB_X10_Y10_N0
\somador|cla4_2|somador1|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador1|p~combout\ = \a~combout\(5) $ (\s0~combout\ $ (\acumulador|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \s0~combout\,
	datad => \acumulador|q\(5),
	combout => \somador|cla4_2|somador1|p~combout\);

-- Location: LCCOMB_X10_Y10_N2
\multiplexador1|y[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[5]~8_combout\ = (!\s1~combout\ & (\s0~combout\ $ (\a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \s0~combout\,
	datad => \a~combout\(5),
	combout => \multiplexador1|y[5]~8_combout\);

-- Location: LCCOMB_X10_Y10_N10
\somador|cla4_2|carry|c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|c[2]~0_combout\ = (\acumulador|q\(4) & ((\somador|v1|c\(1)) # (\a~combout\(4) $ (\s0~combout\)))) # (!\acumulador|q\(4) & (\somador|v1|c\(1) & (\a~combout\(4) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \acumulador|q\(4),
	datac => \s0~combout\,
	datad => \somador|v1|c\(1),
	combout => \somador|cla4_2|carry|c[2]~0_combout\);

-- Location: LCCOMB_X10_Y10_N20
\multiplexador1|y[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[5]~9_combout\ = (\multiplexador1|y[5]~8_combout\) # ((\s1~combout\ & (\somador|cla4_2|somador1|p~combout\ $ (\somador|cla4_2|carry|c[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \somador|cla4_2|somador1|p~combout\,
	datac => \multiplexador1|y[5]~8_combout\,
	datad => \somador|cla4_2|carry|c[2]~0_combout\,
	combout => \multiplexador1|y[5]~9_combout\);

-- Location: LCCOMB_X18_Y9_N22
\multiplexador1|y[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[6]~10_combout\ = (!\s1~combout\ & (\a~combout\(6) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \s1~combout\,
	datac => \s0~combout\,
	combout => \multiplexador1|y[6]~10_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCFF_X9_Y10_N1
\acumulador|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[6]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(6));

-- Location: LCCOMB_X9_Y10_N2
\somador|cla4_2|somador2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador2|p~combout\ = \s0~combout\ $ (\a~combout\(6) $ (\acumulador|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(6),
	datad => \acumulador|q\(6),
	combout => \somador|cla4_2|somador2|p~combout\);

-- Location: LCCOMB_X10_Y10_N8
\somador|cla4_2|carry|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|c~1_combout\ = (\somador|cla4_2|somador0|g~combout\ & ((\acumulador|q\(5)) # (\a~combout\(5) $ (\s0~combout\)))) # (!\somador|cla4_2|somador0|g~combout\ & (\acumulador|q\(5) & (\a~combout\(5) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador0|g~combout\,
	datab => \a~combout\(5),
	datac => \s0~combout\,
	datad => \acumulador|q\(5),
	combout => \somador|cla4_2|carry|c~1_combout\);

-- Location: LCCOMB_X10_Y10_N18
\multiplexador1|y[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[6]~11_combout\ = (!\somador|cla4_2|carry|c~1_combout\ & (((!\somador|v1|c\(1)) # (!\somador|cla4_2|somador1|p~combout\)) # (!\somador|cla4_2|somador0|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador0|p~combout\,
	datab => \somador|cla4_2|somador1|p~combout\,
	datac => \somador|cla4_2|carry|c~1_combout\,
	datad => \somador|v1|c\(1),
	combout => \multiplexador1|y[6]~11_combout\);

-- Location: LCCOMB_X9_Y10_N4
\multiplexador1|y[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[6]~12_combout\ = (\multiplexador1|y[6]~10_combout\) # ((\s1~combout\ & (\somador|cla4_2|somador2|p~combout\ $ (!\multiplexador1|y[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[6]~10_combout\,
	datab => \somador|cla4_2|somador2|p~combout\,
	datac => \s1~combout\,
	datad => \multiplexador1|y[6]~11_combout\,
	combout => \multiplexador1|y[6]~12_combout\);

-- Location: LCCOMB_X10_Y10_N26
\multiplexador1|y[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~19_combout\ = (!\somador|cla4_2|somador3|p~combout\ & (\somador|cla4_2|somador1|p~combout\ & (\somador|cla4_2|somador2|p~combout\ & \s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador3|p~combout\,
	datab => \somador|cla4_2|somador1|p~combout\,
	datac => \somador|cla4_2|somador2|p~combout\,
	datad => \s1~combout\,
	combout => \multiplexador1|y[7]~19_combout\);

-- Location: LCCOMB_X9_Y10_N18
\multiplexador1|y[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~13_combout\ = (\s1~combout\ & (((\somador|cla4_2|somador1|p~combout\ & \somador|cla4_2|somador2|p~combout\)))) # (!\s1~combout\ & (\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \somador|cla4_2|somador1|p~combout\,
	datac => \s1~combout\,
	datad => \somador|cla4_2|somador2|p~combout\,
	combout => \multiplexador1|y[7]~13_combout\);

-- Location: LCCOMB_X9_Y10_N6
\multiplexador1|y[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~15_combout\ = \s0~combout\ $ (((\a~combout\(6) & \s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \s1~combout\,
	datad => \s0~combout\,
	combout => \multiplexador1|y[7]~15_combout\);

-- Location: LCCOMB_X9_Y10_N12
\multiplexador1|y[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~16_combout\ = (\multiplexador1|y[7]~14_combout\ & ((\multiplexador1|y[7]~15_combout\) # ((\s1~combout\ & \acumulador|q\(6))))) # (!\multiplexador1|y[7]~14_combout\ & (\multiplexador1|y[7]~15_combout\ & ((\acumulador|q\(6)) # 
-- (!\s1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[7]~14_combout\,
	datab => \multiplexador1|y[7]~15_combout\,
	datac => \s1~combout\,
	datad => \acumulador|q\(6),
	combout => \multiplexador1|y[7]~16_combout\);

-- Location: LCFF_X9_Y10_N7
\acumulador|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[7]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(7));

-- Location: LCCOMB_X9_Y10_N8
\somador|cla4_2|somador3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador3|p~combout\ = \a~combout\(7) $ (\s0~combout\ $ (\acumulador|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \s0~combout\,
	datad => \acumulador|q\(7),
	combout => \somador|cla4_2|somador3|p~combout\);

-- Location: LCCOMB_X10_Y10_N30
\multiplexador1|y[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~17_combout\ = (\s1~combout\ & ((\multiplexador1|y[7]~16_combout\ & ((!\somador|cla4_2|somador3|p~combout\))) # (!\multiplexador1|y[7]~16_combout\ & (!\multiplexador1|y[7]~13_combout\ & \somador|cla4_2|somador3|p~combout\)))) # 
-- (!\s1~combout\ & (\multiplexador1|y[7]~13_combout\ $ ((\multiplexador1|y[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \multiplexador1|y[7]~13_combout\,
	datac => \multiplexador1|y[7]~16_combout\,
	datad => \somador|cla4_2|somador3|p~combout\,
	combout => \multiplexador1|y[7]~17_combout\);

-- Location: LCCOMB_X10_Y10_N24
\somador|cla4_2|somador1|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador1|g~combout\ = (\acumulador|q\(5) & (\a~combout\(5) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datac => \s0~combout\,
	datad => \acumulador|q\(5),
	combout => \somador|cla4_2|somador1|g~combout\);

-- Location: LCCOMB_X9_Y10_N22
\somador|cla4_2|carry|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|c~2_combout\ = (\acumulador|q\(6) & ((\somador|cla4_2|somador1|g~combout\) # (\a~combout\(6) $ (\s0~combout\)))) # (!\acumulador|q\(6) & (\somador|cla4_2|somador1|g~combout\ & (\a~combout\(6) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(6),
	datab => \a~combout\(6),
	datac => \s0~combout\,
	datad => \somador|cla4_2|somador1|g~combout\,
	combout => \somador|cla4_2|carry|c~2_combout\);

-- Location: LCCOMB_X9_Y10_N16
\multiplexador1|y[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~18_combout\ = (\somador|cla4_2|somador3|p~combout\ & (\s1~combout\ & !\somador|cla4_2|carry|c~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador3|p~combout\,
	datab => \s1~combout\,
	datad => \somador|cla4_2|carry|c~2_combout\,
	combout => \multiplexador1|y[7]~18_combout\);

-- Location: LCCOMB_X10_Y10_N22
\somador|cla4_2|somador0|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador0|g~combout\ = (\acumulador|q\(4) & (\a~combout\(4) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \s0~combout\,
	datad => \acumulador|q\(4),
	combout => \somador|cla4_2|somador0|g~combout\);

-- Location: LCCOMB_X10_Y10_N28
\multiplexador1|y[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~20_combout\ = (!\somador|cla4_2|somador0|g~combout\ & ((!\somador|v1|c\(1)) # (!\somador|cla4_2|somador0|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador0|p~combout\,
	datac => \somador|cla4_2|somador0|g~combout\,
	datad => \somador|v1|c\(1),
	combout => \multiplexador1|y[7]~20_combout\);

-- Location: LCCOMB_X9_Y10_N26
\multiplexador1|y[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[7]~21_combout\ = (\multiplexador1|y[7]~17_combout\) # ((\multiplexador1|y[7]~20_combout\ & ((\multiplexador1|y[7]~18_combout\))) # (!\multiplexador1|y[7]~20_combout\ & (\multiplexador1|y[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[7]~19_combout\,
	datab => \multiplexador1|y[7]~17_combout\,
	datac => \multiplexador1|y[7]~18_combout\,
	datad => \multiplexador1|y[7]~20_combout\,
	combout => \multiplexador1|y[7]~21_combout\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
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
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LCFF_X9_Y10_N17
\acumulador|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[8]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(8));

-- Location: LCCOMB_X17_Y11_N24
\somador|cla4_3|somador0|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador0|p~combout\ = \s0~combout\ $ (\a~combout\(8) $ (\acumulador|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(8),
	datad => \acumulador|q\(8),
	combout => \somador|cla4_3|somador0|p~combout\);

-- Location: LCCOMB_X9_Y10_N0
\multiplexador1|y[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[8]~22_combout\ = (!\s1~combout\ & (\a~combout\(8) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \s1~combout\,
	datad => \s0~combout\,
	combout => \multiplexador1|y[8]~22_combout\);

-- Location: LCCOMB_X17_Y11_N2
\somador|v1|c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|c[2]~0_combout\ = (\somador|cla4_1|carry|gg~0_combout\ & ((\somador|cla4_1|carry|gg~1_combout\) # (\somador|cla4_1|carry|c~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somador|cla4_1|carry|gg~0_combout\,
	datac => \somador|cla4_1|carry|gg~1_combout\,
	datad => \somador|cla4_1|carry|c~2_combout\,
	combout => \somador|v1|c[2]~0_combout\);

-- Location: LCCOMB_X15_Y11_N6
\somador|cla4_2|carry|pg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|pg~0_combout\ = (\somador|cla4_2|somador0|p~combout\ & (\somador|cla4_2|somador1|p~combout\ & (\somador|cla4_2|somador3|p~combout\ & \somador|cla4_2|somador2|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador0|p~combout\,
	datab => \somador|cla4_2|somador1|p~combout\,
	datac => \somador|cla4_2|somador3|p~combout\,
	datad => \somador|cla4_2|somador2|p~combout\,
	combout => \somador|cla4_2|carry|pg~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X9_Y10_N28
\somador|cla4_2|somador2|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|somador2|g~combout\ = (\acumulador|q\(6) & (\s0~combout\ $ (\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(6),
	datad => \acumulador|q\(6),
	combout => \somador|cla4_2|somador2|g~combout\);

-- Location: LCCOMB_X9_Y10_N14
\somador|cla4_2|carry|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|cout~0_combout\ = (\acumulador|q\(7) & ((\somador|cla4_2|somador2|g~combout\) # (\s0~combout\ $ (\a~combout\(7))))) # (!\acumulador|q\(7) & (\somador|cla4_2|somador2|g~combout\ & (\s0~combout\ $ (\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(7),
	datab => \s0~combout\,
	datac => \a~combout\(7),
	datad => \somador|cla4_2|somador2|g~combout\,
	combout => \somador|cla4_2|carry|cout~0_combout\);

-- Location: LCCOMB_X10_Y10_N6
\somador|cla4_2|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|gg~0_combout\ = (\acumulador|q\(5) & ((\somador|cla4_2|somador0|g~combout\) # (\s0~combout\ $ (\a~combout\(5))))) # (!\acumulador|q\(5) & (\somador|cla4_2|somador0|g~combout\ & (\s0~combout\ $ (\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~combout\,
	datab => \a~combout\(5),
	datac => \acumulador|q\(5),
	datad => \somador|cla4_2|somador0|g~combout\,
	combout => \somador|cla4_2|carry|gg~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\somador|cla4_2|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_2|carry|gg~1_combout\ = (\somador|cla4_2|carry|cout~0_combout\) # ((\somador|cla4_2|somador2|p~combout\ & (\somador|cla4_2|somador3|p~combout\ & \somador|cla4_2|carry|gg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|somador2|p~combout\,
	datab => \somador|cla4_2|somador3|p~combout\,
	datac => \somador|cla4_2|carry|cout~0_combout\,
	datad => \somador|cla4_2|carry|gg~0_combout\,
	combout => \somador|cla4_2|carry|gg~1_combout\);

-- Location: LCCOMB_X17_Y11_N20
\somador|v1|c[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|c[2]~1_combout\ = (\somador|cla4_2|carry|gg~1_combout\) # ((\somador|cla4_2|carry|pg~0_combout\ & ((\somador|cla4_1|carry|cout~0_combout\) # (\somador|v1|c[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_1|carry|cout~0_combout\,
	datab => \somador|v1|c[2]~0_combout\,
	datac => \somador|cla4_2|carry|pg~0_combout\,
	datad => \somador|cla4_2|carry|gg~1_combout\,
	combout => \somador|v1|c[2]~1_combout\);

-- Location: LCCOMB_X9_Y10_N24
\multiplexador1|y[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[8]~23_combout\ = (\multiplexador1|y[8]~22_combout\) # ((\s1~combout\ & (\somador|cla4_3|somador0|p~combout\ $ (\somador|v1|c[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador0|p~combout\,
	datab => \multiplexador1|y[8]~22_combout\,
	datac => \s1~combout\,
	datad => \somador|v1|c[2]~1_combout\,
	combout => \multiplexador1|y[8]~23_combout\);

-- Location: LCCOMB_X17_Y11_N10
\somador|cla4_3|carry|c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|c[2]~0_combout\ = (\acumulador|q\(8) & ((\somador|v1|c[2]~1_combout\) # (\a~combout\(8) $ (\s0~combout\)))) # (!\acumulador|q\(8) & (\somador|v1|c[2]~1_combout\ & (\a~combout\(8) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(8),
	datab => \a~combout\(8),
	datac => \somador|v1|c[2]~1_combout\,
	datad => \s0~combout\,
	combout => \somador|cla4_3|carry|c[2]~0_combout\);

-- Location: LCFF_X17_Y11_N31
\acumulador|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(9));

-- Location: LCCOMB_X17_Y11_N0
\somador|cla4_3|somador1|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador1|p~combout\ = \a~combout\(9) $ (\acumulador|q\(9) $ (\s0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(9),
	datab => \acumulador|q\(9),
	datad => \s0~combout\,
	combout => \somador|cla4_3|somador1|p~combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
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
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LCCOMB_X18_Y11_N24
\multiplexador1|y[9]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[9]~24_combout\ = (!\s1~combout\ & (\a~combout\(9) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datac => \a~combout\(9),
	datad => \s0~combout\,
	combout => \multiplexador1|y[9]~24_combout\);

-- Location: LCCOMB_X17_Y11_N30
\multiplexador1|y[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[9]~25_combout\ = (\multiplexador1|y[9]~24_combout\) # ((\s1~combout\ & (\somador|cla4_3|carry|c[2]~0_combout\ $ (\somador|cla4_3|somador1|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|carry|c[2]~0_combout\,
	datab => \s1~combout\,
	datac => \somador|cla4_3|somador1|p~combout\,
	datad => \multiplexador1|y[9]~24_combout\,
	combout => \multiplexador1|y[9]~25_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
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
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X18_Y11_N10
\multiplexador1|y[10]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[10]~26_combout\ = (!\s1~combout\ & (\a~combout\(10) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datac => \a~combout\(10),
	datad => \s0~combout\,
	combout => \multiplexador1|y[10]~26_combout\);

-- Location: LCFF_X17_Y11_N15
\acumulador|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(10));

-- Location: LCCOMB_X17_Y11_N8
\somador|cla4_3|somador2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador2|p~combout\ = \a~combout\(10) $ (\acumulador|q\(10) $ (\s0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datab => \acumulador|q\(10),
	datad => \s0~combout\,
	combout => \somador|cla4_3|somador2|p~combout\);

-- Location: LCCOMB_X9_Y10_N10
\somador|cla4_3|somador0|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador0|g~combout\ = (\acumulador|q\(8) & (\s0~combout\ $ (\a~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(8),
	datad => \acumulador|q\(8),
	combout => \somador|cla4_3|somador0|g~combout\);

-- Location: LCCOMB_X18_Y11_N28
\somador|cla4_3|carry|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|c~1_combout\ = (\acumulador|q\(9) & ((\somador|cla4_3|somador0|g~combout\) # (\a~combout\(9) $ (\s0~combout\)))) # (!\acumulador|q\(9) & (\somador|cla4_3|somador0|g~combout\ & (\a~combout\(9) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(9),
	datab => \a~combout\(9),
	datac => \somador|cla4_3|somador0|g~combout\,
	datad => \s0~combout\,
	combout => \somador|cla4_3|carry|c~1_combout\);

-- Location: LCCOMB_X17_Y11_N28
\multiplexador1|y[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[10]~27_combout\ = (!\somador|cla4_3|carry|c~1_combout\ & (((!\somador|cla4_3|somador1|p~combout\) # (!\somador|cla4_3|somador0|p~combout\)) # (!\somador|v1|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|c[2]~1_combout\,
	datab => \somador|cla4_3|somador0|p~combout\,
	datac => \somador|cla4_3|somador1|p~combout\,
	datad => \somador|cla4_3|carry|c~1_combout\,
	combout => \multiplexador1|y[10]~27_combout\);

-- Location: LCCOMB_X17_Y11_N14
\multiplexador1|y[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[10]~28_combout\ = (\multiplexador1|y[10]~26_combout\) # ((\s1~combout\ & (\somador|cla4_3|somador2|p~combout\ $ (!\multiplexador1|y[10]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \multiplexador1|y[10]~26_combout\,
	datac => \somador|cla4_3|somador2|p~combout\,
	datad => \multiplexador1|y[10]~27_combout\,
	combout => \multiplexador1|y[10]~28_combout\);

-- Location: LCCOMB_X18_Y11_N0
\somador|cla4_3|somador1|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador1|g~combout\ = (\acumulador|q\(9) & (\a~combout\(9) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(9),
	datac => \acumulador|q\(9),
	datad => \s0~combout\,
	combout => \somador|cla4_3|somador1|g~combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
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
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCFF_X17_Y11_N1
\acumulador|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \multiplexador1|y[11]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(11));

-- Location: LCCOMB_X18_Y11_N6
\multiplexador1|y[11]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~29_combout\ = \a~combout\(11) $ (((\acumulador|q\(11) & \s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(11),
	datac => \acumulador|q\(11),
	datad => \s1~combout\,
	combout => \multiplexador1|y[11]~29_combout\);

-- Location: LCCOMB_X18_Y11_N26
\multiplexador1|y[11]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~30_combout\ = (\acumulador|q\(10) & ((\somador|cla4_3|somador1|g~combout\) # (\a~combout\(10) $ (\multiplexador1|y[11]~29_combout\)))) # (!\acumulador|q\(10) & (\somador|cla4_3|somador1|g~combout\ & (\a~combout\(10) $ 
-- (\multiplexador1|y[11]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(10),
	datab => \somador|cla4_3|somador1|g~combout\,
	datac => \a~combout\(10),
	datad => \multiplexador1|y[11]~29_combout\,
	combout => \multiplexador1|y[11]~30_combout\);

-- Location: LCCOMB_X18_Y11_N4
\multiplexador1|y[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~31_combout\ = (\s1~combout\ & (\multiplexador1|y[11]~30_combout\ & (\s0~combout\ $ (!\multiplexador1|y[11]~29_combout\)))) # (!\s1~combout\ & ((\s0~combout\ $ (\multiplexador1|y[11]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \multiplexador1|y[11]~30_combout\,
	datac => \s0~combout\,
	datad => \multiplexador1|y[11]~29_combout\,
	combout => \multiplexador1|y[11]~31_combout\);

-- Location: LCCOMB_X18_Y11_N22
\somador|cla4_3|carry|pg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|pg~0_combout\ = (\somador|cla4_3|somador1|p~combout\ & (\acumulador|q\(10) $ (\a~combout\(10) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(10),
	datab => \a~combout\(10),
	datac => \somador|cla4_3|somador1|p~combout\,
	datad => \s0~combout\,
	combout => \somador|cla4_3|carry|pg~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\somador|cla4_3|carry|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|c~2_combout\ = (\acumulador|q\(10) & ((\somador|cla4_3|somador1|g~combout\) # (\a~combout\(10) $ (\s0~combout\)))) # (!\acumulador|q\(10) & (\somador|cla4_3|somador1|g~combout\ & (\a~combout\(10) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(10),
	datab => \somador|cla4_3|somador1|g~combout\,
	datac => \a~combout\(10),
	datad => \s0~combout\,
	combout => \somador|cla4_3|carry|c~2_combout\);

-- Location: LCCOMB_X17_Y11_N16
\somador|cla4_3|somador3|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador3|p~combout\ = \s0~combout\ $ (\a~combout\(11) $ (\acumulador|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \a~combout\(11),
	datad => \acumulador|q\(11),
	combout => \somador|cla4_3|somador3|p~combout\);

-- Location: LCCOMB_X18_Y11_N8
\multiplexador1|y[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~37_combout\ = (\s1~combout\ & (!\somador|cla4_3|carry|c~2_combout\ & \somador|cla4_3|somador3|p~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datac => \somador|cla4_3|carry|c~2_combout\,
	datad => \somador|cla4_3|somador3|p~combout\,
	combout => \multiplexador1|y[11]~37_combout\);

-- Location: LCCOMB_X18_Y11_N18
\multiplexador1|y[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~33_combout\ = (\multiplexador1|y[11]~32_combout\ & ((\somador|cla4_3|carry|pg~0_combout\) # ((!\somador|cla4_3|somador0|g~combout\ & !\somador|cla4_3|somador0|p~combout\)))) # (!\multiplexador1|y[11]~32_combout\ & 
-- (((!\somador|cla4_3|somador0|g~combout\ & !\somador|cla4_3|somador0|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[11]~32_combout\,
	datab => \somador|cla4_3|carry|pg~0_combout\,
	datac => \somador|cla4_3|somador0|g~combout\,
	datad => \somador|cla4_3|somador0|p~combout\,
	combout => \multiplexador1|y[11]~33_combout\);

-- Location: LCCOMB_X9_Y10_N20
\multiplexador1|y[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~34_combout\ = (\s1~combout\ & (\somador|cla4_3|somador0|g~combout\ $ (\somador|cla4_3|somador3|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador0|g~combout\,
	datac => \s1~combout\,
	datad => \somador|cla4_3|somador3|p~combout\,
	combout => \multiplexador1|y[11]~34_combout\);

-- Location: LCCOMB_X18_Y11_N30
\multiplexador1|y[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~35_combout\ = (\multiplexador1|y[11]~34_combout\ & ((\somador|cla4_3|somador0|g~combout\ & ((\somador|cla4_3|carry|pg~0_combout\))) # (!\somador|cla4_3|somador0|g~combout\ & (!\somador|cla4_3|carry|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|carry|c~2_combout\,
	datab => \somador|cla4_3|carry|pg~0_combout\,
	datac => \somador|cla4_3|somador0|g~combout\,
	datad => \multiplexador1|y[11]~34_combout\,
	combout => \multiplexador1|y[11]~35_combout\);

-- Location: LCCOMB_X17_Y11_N18
\multiplexador1|y[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~36_combout\ = (\somador|cla4_3|somador0|p~combout\ & ((\somador|v1|c[2]~1_combout\ & (\multiplexador1|y[11]~33_combout\)) # (!\somador|v1|c[2]~1_combout\ & ((\multiplexador1|y[11]~35_combout\))))) # 
-- (!\somador|cla4_3|somador0|p~combout\ & (((\multiplexador1|y[11]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador0|p~combout\,
	datab => \multiplexador1|y[11]~33_combout\,
	datac => \somador|v1|c[2]~1_combout\,
	datad => \multiplexador1|y[11]~35_combout\,
	combout => \multiplexador1|y[11]~36_combout\);

-- Location: LCCOMB_X17_Y11_N4
\multiplexador1|y[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[11]~38_combout\ = (\multiplexador1|y[11]~31_combout\) # ((\multiplexador1|y[11]~36_combout\) # ((!\somador|cla4_3|carry|pg~0_combout\ & \multiplexador1|y[11]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador1|y[11]~31_combout\,
	datab => \somador|cla4_3|carry|pg~0_combout\,
	datac => \multiplexador1|y[11]~37_combout\,
	datad => \multiplexador1|y[11]~36_combout\,
	combout => \multiplexador1|y[11]~38_combout\);

-- Location: LCFF_X15_Y11_N27
\acumulador|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(12));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
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
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LCCOMB_X14_Y11_N10
\somador|cla4_4|somador0|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|somador0|p~combout\ = \s0~combout\ $ (\acumulador|q\(12) $ (\a~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \acumulador|q\(12),
	datad => \a~combout\(12),
	combout => \somador|cla4_4|somador0|p~combout\);

-- Location: LCCOMB_X18_Y11_N2
\somador|cla4_3|somador2|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|somador2|g~combout\ = (\acumulador|q\(10) & (\a~combout\(10) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acumulador|q\(10),
	datac => \a~combout\(10),
	datad => \s0~combout\,
	combout => \somador|cla4_3|somador2|g~combout\);

-- Location: LCCOMB_X18_Y11_N12
\somador|cla4_3|carry|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|cout~0_combout\ = (\acumulador|q\(11) & ((\somador|cla4_3|somador2|g~combout\) # (\s0~combout\ $ (\a~combout\(11))))) # (!\acumulador|q\(11) & (\somador|cla4_3|somador2|g~combout\ & (\s0~combout\ $ (\a~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s0~combout\,
	datab => \a~combout\(11),
	datac => \acumulador|q\(11),
	datad => \somador|cla4_3|somador2|g~combout\,
	combout => \somador|cla4_3|carry|cout~0_combout\);

-- Location: LCCOMB_X18_Y11_N14
\somador|cla4_3|carry|gg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|gg~0_combout\ = (\somador|cla4_3|somador2|p~combout\ & ((\somador|cla4_3|somador1|g~combout\) # ((\somador|cla4_3|somador1|p~combout\ & \somador|cla4_3|somador0|g~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador2|p~combout\,
	datab => \somador|cla4_3|somador1|p~combout\,
	datac => \somador|cla4_3|somador0|g~combout\,
	datad => \somador|cla4_3|somador1|g~combout\,
	combout => \somador|cla4_3|carry|gg~0_combout\);

-- Location: LCCOMB_X17_Y11_N6
\somador|cla4_3|carry|pg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|pg~1_combout\ = (\somador|cla4_3|somador3|p~combout\ & (\somador|cla4_3|somador1|p~combout\ & (\somador|cla4_3|somador2|p~combout\ & \somador|cla4_3|somador0|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador3|p~combout\,
	datab => \somador|cla4_3|somador1|p~combout\,
	datac => \somador|cla4_3|somador2|p~combout\,
	datad => \somador|cla4_3|somador0|p~combout\,
	combout => \somador|cla4_3|carry|pg~1_combout\);

-- Location: LCCOMB_X15_Y11_N12
\somador|v1|c[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|c[3]~2_combout\ = (\somador|cla4_3|carry|pg~1_combout\ & ((\somador|cla4_2|carry|gg~1_combout\) # ((\somador|v1|c\(1) & \somador|cla4_2|carry|pg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|c\(1),
	datab => \somador|cla4_3|carry|pg~1_combout\,
	datac => \somador|cla4_2|carry|gg~1_combout\,
	datad => \somador|cla4_2|carry|pg~0_combout\,
	combout => \somador|v1|c[3]~2_combout\);

-- Location: LCCOMB_X15_Y11_N14
\somador|v1|c[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|c[3]~3_combout\ = (\somador|cla4_3|carry|cout~0_combout\) # ((\somador|v1|c[3]~2_combout\) # ((\somador|cla4_3|somador3|p~combout\ & \somador|cla4_3|carry|gg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_3|somador3|p~combout\,
	datab => \somador|cla4_3|carry|cout~0_combout\,
	datac => \somador|cla4_3|carry|gg~0_combout\,
	datad => \somador|v1|c[3]~2_combout\,
	combout => \somador|v1|c[3]~3_combout\);

-- Location: LCCOMB_X14_Y11_N24
\multiplexador1|y[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[12]~39_combout\ = (!\s1~combout\ & (\s0~combout\ $ (\a~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \s0~combout\,
	datad => \a~combout\(12),
	combout => \multiplexador1|y[12]~39_combout\);

-- Location: LCCOMB_X15_Y11_N26
\multiplexador1|y[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[12]~40_combout\ = (\multiplexador1|y[12]~39_combout\) # ((\s1~combout\ & (\somador|cla4_4|somador0|p~combout\ $ (\somador|v1|c[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_4|somador0|p~combout\,
	datab => \s1~combout\,
	datac => \somador|v1|c[3]~3_combout\,
	datad => \multiplexador1|y[12]~39_combout\,
	combout => \multiplexador1|y[12]~40_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
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
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LCCOMB_X14_Y11_N28
\multiplexador1|y[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[13]~41_combout\ = (!\s1~combout\ & (\a~combout\(13) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \a~combout\(13),
	datad => \s0~combout\,
	combout => \multiplexador1|y[13]~41_combout\);

-- Location: LCFF_X15_Y11_N17
\acumulador|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(13));

-- Location: LCCOMB_X14_Y11_N6
\somador|cla4_4|somador1|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|somador1|p~combout\ = \a~combout\(13) $ (\acumulador|q\(13) $ (\s0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(13),
	datac => \acumulador|q\(13),
	datad => \s0~combout\,
	combout => \somador|cla4_4|somador1|p~combout\);

-- Location: LCCOMB_X15_Y11_N2
\somador|cla4_4|carry|c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|carry|c[2]~0_combout\ = (\acumulador|q\(12) & ((\somador|v1|c[3]~3_combout\) # (\a~combout\(12) $ (\s0~combout\)))) # (!\acumulador|q\(12) & (\somador|v1|c[3]~3_combout\ & (\a~combout\(12) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \acumulador|q\(12),
	datac => \somador|v1|c[3]~3_combout\,
	datad => \s0~combout\,
	combout => \somador|cla4_4|carry|c[2]~0_combout\);

-- Location: LCCOMB_X15_Y11_N16
\multiplexador1|y[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[13]~42_combout\ = (\multiplexador1|y[13]~41_combout\) # ((\s1~combout\ & (\somador|cla4_4|somador1|p~combout\ $ (\somador|cla4_4|carry|c[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \multiplexador1|y[13]~41_combout\,
	datac => \somador|cla4_4|somador1|p~combout\,
	datad => \somador|cla4_4|carry|c[2]~0_combout\,
	combout => \multiplexador1|y[13]~42_combout\);

-- Location: LCFF_X15_Y11_N31
\acumulador|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(14));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
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
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCCOMB_X14_Y11_N14
\somador|cla4_4|somador2|p\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|somador2|p~combout\ = \acumulador|q\(14) $ (\a~combout\(14) $ (\s0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acumulador|q\(14),
	datac => \a~combout\(14),
	datad => \s0~combout\,
	combout => \somador|cla4_4|somador2|p~combout\);

-- Location: LCCOMB_X14_Y11_N0
\multiplexador1|y[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[14]~43_combout\ = (!\s1~combout\ & (\a~combout\(14) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datac => \a~combout\(14),
	datad => \s0~combout\,
	combout => \multiplexador1|y[14]~43_combout\);

-- Location: LCCOMB_X15_Y11_N28
\multiplexador1|y[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[14]~44_combout\ = (!\somador|cla4_4|carry|c~1_combout\ & (((!\somador|cla4_4|somador0|p~combout\) # (!\somador|v1|c[3]~3_combout\)) # (!\somador|cla4_4|somador1|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_4|carry|c~1_combout\,
	datab => \somador|cla4_4|somador1|p~combout\,
	datac => \somador|v1|c[3]~3_combout\,
	datad => \somador|cla4_4|somador0|p~combout\,
	combout => \multiplexador1|y[14]~44_combout\);

-- Location: LCCOMB_X15_Y11_N30
\multiplexador1|y[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[14]~45_combout\ = (\multiplexador1|y[14]~43_combout\) # ((\s1~combout\ & (\somador|cla4_4|somador2|p~combout\ $ (!\multiplexador1|y[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_4|somador2|p~combout\,
	datab => \s1~combout\,
	datac => \multiplexador1|y[14]~43_combout\,
	datad => \multiplexador1|y[14]~44_combout\,
	combout => \multiplexador1|y[14]~45_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
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
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LCCOMB_X14_Y11_N8
\multiplexador0|y[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador0|y[15]~1_combout\ = \a~combout\(15) $ (\s0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(15),
	datad => \s0~combout\,
	combout => \multiplexador0|y[15]~1_combout\);

-- Location: LCFF_X15_Y11_N25
\acumulador|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \multiplexador1|y[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acumulador|q\(15));

-- Location: LCCOMB_X14_Y11_N18
\somador|cla4_4|somador0|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|somador0|g~combout\ = (\acumulador|q\(12) & (\s0~combout\ $ (\a~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \acumulador|q\(12),
	datad => \a~combout\(12),
	combout => \somador|cla4_4|somador0|g~combout\);

-- Location: LCCOMB_X15_Y11_N10
\somador|cla4_3|carry|gg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|gg~1_combout\ = (\somador|cla4_3|carry|cout~0_combout\) # ((\somador|cla4_3|somador3|p~combout\ & \somador|cla4_3|carry|gg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somador|cla4_3|carry|cout~0_combout\,
	datac => \somador|cla4_3|somador3|p~combout\,
	datad => \somador|cla4_3|carry|gg~0_combout\,
	combout => \somador|cla4_3|carry|gg~1_combout\);

-- Location: LCCOMB_X15_Y11_N4
\multiplexador1|y[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[15]~46_combout\ = (!\somador|cla4_4|somador0|g~combout\ & (((!\somador|v1|c[3]~2_combout\ & !\somador|cla4_3|carry|gg~1_combout\)) # (!\somador|cla4_4|somador0|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|c[3]~2_combout\,
	datab => \somador|cla4_4|somador0|g~combout\,
	datac => \somador|cla4_4|somador0|p~combout\,
	datad => \somador|cla4_3|carry|gg~1_combout\,
	combout => \multiplexador1|y[15]~46_combout\);

-- Location: LCCOMB_X15_Y11_N22
\multiplexador1|y[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[15]~47_combout\ = (\somador|cla4_4|carry|c~2_combout\) # ((\somador|cla4_4|somador1|p~combout\ & (!\multiplexador1|y[15]~46_combout\ & \somador|cla4_4|somador2|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_4|carry|c~2_combout\,
	datab => \somador|cla4_4|somador1|p~combout\,
	datac => \multiplexador1|y[15]~46_combout\,
	datad => \somador|cla4_4|somador2|p~combout\,
	combout => \multiplexador1|y[15]~47_combout\);

-- Location: LCCOMB_X15_Y11_N24
\multiplexador1|y[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \multiplexador1|y[15]~48_combout\ = \multiplexador0|y[15]~1_combout\ $ (((\s1~combout\ & (\acumulador|q\(15) $ (\multiplexador1|y[15]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador0|y[15]~1_combout\,
	datab => \s1~combout\,
	datac => \acumulador|q\(15),
	datad => \multiplexador1|y[15]~47_combout\,
	combout => \multiplexador1|y[15]~48_combout\);

-- Location: LCCOMB_X14_Y11_N26
\somador|cla4_4|somador1|g\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_4|somador1|g~combout\ = (\acumulador|q\(13) & (\a~combout\(13) $ (\s0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(13),
	datac => \acumulador|q\(13),
	datad => \s0~combout\,
	combout => \somador|cla4_4|somador1|g~combout\);

-- Location: LCCOMB_X14_Y11_N2
\somador|v1|cout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~4_combout\ = (\somador|cla4_4|somador2|p~combout\ & (\somador|cla4_4|somador1|g~combout\ & (\multiplexador0|y[15]~1_combout\ $ (\acumulador|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador0|y[15]~1_combout\,
	datab => \acumulador|q\(15),
	datac => \somador|cla4_4|somador2|p~combout\,
	datad => \somador|cla4_4|somador1|g~combout\,
	combout => \somador|v1|cout~4_combout\);

-- Location: LCCOMB_X14_Y11_N22
\somador|v1|cout~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~6_combout\ = (\somador|v1|cout~4_combout\) # ((\somador|v1|cout~5_combout\ & ((\acumulador|q\(15)) # (\multiplexador0|y[15]~1_combout\))) # (!\somador|v1|cout~5_combout\ & (\acumulador|q\(15) & \multiplexador0|y[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|cout~5_combout\,
	datab => \acumulador|q\(15),
	datac => \multiplexador0|y[15]~1_combout\,
	datad => \somador|v1|cout~4_combout\,
	combout => \somador|v1|cout~6_combout\);

-- Location: LCCOMB_X9_Y10_N30
\somador|cla4_3|carry|pg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|cla4_3|carry|pg~2_combout\ = (\somador|cla4_3|somador3|p~combout\ & (\a~combout\(8) $ (\acumulador|q\(8) $ (\s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \acumulador|q\(8),
	datac => \s0~combout\,
	datad => \somador|cla4_3|somador3|p~combout\,
	combout => \somador|cla4_3|carry|pg~2_combout\);

-- Location: LCCOMB_X14_Y10_N0
\somador|v1|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~1_combout\ = (\somador|v1|cout~0_combout\ & (\somador|cla4_4|somador0|p~combout\ & (\somador|cla4_3|carry|pg~2_combout\ & \somador|cla4_3|carry|pg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|cout~0_combout\,
	datab => \somador|cla4_4|somador0|p~combout\,
	datac => \somador|cla4_3|carry|pg~2_combout\,
	datad => \somador|cla4_3|carry|pg~0_combout\,
	combout => \somador|v1|cout~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\somador|v1|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~2_combout\ = (\somador|v1|cout~1_combout\ & ((\somador|cla4_2|carry|gg~1_combout\) # ((\somador|cla4_2|carry|pg~0_combout\ & \somador|v1|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_2|carry|gg~1_combout\,
	datab => \somador|cla4_2|carry|pg~0_combout\,
	datac => \somador|v1|c\(1),
	datad => \somador|v1|cout~1_combout\,
	combout => \somador|v1|cout~2_combout\);

-- Location: LCCOMB_X14_Y11_N30
\somador|v1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~0_combout\ = (\somador|cla4_4|somador2|p~combout\ & (\somador|cla4_4|somador1|p~combout\ & (\multiplexador0|y[15]~1_combout\ $ (\acumulador|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplexador0|y[15]~1_combout\,
	datab => \acumulador|q\(15),
	datac => \somador|cla4_4|somador2|p~combout\,
	datad => \somador|cla4_4|somador1|p~combout\,
	combout => \somador|v1|cout~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\somador|v1|cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~3_combout\ = (\somador|v1|cout~0_combout\ & ((\somador|cla4_4|somador0|g~combout\) # ((\somador|cla4_4|somador0|p~combout\ & \somador|cla4_3|carry|gg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|cla4_4|somador0|p~combout\,
	datab => \somador|v1|cout~0_combout\,
	datac => \somador|cla4_3|carry|gg~1_combout\,
	datad => \somador|cla4_4|somador0|g~combout\,
	combout => \somador|v1|cout~3_combout\);

-- Location: LCCOMB_X14_Y10_N12
\somador|v1|cout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|v1|cout~7_combout\ = (\somador|v1|cout~6_combout\) # ((\somador|v1|cout~2_combout\) # (\somador|v1|cout~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|v1|cout~6_combout\,
	datab => \somador|v1|cout~2_combout\,
	datac => \somador|v1|cout~3_combout\,
	combout => \somador|v1|cout~7_combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[8]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(8));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[9]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(9));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[10]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(10));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[11]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(11));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[12]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(12));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[13]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(13));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[14]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(14));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[15]~I\ : cycloneii_io
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
	datain => \multiplexador1|y[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(15));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
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
	datain => \somador|v1|cout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);
END structure;


