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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/12/2020 00:10:47"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	inicio : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|muxA|y[2]~1_combout\ : std_logic;
SIGNAL \bo1|muxA|y[2]~2_combout\ : std_logic;
SIGNAL \bo1|muxA|y[0]~3_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc1|Selector0~0_combout\ : std_logic;
SIGNAL \bo1|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|Selector0~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state.S0~regout\ : std_logic;
SIGNAL \bc1|Selector1~0_combout\ : std_logic;
SIGNAL \bc1|state.S1~regout\ : std_logic;
SIGNAL \bc1|state.S2~regout\ : std_logic;
SIGNAL \bc1|state~12_combout\ : std_logic;
SIGNAL \bc1|state.S3~regout\ : std_logic;
SIGNAL \bc1|CA~0_combout\ : std_logic;
SIGNAL \bo1|muxA|y[1]~4_combout\ : std_logic;
SIGNAL \bo1|Subtrator|Add1~0_combout\ : std_logic;
SIGNAL \bo1|muxA|y[3]~0_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|pronto~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \bo1|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regP|q[0]~4_combout\ : std_logic;
SIGNAL \bo1|regP|q[0]~5\ : std_logic;
SIGNAL \bo1|regP|q[1]~6_combout\ : std_logic;
SIGNAL \bo1|regP|q[1]~7\ : std_logic;
SIGNAL \bo1|regP|q[2]~8_combout\ : std_logic;
SIGNAL \bo1|regP|q[2]~9\ : std_logic;
SIGNAL \bo1|regP|q[3]~10_combout\ : std_logic;
SIGNAL \bo1|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regP|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_inicio <= inicio;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X1_Y24_N13
\bo1|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[2]~2_combout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(2));

-- Location: LCCOMB_X1_Y24_N10
\bo1|muxA|y[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[2]~1_combout\ = (!\bc1|state.S1~regout\ & (\bo1|regA|q\(2) $ (((!\bo1|regA|q\(0) & !\bo1|regA|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(1),
	datad => \bo1|regA|q\(2),
	combout => \bo1|muxA|y[2]~1_combout\);

-- Location: LCCOMB_X1_Y24_N12
\bo1|muxA|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[2]~2_combout\ = (\bo1|muxA|y[2]~1_combout\) # ((\entA~combout\(2) & \bc1|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA~combout\(2),
	datac => \bc1|state.S1~regout\,
	datad => \bo1|muxA|y[2]~1_combout\,
	combout => \bo1|muxA|y[2]~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: LCCOMB_X1_Y24_N26
\bo1|muxA|y[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[0]~3_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(0)))) # (!\bc1|state.S1~regout\ & (!\bo1|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|regA|q\(0),
	datad => \entA~combout\(0),
	combout => \bo1|muxA|y[0]~3_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X1_Y24_N14
\bc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~0_combout\ = (!\inicio~combout\ & !\bc1|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inicio~combout\,
	datad => \bc1|state.S0~regout\,
	combout => \bc1|Selector0~0_combout\);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCCOMB_X2_Y24_N30
\bo1|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \bo1|regB|q[1]~feeder_combout\);

-- Location: LCFF_X2_Y24_N31
\bo1|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[1]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(1));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCCOMB_X2_Y24_N0
\bo1|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \bo1|regB|q[2]~feeder_combout\);

-- Location: LCFF_X2_Y24_N1
\bo1|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[2]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(2));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCFF_X2_Y24_N27
\bo1|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(3),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(3));

-- Location: LCCOMB_X2_Y24_N28
\bo1|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~0_combout\ = (!\bo1|regB|q\(0) & (!\bo1|regB|q\(1) & (!\bo1|regB|q\(2) & !\bo1|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(0),
	datab => \bo1|regB|q\(1),
	datac => \bo1|regB|q\(2),
	datad => \bo1|regB|q\(3),
	combout => \bo1|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\bc1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~1_combout\ = (!\bc1|Selector0~0_combout\ & (((!\bo1|geraAz|Equal0~0_combout\ & !\bo1|geraBz|Equal0~0_combout\)) # (!\bc1|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S2~regout\,
	datab => \bo1|geraAz|Equal0~0_combout\,
	datac => \bc1|Selector0~0_combout\,
	datad => \bo1|geraBz|Equal0~0_combout\,
	combout => \bc1|Selector0~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X1_Y24_N1
\bc1|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S0~regout\);

-- Location: LCCOMB_X1_Y24_N24
\bc1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector1~0_combout\ = (\inicio~combout\ & !\bc1|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inicio~combout\,
	datad => \bc1|state.S0~regout\,
	combout => \bc1|Selector1~0_combout\);

-- Location: LCFF_X1_Y24_N25
\bc1|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S1~regout\);

-- Location: LCFF_X1_Y24_N29
\bc1|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|CA~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S2~regout\);

-- Location: LCCOMB_X1_Y24_N30
\bc1|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~12_combout\ = (!\bo1|geraAz|Equal0~0_combout\ & (\bc1|state.S2~regout\ & !\bo1|geraBz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|geraAz|Equal0~0_combout\,
	datac => \bc1|state.S2~regout\,
	datad => \bo1|geraBz|Equal0~0_combout\,
	combout => \bc1|state~12_combout\);

-- Location: LCFF_X1_Y24_N31
\bc1|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S3~regout\);

-- Location: LCCOMB_X1_Y24_N28
\bc1|CA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|CA~0_combout\ = (\bc1|state.S1~regout\) # (\bc1|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S1~regout\,
	datad => \bc1|state.S3~regout\,
	combout => \bc1|CA~0_combout\);

-- Location: LCFF_X1_Y24_N27
\bo1|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[0]~3_combout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(0));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: LCCOMB_X1_Y24_N20
\bo1|muxA|y[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[1]~4_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(1))) # (!\bc1|state.S1~regout\ & ((\bo1|regA|q\(1) $ (!\bo1|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datab => \entA~combout\(1),
	datac => \bo1|regA|q\(1),
	datad => \bo1|regA|q\(0),
	combout => \bo1|muxA|y[1]~4_combout\);

-- Location: LCFF_X1_Y24_N21
\bo1|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[1]~4_combout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(1));

-- Location: LCCOMB_X1_Y24_N16
\bo1|Subtrator|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|Subtrator|Add1~0_combout\ = \bo1|regA|q\(3) $ (((\bo1|regA|q\(2)) # ((\bo1|regA|q\(0)) # (\bo1|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(2),
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(1),
	datad => \bo1|regA|q\(3),
	combout => \bo1|Subtrator|Add1~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\bo1|muxA|y[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[3]~0_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(3))) # (!\bc1|state.S1~regout\ & ((!\bo1|Subtrator|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA~combout\(3),
	datac => \bc1|state.S1~regout\,
	datad => \bo1|Subtrator|Add1~0_combout\,
	combout => \bo1|muxA|y[3]~0_combout\);

-- Location: LCFF_X1_Y24_N19
\bo1|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[3]~0_combout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(3));

-- Location: LCCOMB_X1_Y24_N22
\bo1|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~0_combout\ = (!\bo1|regA|q\(2) & (!\bo1|regA|q\(0) & (!\bo1|regA|q\(1) & !\bo1|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(2),
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(1),
	datad => \bo1|regA|q\(3),
	combout => \bo1|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y24_N26
\bc1|pronto~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|pronto~0_combout\ = (\bc1|state.S2~regout\ & ((\bo1|geraAz|Equal0~0_combout\) # (\bo1|geraBz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|geraAz|Equal0~0_combout\,
	datab => \bc1|state.S2~regout\,
	datad => \bo1|geraBz|Equal0~0_combout\,
	combout => \bc1|pronto~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCCOMB_X2_Y24_N24
\bo1|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \bo1|regB|q[0]~feeder_combout\);

-- Location: LCFF_X2_Y24_N25
\bo1|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[0]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(0));

-- Location: LCCOMB_X1_Y24_N2
\bo1|regP|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[0]~4_combout\ = (\bo1|regP|q\(0) & (\bo1|regB|q\(0) $ (VCC))) # (!\bo1|regP|q\(0) & (\bo1|regB|q\(0) & VCC))
-- \bo1|regP|q[0]~5\ = CARRY((\bo1|regP|q\(0) & \bo1|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(0),
	datab => \bo1|regB|q\(0),
	datad => VCC,
	combout => \bo1|regP|q[0]~4_combout\,
	cout => \bo1|regP|q[0]~5\);

-- Location: LCFF_X1_Y24_N3
\bo1|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[0]~4_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(0));

-- Location: LCCOMB_X1_Y24_N4
\bo1|regP|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[1]~6_combout\ = (\bo1|regP|q\(1) & ((\bo1|regB|q\(1) & (\bo1|regP|q[0]~5\ & VCC)) # (!\bo1|regB|q\(1) & (!\bo1|regP|q[0]~5\)))) # (!\bo1|regP|q\(1) & ((\bo1|regB|q\(1) & (!\bo1|regP|q[0]~5\)) # (!\bo1|regB|q\(1) & ((\bo1|regP|q[0]~5\) # 
-- (GND)))))
-- \bo1|regP|q[1]~7\ = CARRY((\bo1|regP|q\(1) & (!\bo1|regB|q\(1) & !\bo1|regP|q[0]~5\)) # (!\bo1|regP|q\(1) & ((!\bo1|regP|q[0]~5\) # (!\bo1|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(1),
	datab => \bo1|regB|q\(1),
	datad => VCC,
	cin => \bo1|regP|q[0]~5\,
	combout => \bo1|regP|q[1]~6_combout\,
	cout => \bo1|regP|q[1]~7\);

-- Location: LCFF_X1_Y24_N5
\bo1|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[1]~6_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(1));

-- Location: LCCOMB_X1_Y24_N6
\bo1|regP|q[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[2]~8_combout\ = ((\bo1|regP|q\(2) $ (\bo1|regB|q\(2) $ (!\bo1|regP|q[1]~7\)))) # (GND)
-- \bo1|regP|q[2]~9\ = CARRY((\bo1|regP|q\(2) & ((\bo1|regB|q\(2)) # (!\bo1|regP|q[1]~7\))) # (!\bo1|regP|q\(2) & (\bo1|regB|q\(2) & !\bo1|regP|q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(2),
	datab => \bo1|regB|q\(2),
	datad => VCC,
	cin => \bo1|regP|q[1]~7\,
	combout => \bo1|regP|q[2]~8_combout\,
	cout => \bo1|regP|q[2]~9\);

-- Location: LCFF_X1_Y24_N7
\bo1|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[2]~8_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(2));

-- Location: LCCOMB_X1_Y24_N8
\bo1|regP|q[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[3]~10_combout\ = \bo1|regP|q\(3) $ (\bo1|regP|q[2]~9\ $ (\bo1|regB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regP|q\(3),
	datad => \bo1|regB|q\(3),
	cin => \bo1|regP|q[2]~9\,
	combout => \bo1|regP|q[3]~10_combout\);

-- Location: LCFF_X1_Y24_N9
\bo1|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[3]~10_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \bc1|pronto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \bo1|regP|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \bo1|regP|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \bo1|regP|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \bo1|regP|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));
END structure;


