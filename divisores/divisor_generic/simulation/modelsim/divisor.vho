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

-- DATE "12/03/2020 08:41:29"

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

ENTITY 	divisor IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	inicio : IN std_logic;
	ent1 : IN std_logic_vector(3 DOWNTO 0);
	ent2 : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	erro : OUT std_logic;
	quoc : OUT std_logic_vector(3 DOWNTO 0);
	resto : OUT std_logic_vector(3 DOWNTO 0)
	);
END divisor;

-- Design Ports Information
-- pronto	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- erro	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quoc[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent2[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent2[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent2[2]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent2[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent1[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent1[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent1[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ent1[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divisor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_ent1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ent2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_quoc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resto : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|comp|LessThan0~0_combout\ : std_logic;
SIGNAL \bo1|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc1|Selector0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state.S0~regout\ : std_logic;
SIGNAL \bc1|Selector1~0_combout\ : std_logic;
SIGNAL \bc1|state.S1~regout\ : std_logic;
SIGNAL \bo1|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regA|q[0]~5\ : std_logic;
SIGNAL \bo1|regA|q[1]~6_combout\ : std_logic;
SIGNAL \bo1|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \bo1|regA|q[0]~4_combout\ : std_logic;
SIGNAL \bo1|comp|LessThan0~1_combout\ : std_logic;
SIGNAL \bc1|state.S2~regout\ : std_logic;
SIGNAL \bo1|zero|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|state~16_combout\ : std_logic;
SIGNAL \bc1|state~18_combout\ : std_logic;
SIGNAL \bc1|state.S3~regout\ : std_logic;
SIGNAL \bc1|CCONT~combout\ : std_logic;
SIGNAL \bo1|regA|q[1]~7\ : std_logic;
SIGNAL \bo1|regA|q[2]~8_combout\ : std_logic;
SIGNAL \bo1|regA|q[2]~9\ : std_logic;
SIGNAL \bo1|regA|q[3]~10_combout\ : std_logic;
SIGNAL \bo1|comp|LessThan0~2_combout\ : std_logic;
SIGNAL \bc1|state~17_combout\ : std_logic;
SIGNAL \bc1|state.S4~regout\ : std_logic;
SIGNAL \bc1|Selector5~0_combout\ : std_logic;
SIGNAL \bc1|state.errado~regout\ : std_logic;
SIGNAL \bc1|pronto~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \bo1|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \bo1|regquoc|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \bo1|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \bo1|regquoc|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|sum|Add0~0_combout\ : std_logic;
SIGNAL \bo1|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \bo1|regquoc|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo1|regresto|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regresto|q[1]~feeder_combout\ : std_logic;
SIGNAL \bo1|regresto|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|regresto|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regresto|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regcont|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regquoc|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent1~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_inicio <= inicio;
ww_ent1 <= ent1;
ww_ent2 <= ent2;
pronto <= ww_pronto;
erro <= ww_erro;
quoc <= ww_quoc;
resto <= ww_resto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X29_Y35_N10
\bo1|comp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|comp|LessThan0~0_combout\ = (\bo1|regB|q\(3) & (((\bo1|regB|q\(2) & !\bo1|regA|q\(2))) # (!\bo1|regA|q\(3)))) # (!\bo1|regB|q\(3) & (\bo1|regB|q\(2) & (!\bo1|regA|q\(2) & !\bo1|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(2),
	datab => \bo1|regA|q\(2),
	datac => \bo1|regB|q\(3),
	datad => \bo1|regA|q\(3),
	combout => \bo1|comp|LessThan0~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent2[2]~I\ : cycloneii_io
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
	padio => ww_ent2(2),
	combout => \ent2~combout\(2));

-- Location: LCCOMB_X29_Y35_N12
\bo1|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[2]~feeder_combout\ = \ent2~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent2~combout\(2),
	combout => \bo1|regB|q[2]~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y35_N18
\bc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~0_combout\ = (!\bc1|state.S4~regout\ & ((\bc1|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S4~regout\,
	datac => \bc1|state.S0~regout\,
	datad => \inicio~combout\,
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

-- Location: LCFF_X29_Y35_N19
\bc1|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S0~regout\);

-- Location: LCCOMB_X29_Y35_N0
\bc1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector1~0_combout\ = (\inicio~combout\ & ((\bc1|state.errado~regout\) # (!\bc1|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.errado~regout\,
	datab => \bc1|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bc1|Selector1~0_combout\);

-- Location: LCFF_X29_Y35_N1
\bc1|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S1~regout\);

-- Location: LCFF_X29_Y35_N13
\bo1|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[2]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent2[0]~I\ : cycloneii_io
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
	padio => ww_ent2(0),
	combout => \ent2~combout\(0));

-- Location: LCCOMB_X29_Y35_N24
\bo1|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[0]~feeder_combout\ = \ent2~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent2~combout\(0),
	combout => \bo1|regB|q[0]~feeder_combout\);

-- Location: LCFF_X29_Y35_N25
\bo1|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[0]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(0));

-- Location: LCCOMB_X28_Y35_N12
\bo1|regA|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[0]~4_combout\ = (\bo1|regA|q\(0) & ((GND) # (!\bo1|regB|q\(0)))) # (!\bo1|regA|q\(0) & (\bo1|regB|q\(0) $ (GND)))
-- \bo1|regA|q[0]~5\ = CARRY((\bo1|regA|q\(0)) # (!\bo1|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(0),
	datab => \bo1|regB|q\(0),
	datad => VCC,
	combout => \bo1|regA|q[0]~4_combout\,
	cout => \bo1|regA|q[0]~5\);

-- Location: LCCOMB_X28_Y35_N14
\bo1|regA|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[1]~6_combout\ = (\bo1|regB|q\(1) & ((\bo1|regA|q\(1) & (!\bo1|regA|q[0]~5\)) # (!\bo1|regA|q\(1) & ((\bo1|regA|q[0]~5\) # (GND))))) # (!\bo1|regB|q\(1) & ((\bo1|regA|q\(1) & (\bo1|regA|q[0]~5\ & VCC)) # (!\bo1|regA|q\(1) & 
-- (!\bo1|regA|q[0]~5\))))
-- \bo1|regA|q[1]~7\ = CARRY((\bo1|regB|q\(1) & ((!\bo1|regA|q[0]~5\) # (!\bo1|regA|q\(1)))) # (!\bo1|regB|q\(1) & (!\bo1|regA|q\(1) & !\bo1|regA|q[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(1),
	datab => \bo1|regA|q\(1),
	datad => VCC,
	cin => \bo1|regA|q[0]~5\,
	combout => \bo1|regA|q[1]~6_combout\,
	cout => \bo1|regA|q[1]~7\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent1[1]~I\ : cycloneii_io
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
	padio => ww_ent1(1),
	combout => \ent1~combout\(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent2[1]~I\ : cycloneii_io
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
	padio => ww_ent2(1),
	combout => \ent2~combout\(1));

-- Location: LCCOMB_X29_Y35_N2
\bo1|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[1]~feeder_combout\ = \ent2~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent2~combout\(1),
	combout => \bo1|regB|q[1]~feeder_combout\);

-- Location: LCFF_X29_Y35_N3
\bo1|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[1]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent1[0]~I\ : cycloneii_io
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
	padio => ww_ent1(0),
	combout => \ent1~combout\(0));

-- Location: LCFF_X28_Y35_N13
\bo1|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[0]~4_combout\,
	sdata => \ent1~combout\(0),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(0));

-- Location: LCCOMB_X29_Y35_N16
\bo1|comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|comp|LessThan0~1_combout\ = (\bo1|regA|q\(1) & (\bo1|regB|q\(1) & (\bo1|regB|q\(0) & !\bo1|regA|q\(0)))) # (!\bo1|regA|q\(1) & ((\bo1|regB|q\(1)) # ((\bo1|regB|q\(0) & !\bo1|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(1),
	datab => \bo1|regB|q\(1),
	datac => \bo1|regB|q\(0),
	datad => \bo1|regA|q\(0),
	combout => \bo1|comp|LessThan0~1_combout\);

-- Location: LCFF_X29_Y35_N23
\bc1|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bc1|CCONT~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S2~regout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent2[3]~I\ : cycloneii_io
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
	padio => ww_ent2(3),
	combout => \ent2~combout\(3));

-- Location: LCFF_X29_Y35_N21
\bo1|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ent2~combout\(3),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(3));

-- Location: LCCOMB_X29_Y35_N6
\bo1|zero|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|zero|Equal0~0_combout\ = (!\bo1|regB|q\(0) & (!\bo1|regB|q\(1) & (!\bo1|regB|q\(3) & !\bo1|regB|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(0),
	datab => \bo1|regB|q\(1),
	datac => \bo1|regB|q\(3),
	datad => \bo1|regB|q\(2),
	combout => \bo1|zero|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y35_N28
\bc1|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~16_combout\ = (\bc1|state.S2~regout\ & !\bo1|zero|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S2~regout\,
	datad => \bo1|zero|Equal0~0_combout\,
	combout => \bc1|state~16_combout\);

-- Location: LCCOMB_X29_Y35_N14
\bc1|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~18_combout\ = (!\bo1|comp|LessThan0~0_combout\ & (\bc1|state~16_combout\ & ((!\bo1|comp|LessThan0~1_combout\) # (!\bo1|comp|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|comp|LessThan0~0_combout\,
	datab => \bo1|comp|LessThan0~2_combout\,
	datac => \bo1|comp|LessThan0~1_combout\,
	datad => \bc1|state~16_combout\,
	combout => \bc1|state~18_combout\);

-- Location: LCFF_X29_Y35_N15
\bc1|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S3~regout\);

-- Location: LCCOMB_X29_Y35_N8
\bc1|CCONT\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|CCONT~combout\ = (\bc1|state.S3~regout\) # (\bc1|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S3~regout\,
	datad => \bc1|state.S1~regout\,
	combout => \bc1|CCONT~combout\);

-- Location: LCFF_X28_Y35_N15
\bo1|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[1]~6_combout\,
	sdata => \ent1~combout\(1),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(1));

-- Location: LCCOMB_X28_Y35_N16
\bo1|regA|q[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[2]~8_combout\ = ((\bo1|regA|q\(2) $ (\bo1|regB|q\(2) $ (\bo1|regA|q[1]~7\)))) # (GND)
-- \bo1|regA|q[2]~9\ = CARRY((\bo1|regA|q\(2) & ((!\bo1|regA|q[1]~7\) # (!\bo1|regB|q\(2)))) # (!\bo1|regA|q\(2) & (!\bo1|regB|q\(2) & !\bo1|regA|q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(2),
	datab => \bo1|regB|q\(2),
	datad => VCC,
	cin => \bo1|regA|q[1]~7\,
	combout => \bo1|regA|q[2]~8_combout\,
	cout => \bo1|regA|q[2]~9\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent1[2]~I\ : cycloneii_io
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
	padio => ww_ent1(2),
	combout => \ent1~combout\(2));

-- Location: LCFF_X28_Y35_N17
\bo1|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[2]~8_combout\,
	sdata => \ent1~combout\(2),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(2));

-- Location: LCCOMB_X28_Y35_N18
\bo1|regA|q[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[3]~10_combout\ = \bo1|regB|q\(3) $ (\bo1|regA|q[2]~9\ $ (!\bo1|regA|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regB|q\(3),
	datad => \bo1|regA|q\(3),
	cin => \bo1|regA|q[2]~9\,
	combout => \bo1|regA|q[3]~10_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ent1[3]~I\ : cycloneii_io
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
	padio => ww_ent1(3),
	combout => \ent1~combout\(3));

-- Location: LCFF_X28_Y35_N19
\bo1|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[3]~10_combout\,
	sdata => \ent1~combout\(3),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(3));

-- Location: LCCOMB_X29_Y35_N26
\bo1|comp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|comp|LessThan0~2_combout\ = (\bo1|regB|q\(2) & (\bo1|regA|q\(2) & (\bo1|regB|q\(3) $ (!\bo1|regA|q\(3))))) # (!\bo1|regB|q\(2) & (!\bo1|regA|q\(2) & (\bo1|regB|q\(3) $ (!\bo1|regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(2),
	datab => \bo1|regA|q\(2),
	datac => \bo1|regB|q\(3),
	datad => \bo1|regA|q\(3),
	combout => \bo1|comp|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y35_N4
\bc1|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~17_combout\ = (\bc1|state~16_combout\ & ((\bo1|comp|LessThan0~0_combout\) # ((\bo1|comp|LessThan0~2_combout\ & \bo1|comp|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|comp|LessThan0~0_combout\,
	datab => \bo1|comp|LessThan0~2_combout\,
	datac => \bo1|comp|LessThan0~1_combout\,
	datad => \bc1|state~16_combout\,
	combout => \bc1|state~17_combout\);

-- Location: LCFF_X29_Y35_N5
\bc1|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S4~regout\);

-- Location: LCCOMB_X29_Y35_N30
\bc1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector5~0_combout\ = (\bc1|state.S2~regout\ & ((\bo1|zero|Equal0~0_combout\) # ((!\inicio~combout\ & \bc1|state.errado~regout\)))) # (!\bc1|state.S2~regout\ & (!\inicio~combout\ & (\bc1|state.errado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S2~regout\,
	datab => \inicio~combout\,
	datac => \bc1|state.errado~regout\,
	datad => \bo1|zero|Equal0~0_combout\,
	combout => \bc1|Selector5~0_combout\);

-- Location: LCFF_X29_Y35_N31
\bc1|state.errado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.errado~regout\);

-- Location: LCCOMB_X29_Y35_N20
\bc1|pronto\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|pronto~combout\ = (\bc1|state.S4~regout\) # (\bc1|state.errado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S4~regout\,
	datad => \bc1|state.errado~regout\,
	combout => \bc1|pronto~combout\);

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

-- Location: LCCOMB_X28_Y35_N24
\bo1|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[0]~0_combout\ = (!\bc1|state.S1~regout\ & !\bo1|regcont|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S1~regout\,
	datac => \bo1|regcont|q\(0),
	combout => \bo1|mux2|y[0]~0_combout\);

-- Location: LCFF_X28_Y35_N25
\bo1|regcont|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux2|y[0]~0_combout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regcont|q\(0));

-- Location: LCCOMB_X28_Y35_N8
\bo1|regquoc|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regquoc|q[0]~feeder_combout\ = \bo1|regcont|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regcont|q\(0),
	combout => \bo1|regquoc|q[0]~feeder_combout\);

-- Location: LCFF_X28_Y35_N9
\bo1|regquoc|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regquoc|q[0]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regquoc|q\(0));

-- Location: LCCOMB_X28_Y35_N10
\bo1|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[1]~1_combout\ = (!\bc1|state.S1~regout\ & (\bo1|regcont|q\(0) $ (\bo1|regcont|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regcont|q\(0),
	datab => \bc1|state.S1~regout\,
	datac => \bo1|regcont|q\(1),
	combout => \bo1|mux2|y[1]~1_combout\);

-- Location: LCFF_X28_Y35_N11
\bo1|regcont|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux2|y[1]~1_combout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regcont|q\(1));

-- Location: LCFF_X27_Y35_N1
\bo1|regquoc|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|regcont|q\(1),
	sload => VCC,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regquoc|q\(1));

-- Location: LCCOMB_X28_Y35_N20
\bo1|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[2]~2_combout\ = (!\bc1|state.S1~regout\ & (\bo1|regcont|q\(2) $ (((\bo1|regcont|q\(1) & \bo1|regcont|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regcont|q\(1),
	datab => \bc1|state.S1~regout\,
	datac => \bo1|regcont|q\(2),
	datad => \bo1|regcont|q\(0),
	combout => \bo1|mux2|y[2]~2_combout\);

-- Location: LCFF_X28_Y35_N21
\bo1|regcont|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux2|y[2]~2_combout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regcont|q\(2));

-- Location: LCCOMB_X28_Y35_N22
\bo1|regquoc|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regquoc|q[2]~feeder_combout\ = \bo1|regcont|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regcont|q\(2),
	combout => \bo1|regquoc|q[2]~feeder_combout\);

-- Location: LCFF_X28_Y35_N23
\bo1|regquoc|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regquoc|q[2]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regquoc|q\(2));

-- Location: LCCOMB_X28_Y35_N28
\bo1|sum|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|sum|Add0~0_combout\ = \bo1|regcont|q\(3) $ (((\bo1|regcont|q\(2) & (\bo1|regcont|q\(0) & \bo1|regcont|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regcont|q\(2),
	datab => \bo1|regcont|q\(3),
	datac => \bo1|regcont|q\(0),
	datad => \bo1|regcont|q\(1),
	combout => \bo1|sum|Add0~0_combout\);

-- Location: LCCOMB_X28_Y35_N30
\bo1|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[3]~3_combout\ = (!\bc1|state.S1~regout\ & \bo1|sum|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S1~regout\,
	datad => \bo1|sum|Add0~0_combout\,
	combout => \bo1|mux2|y[3]~3_combout\);

-- Location: LCFF_X28_Y35_N31
\bo1|regcont|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux2|y[3]~3_combout\,
	ena => \bc1|CCONT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regcont|q\(3));

-- Location: LCCOMB_X27_Y35_N18
\bo1|regquoc|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regquoc|q[3]~feeder_combout\ = \bo1|regcont|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regcont|q\(3),
	combout => \bo1|regquoc|q[3]~feeder_combout\);

-- Location: LCFF_X27_Y35_N19
\bo1|regquoc|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regquoc|q[3]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regquoc|q\(3));

-- Location: LCCOMB_X28_Y35_N4
\bo1|regresto|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regresto|q[0]~feeder_combout\ = \bo1|regA|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regA|q\(0),
	combout => \bo1|regresto|q[0]~feeder_combout\);

-- Location: LCFF_X28_Y35_N5
\bo1|regresto|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regresto|q[0]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regresto|q\(0));

-- Location: LCCOMB_X28_Y35_N6
\bo1|regresto|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regresto|q[1]~feeder_combout\ = \bo1|regA|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regA|q\(1),
	combout => \bo1|regresto|q[1]~feeder_combout\);

-- Location: LCFF_X28_Y35_N7
\bo1|regresto|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regresto|q[1]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regresto|q\(1));

-- Location: LCCOMB_X28_Y35_N0
\bo1|regresto|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regresto|q[2]~feeder_combout\ = \bo1|regA|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regA|q\(2),
	combout => \bo1|regresto|q[2]~feeder_combout\);

-- Location: LCFF_X28_Y35_N1
\bo1|regresto|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regresto|q[2]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regresto|q\(2));

-- Location: LCCOMB_X28_Y35_N26
\bo1|regresto|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regresto|q[3]~feeder_combout\ = \bo1|regA|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regA|q\(3),
	combout => \bo1|regresto|q[3]~feeder_combout\);

-- Location: LCFF_X28_Y35_N27
\bo1|regresto|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regresto|q[3]~feeder_combout\,
	ena => \bc1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regresto|q\(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bc1|pronto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\erro~I\ : cycloneii_io
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
	datain => \bc1|state.errado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_erro);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[0]~I\ : cycloneii_io
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
	datain => \bo1|regquoc|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[1]~I\ : cycloneii_io
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
	datain => \bo1|regquoc|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[2]~I\ : cycloneii_io
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
	datain => \bo1|regquoc|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quoc[3]~I\ : cycloneii_io
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
	datain => \bo1|regquoc|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quoc(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[0]~I\ : cycloneii_io
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
	datain => \bo1|regresto|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[1]~I\ : cycloneii_io
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
	datain => \bo1|regresto|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[2]~I\ : cycloneii_io
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
	datain => \bo1|regresto|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[3]~I\ : cycloneii_io
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
	datain => \bo1|regresto|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(3));
END structure;


