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

-- DATE "11/09/2020 14:27:13"

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
-- pronto	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \bo1|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \bo1|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc1|Selector0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state.S0~regout\ : std_logic;
SIGNAL \bc1|Selector1~0_combout\ : std_logic;
SIGNAL \bc1|state.S1~regout\ : std_logic;
SIGNAL \bo1|muxA|y[0]~2_combout\ : std_logic;
SIGNAL \bc1|state.S2~regout\ : std_logic;
SIGNAL \bc1|state~15_combout\ : std_logic;
SIGNAL \bc1|state.S3~regout\ : std_logic;
SIGNAL \bc1|CP~combout\ : std_logic;
SIGNAL \bo1|muxA|y[1]~3_combout\ : std_logic;
SIGNAL \bo1|muxA|y[2]~0_combout\ : std_logic;
SIGNAL \bo1|muxA|y[2]~1_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \bo1|muxA|y[3]~4_combout\ : std_logic;
SIGNAL \bc1|state~14_combout\ : std_logic;
SIGNAL \bc1|state.S4~regout\ : std_logic;
SIGNAL \bo1|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regP|q[0]~4_combout\ : std_logic;
SIGNAL \bo1|regmult|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regP|q[0]~5\ : std_logic;
SIGNAL \bo1|regP|q[1]~6_combout\ : std_logic;
SIGNAL \bo1|regmult|q[1]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|regP|q[1]~7\ : std_logic;
SIGNAL \bo1|regP|q[2]~8_combout\ : std_logic;
SIGNAL \bo1|regmult|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo1|regP|q[2]~9\ : std_logic;
SIGNAL \bo1|regP|q[3]~10_combout\ : std_logic;
SIGNAL \bo1|regmult|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo1|regmult|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regB|q\ : std_logic_vector(3 DOWNTO 0);
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

-- Location: LCFF_X2_Y35_N3
\bo1|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[1]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(1));

-- Location: LCCOMB_X2_Y35_N20
\bo1|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~0_combout\ = (!\bo1|regB|q\(0) & (!\bo1|regB|q\(2) & (!\bo1|regB|q\(3) & !\bo1|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(0),
	datab => \bo1|regB|q\(2),
	datac => \bo1|regB|q\(3),
	datad => \bo1|regB|q\(1),
	combout => \bo1|geraBz|Equal0~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y35_N2
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y35_N22
\bc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~0_combout\ = (!\bc1|state.S4~regout\ & ((\inicio~combout\) # (\bc1|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S4~regout\,
	datab => \inicio~combout\,
	datac => \bc1|state.S0~regout\,
	combout => \bc1|Selector0~0_combout\);

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

-- Location: LCFF_X2_Y35_N23
\bc1|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S0~regout\);

-- Location: LCCOMB_X2_Y35_N26
\bc1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector1~0_combout\ = (\inicio~combout\ & !\bc1|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datad => \bc1|state.S0~regout\,
	combout => \bc1|Selector1~0_combout\);

-- Location: LCFF_X2_Y35_N27
\bc1|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S1~regout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y35_N18
\bo1|muxA|y[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[0]~2_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(0)))) # (!\bc1|state.S1~regout\ & (!\bo1|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|regA|q\(0),
	datad => \entA~combout\(0),
	combout => \bo1|muxA|y[0]~2_combout\);

-- Location: LCFF_X2_Y35_N15
\bc1|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|CP~combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S2~regout\);

-- Location: LCCOMB_X2_Y35_N4
\bc1|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~15_combout\ = (!\bo1|geraBz|Equal0~0_combout\ & (\bc1|state.S2~regout\ & ((\bo1|regA|q\(3)) # (!\bo1|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|geraBz|Equal0~0_combout\,
	datab => \bo1|regA|q\(3),
	datac => \bc1|state.S2~regout\,
	datad => \bo1|geraAz|Equal0~0_combout\,
	combout => \bc1|state~15_combout\);

-- Location: LCFF_X2_Y35_N5
\bc1|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S3~regout\);

-- Location: LCCOMB_X2_Y35_N14
\bc1|CP\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|CP~combout\ = (\bc1|state.S3~regout\) # (\bc1|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S3~regout\,
	datad => \bc1|state.S1~regout\,
	combout => \bc1|CP~combout\);

-- Location: LCFF_X1_Y35_N19
\bo1|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[0]~2_combout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y35_N0
\bo1|muxA|y[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[1]~3_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(1))) # (!\bc1|state.S1~regout\ & ((\bo1|regA|q\(1) $ (!\bo1|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA~combout\(1),
	datab => \bc1|state.S1~regout\,
	datac => \bo1|regA|q\(1),
	datad => \bo1|regA|q\(0),
	combout => \bo1|muxA|y[1]~3_combout\);

-- Location: LCFF_X1_Y35_N1
\bo1|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[1]~3_combout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(1));

-- Location: LCCOMB_X1_Y35_N26
\bo1|muxA|y[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[2]~0_combout\ = (!\bc1|state.S1~regout\ & (\bo1|regA|q\(2) $ (((!\bo1|regA|q\(1) & !\bo1|regA|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(2),
	datab => \bo1|regA|q\(1),
	datac => \bc1|state.S1~regout\,
	datad => \bo1|regA|q\(0),
	combout => \bo1|muxA|y[2]~0_combout\);

-- Location: LCCOMB_X1_Y35_N20
\bo1|muxA|y[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[2]~1_combout\ = (\bo1|muxA|y[2]~0_combout\) # ((\bc1|state.S1~regout\ & \entA~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \entA~combout\(2),
	datad => \bo1|muxA|y[2]~0_combout\,
	combout => \bo1|muxA|y[2]~1_combout\);

-- Location: LCFF_X1_Y35_N21
\bo1|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[2]~1_combout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(2));

-- Location: LCCOMB_X1_Y35_N10
\bo1|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~0_combout\ = (!\bo1|regA|q\(0) & (!\bo1|regA|q\(2) & !\bo1|regA|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(2),
	datad => \bo1|regA|q\(1),
	combout => \bo1|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y35_N16
\bo1|muxA|y[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|muxA|y[3]~4_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(3))) # (!\bc1|state.S1~regout\ & ((\bo1|regA|q\(3) $ (\bo1|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA~combout\(3),
	datab => \bc1|state.S1~regout\,
	datac => \bo1|regA|q\(3),
	datad => \bo1|geraAz|Equal0~0_combout\,
	combout => \bo1|muxA|y[3]~4_combout\);

-- Location: LCFF_X1_Y35_N17
\bo1|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|muxA|y[3]~4_combout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(3));

-- Location: LCCOMB_X2_Y35_N16
\bc1|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~14_combout\ = (\bc1|state.S2~regout\ & ((\bo1|geraBz|Equal0~0_combout\) # ((!\bo1|regA|q\(3) & \bo1|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|geraBz|Equal0~0_combout\,
	datab => \bo1|regA|q\(3),
	datac => \bc1|state.S2~regout\,
	datad => \bo1|geraAz|Equal0~0_combout\,
	combout => \bc1|state~14_combout\);

-- Location: LCFF_X2_Y35_N17
\bc1|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S4~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y35_N24
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

-- Location: LCFF_X2_Y35_N25
\bo1|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[0]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(0));

-- Location: LCCOMB_X1_Y35_N2
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

-- Location: LCFF_X1_Y35_N3
\bo1|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[0]~4_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(0));

-- Location: LCCOMB_X1_Y35_N28
\bo1|regmult|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regmult|q[0]~feeder_combout\ = \bo1|regP|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regP|q\(0),
	combout => \bo1|regmult|q[0]~feeder_combout\);

-- Location: LCFF_X1_Y35_N29
\bo1|regmult|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regmult|q[0]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regmult|q\(0));

-- Location: LCCOMB_X1_Y35_N4
\bo1|regP|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[1]~6_combout\ = (\bo1|regB|q\(1) & ((\bo1|regP|q\(1) & (\bo1|regP|q[0]~5\ & VCC)) # (!\bo1|regP|q\(1) & (!\bo1|regP|q[0]~5\)))) # (!\bo1|regB|q\(1) & ((\bo1|regP|q\(1) & (!\bo1|regP|q[0]~5\)) # (!\bo1|regP|q\(1) & ((\bo1|regP|q[0]~5\) # 
-- (GND)))))
-- \bo1|regP|q[1]~7\ = CARRY((\bo1|regB|q\(1) & (!\bo1|regP|q\(1) & !\bo1|regP|q[0]~5\)) # (!\bo1|regB|q\(1) & ((!\bo1|regP|q[0]~5\) # (!\bo1|regP|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(1),
	datab => \bo1|regP|q\(1),
	datad => VCC,
	cin => \bo1|regP|q[0]~5\,
	combout => \bo1|regP|q[1]~6_combout\,
	cout => \bo1|regP|q[1]~7\);

-- Location: LCFF_X1_Y35_N5
\bo1|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[1]~6_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(1));

-- Location: LCCOMB_X1_Y35_N14
\bo1|regmult|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regmult|q[1]~feeder_combout\ = \bo1|regP|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regP|q\(1),
	combout => \bo1|regmult|q[1]~feeder_combout\);

-- Location: LCFF_X1_Y35_N15
\bo1|regmult|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regmult|q[1]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regmult|q\(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y35_N28
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

-- Location: LCFF_X2_Y35_N29
\bo1|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[2]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(2));

-- Location: LCCOMB_X1_Y35_N6
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

-- Location: LCFF_X1_Y35_N7
\bo1|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[2]~8_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(2));

-- Location: LCCOMB_X1_Y35_N12
\bo1|regmult|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regmult|q[2]~feeder_combout\ = \bo1|regP|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regP|q\(2),
	combout => \bo1|regmult|q[2]~feeder_combout\);

-- Location: LCFF_X1_Y35_N13
\bo1|regmult|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regmult|q[2]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regmult|q\(2));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y35_N30
\bo1|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[3]~feeder_combout\ = \entB~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(3),
	combout => \bo1|regB|q[3]~feeder_combout\);

-- Location: LCFF_X2_Y35_N31
\bo1|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[3]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(3));

-- Location: LCCOMB_X1_Y35_N8
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

-- Location: LCFF_X1_Y35_N9
\bo1|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[3]~10_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(3));

-- Location: LCCOMB_X1_Y35_N22
\bo1|regmult|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regmult|q[3]~feeder_combout\ = \bo1|regP|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regP|q\(3),
	combout => \bo1|regmult|q[3]~feeder_combout\);

-- Location: LCFF_X1_Y35_N23
\bo1|regmult|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regmult|q[3]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regmult|q\(3));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo1|regmult|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo1|regmult|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo1|regmult|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo1|regmult|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));
END structure;


