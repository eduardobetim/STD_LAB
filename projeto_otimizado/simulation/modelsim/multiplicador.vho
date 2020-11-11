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

-- DATE "11/11/2020 16:21:24"

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
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_entA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|regA|q[1]~10_combout\ : std_logic;
SIGNAL \bo1|regA|q[4]~16_combout\ : std_logic;
SIGNAL \bo1|geraBz|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \bo1|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \bo1|regA|q[0]~8_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc1|Selector0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state.S0~regout\ : std_logic;
SIGNAL \bc1|Selector1~0_combout\ : std_logic;
SIGNAL \bc1|state.S1~regout\ : std_logic;
SIGNAL \bo1|regA|q[0]~9\ : std_logic;
SIGNAL \bo1|regA|q[1]~11\ : std_logic;
SIGNAL \bo1|regA|q[2]~12_combout\ : std_logic;
SIGNAL \bo1|regA|q[2]~13\ : std_logic;
SIGNAL \bo1|regA|q[3]~15\ : std_logic;
SIGNAL \bo1|regA|q[4]~17\ : std_logic;
SIGNAL \bo1|regA|q[5]~18_combout\ : std_logic;
SIGNAL \bo1|regA|q[5]~19\ : std_logic;
SIGNAL \bo1|regA|q[6]~20_combout\ : std_logic;
SIGNAL \bo1|regA|q[6]~21\ : std_logic;
SIGNAL \bo1|regA|q[7]~22_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~1_combout\ : std_logic;
SIGNAL \bo1|regA|q[3]~14_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|process_0~0_combout\ : std_logic;
SIGNAL \bc1|state~15_combout\ : std_logic;
SIGNAL \bc1|state.S3~regout\ : std_logic;
SIGNAL \bc1|CP~combout\ : std_logic;
SIGNAL \bc1|state.S2~regout\ : std_logic;
SIGNAL \bc1|state~14_combout\ : std_logic;
SIGNAL \bc1|state.S4~regout\ : std_logic;
SIGNAL \bo1|regP|q[0]~8_combout\ : std_logic;
SIGNAL \bo1|regP|q[0]~9\ : std_logic;
SIGNAL \bo1|regP|q[1]~10_combout\ : std_logic;
SIGNAL \bo1|regP|q[1]~11\ : std_logic;
SIGNAL \bo1|regP|q[2]~12_combout\ : std_logic;
SIGNAL \bo1|regP|q[2]~13\ : std_logic;
SIGNAL \bo1|regP|q[3]~14_combout\ : std_logic;
SIGNAL \bo1|regP|q[3]~15\ : std_logic;
SIGNAL \bo1|regP|q[4]~16_combout\ : std_logic;
SIGNAL \bo1|regP|q[4]~17\ : std_logic;
SIGNAL \bo1|regP|q[5]~18_combout\ : std_logic;
SIGNAL \bo1|regP|q[5]~19\ : std_logic;
SIGNAL \bo1|regP|q[6]~20_combout\ : std_logic;
SIGNAL \bo1|regP|q[6]~21\ : std_logic;
SIGNAL \bo1|regP|q[7]~22_combout\ : std_logic;
SIGNAL \bo1|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo1|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: LCFF_X63_Y31_N7
\bo1|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[1]~10_combout\,
	sdata => \entA~combout\(1),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(1));

-- Location: LCFF_X63_Y31_N13
\bo1|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[4]~16_combout\,
	sdata => \entA~combout\(4),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(4));

-- Location: LCCOMB_X63_Y31_N6
\bo1|regA|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[1]~10_combout\ = (\bo1|regA|q\(1) & (\bo1|regA|q[0]~9\ & VCC)) # (!\bo1|regA|q\(1) & (!\bo1|regA|q[0]~9\))
-- \bo1|regA|q[1]~11\ = CARRY((!\bo1|regA|q\(1) & !\bo1|regA|q[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(1),
	datad => VCC,
	cin => \bo1|regA|q[0]~9\,
	combout => \bo1|regA|q[1]~10_combout\,
	cout => \bo1|regA|q[1]~11\);

-- Location: LCCOMB_X63_Y31_N12
\bo1|regA|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[4]~16_combout\ = (\bo1|regA|q\(4) & ((GND) # (!\bo1|regA|q[3]~15\))) # (!\bo1|regA|q\(4) & (\bo1|regA|q[3]~15\ $ (GND)))
-- \bo1|regA|q[4]~17\ = CARRY((\bo1|regA|q\(4)) # (!\bo1|regA|q[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(4),
	datad => VCC,
	cin => \bo1|regA|q[3]~15\,
	combout => \bo1|regA|q[4]~16_combout\,
	cout => \bo1|regA|q[4]~17\);

-- Location: LCCOMB_X64_Y31_N12
\bo1|geraBz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~1_combout\ = (!\entB~combout\(5) & (!\entB~combout\(4) & (!\entB~combout\(6) & !\entB~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(5),
	datab => \entB~combout\(4),
	datac => \entB~combout\(6),
	datad => \entB~combout\(7),
	combout => \bo1|geraBz|Equal0~1_combout\);

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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[5]~I\ : cycloneii_io
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
	padio => ww_entB(5),
	combout => \entB~combout\(5));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[6]~I\ : cycloneii_io
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
	padio => ww_entB(6),
	combout => \entB~combout\(6));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[7]~I\ : cycloneii_io
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
	padio => ww_entB(7),
	combout => \entB~combout\(7));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[4]~I\ : cycloneii_io
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
	padio => ww_entA(4),
	combout => \entA~combout\(4));

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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y31_N2
\bo1|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~0_combout\ = (!\entB~combout\(1) & (!\entB~combout\(2) & (!\entB~combout\(0) & !\entB~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(1),
	datab => \entB~combout\(2),
	datac => \entB~combout\(0),
	datad => \entB~combout\(3),
	combout => \bo1|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y31_N4
\bo1|regA|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[0]~8_combout\ = \bo1|regA|q\(0) $ (VCC)
-- \bo1|regA|q[0]~9\ = CARRY(\bo1|regA|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regA|q\(0),
	datad => VCC,
	combout => \bo1|regA|q[0]~8_combout\,
	cout => \bo1|regA|q[0]~9\);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y31_N14
\bc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~0_combout\ = (!\bc1|state.S4~regout\ & ((\bc1|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
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

-- Location: LCFF_X64_Y31_N15
\bc1|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S0~regout\);

-- Location: LCCOMB_X64_Y31_N10
\bc1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector1~0_combout\ = (!\bc1|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bc1|Selector1~0_combout\);

-- Location: LCFF_X64_Y31_N11
\bc1|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S1~regout\);

-- Location: LCFF_X63_Y31_N5
\bo1|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[0]~8_combout\,
	sdata => \entA~combout\(0),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(0));

-- Location: LCCOMB_X63_Y31_N8
\bo1|regA|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[2]~12_combout\ = (\bo1|regA|q\(2) & ((GND) # (!\bo1|regA|q[1]~11\))) # (!\bo1|regA|q\(2) & (\bo1|regA|q[1]~11\ $ (GND)))
-- \bo1|regA|q[2]~13\ = CARRY((\bo1|regA|q\(2)) # (!\bo1|regA|q[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regA|q\(2),
	datad => VCC,
	cin => \bo1|regA|q[1]~11\,
	combout => \bo1|regA|q[2]~12_combout\,
	cout => \bo1|regA|q[2]~13\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y31_N9
\bo1|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[2]~12_combout\,
	sdata => \entA~combout\(2),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(2));

-- Location: LCCOMB_X63_Y31_N10
\bo1|regA|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[3]~14_combout\ = (\bo1|regA|q\(3) & (\bo1|regA|q[2]~13\ & VCC)) # (!\bo1|regA|q\(3) & (!\bo1|regA|q[2]~13\))
-- \bo1|regA|q[3]~15\ = CARRY((!\bo1|regA|q\(3) & !\bo1|regA|q[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(3),
	datad => VCC,
	cin => \bo1|regA|q[2]~13\,
	combout => \bo1|regA|q[3]~14_combout\,
	cout => \bo1|regA|q[3]~15\);

-- Location: LCCOMB_X63_Y31_N14
\bo1|regA|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[5]~18_combout\ = (\bo1|regA|q\(5) & (\bo1|regA|q[4]~17\ & VCC)) # (!\bo1|regA|q\(5) & (!\bo1|regA|q[4]~17\))
-- \bo1|regA|q[5]~19\ = CARRY((!\bo1|regA|q\(5) & !\bo1|regA|q[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regA|q\(5),
	datad => VCC,
	cin => \bo1|regA|q[4]~17\,
	combout => \bo1|regA|q[5]~18_combout\,
	cout => \bo1|regA|q[5]~19\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[5]~I\ : cycloneii_io
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
	padio => ww_entA(5),
	combout => \entA~combout\(5));

-- Location: LCFF_X63_Y31_N15
\bo1|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[5]~18_combout\,
	sdata => \entA~combout\(5),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(5));

-- Location: LCCOMB_X63_Y31_N16
\bo1|regA|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[6]~20_combout\ = (\bo1|regA|q\(6) & ((GND) # (!\bo1|regA|q[5]~19\))) # (!\bo1|regA|q\(6) & (\bo1|regA|q[5]~19\ $ (GND)))
-- \bo1|regA|q[6]~21\ = CARRY((\bo1|regA|q\(6)) # (!\bo1|regA|q[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(6),
	datad => VCC,
	cin => \bo1|regA|q[5]~19\,
	combout => \bo1|regA|q[6]~20_combout\,
	cout => \bo1|regA|q[6]~21\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[6]~I\ : cycloneii_io
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
	padio => ww_entA(6),
	combout => \entA~combout\(6));

-- Location: LCFF_X63_Y31_N17
\bo1|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[6]~20_combout\,
	sdata => \entA~combout\(6),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(6));

-- Location: LCCOMB_X63_Y31_N18
\bo1|regA|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regA|q[7]~22_combout\ = \bo1|regA|q[6]~21\ $ (!\bo1|regA|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo1|regA|q\(7),
	cin => \bo1|regA|q[6]~21\,
	combout => \bo1|regA|q[7]~22_combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[7]~I\ : cycloneii_io
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
	padio => ww_entA(7),
	combout => \entA~combout\(7));

-- Location: LCFF_X63_Y31_N19
\bo1|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[7]~22_combout\,
	sdata => \entA~combout\(7),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(7));

-- Location: LCCOMB_X63_Y31_N30
\bo1|geraAz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~1_combout\ = (!\bo1|regA|q\(4) & (!\bo1|regA|q\(5) & (!\bo1|regA|q\(6) & !\bo1|regA|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(4),
	datab => \bo1|regA|q\(5),
	datac => \bo1|regA|q\(6),
	datad => \bo1|regA|q\(7),
	combout => \bo1|geraAz|Equal0~1_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y31_N11
\bo1|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regA|q[3]~14_combout\,
	sdata => \entA~combout\(3),
	sload => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(3));

-- Location: LCCOMB_X63_Y31_N24
\bo1|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~0_combout\ = (!\bo1|regA|q\(1) & (!\bo1|regA|q\(0) & (!\bo1|regA|q\(2) & !\bo1|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(1),
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(2),
	datad => \bo1|regA|q\(3),
	combout => \bo1|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y31_N6
\bc1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|process_0~0_combout\ = (\bo1|geraBz|Equal0~1_combout\ & ((\bo1|geraBz|Equal0~0_combout\) # ((\bo1|geraAz|Equal0~1_combout\ & \bo1|geraAz|Equal0~0_combout\)))) # (!\bo1|geraBz|Equal0~1_combout\ & (((\bo1|geraAz|Equal0~1_combout\ & 
-- \bo1|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|geraBz|Equal0~1_combout\,
	datab => \bo1|geraBz|Equal0~0_combout\,
	datac => \bo1|geraAz|Equal0~1_combout\,
	datad => \bo1|geraAz|Equal0~0_combout\,
	combout => \bc1|process_0~0_combout\);

-- Location: LCCOMB_X64_Y31_N4
\bc1|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~15_combout\ = (\bc1|state.S2~regout\ & !\bc1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S2~regout\,
	datad => \bc1|process_0~0_combout\,
	combout => \bc1|state~15_combout\);

-- Location: LCFF_X64_Y31_N5
\bc1|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S3~regout\);

-- Location: LCCOMB_X64_Y31_N8
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

-- Location: LCFF_X64_Y31_N9
\bc1|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|CP~combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S2~regout\);

-- Location: LCCOMB_X64_Y31_N0
\bc1|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~14_combout\ = (\bc1|state.S2~regout\ & \bc1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc1|state.S2~regout\,
	datad => \bc1|process_0~0_combout\,
	combout => \bc1|state~14_combout\);

-- Location: LCFF_X64_Y31_N1
\bc1|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S4~regout\);

-- Location: LCCOMB_X64_Y31_N16
\bo1|regP|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[0]~8_combout\ = (\bo1|regP|q\(0) & (\entB~combout\(0) $ (VCC))) # (!\bo1|regP|q\(0) & (\entB~combout\(0) & VCC))
-- \bo1|regP|q[0]~9\ = CARRY((\bo1|regP|q\(0) & \entB~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(0),
	datab => \entB~combout\(0),
	datad => VCC,
	combout => \bo1|regP|q[0]~8_combout\,
	cout => \bo1|regP|q[0]~9\);

-- Location: LCFF_X64_Y31_N17
\bo1|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[0]~8_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(0));

-- Location: LCCOMB_X64_Y31_N18
\bo1|regP|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[1]~10_combout\ = (\entB~combout\(1) & ((\bo1|regP|q\(1) & (\bo1|regP|q[0]~9\ & VCC)) # (!\bo1|regP|q\(1) & (!\bo1|regP|q[0]~9\)))) # (!\entB~combout\(1) & ((\bo1|regP|q\(1) & (!\bo1|regP|q[0]~9\)) # (!\bo1|regP|q\(1) & ((\bo1|regP|q[0]~9\) # 
-- (GND)))))
-- \bo1|regP|q[1]~11\ = CARRY((\entB~combout\(1) & (!\bo1|regP|q\(1) & !\bo1|regP|q[0]~9\)) # (!\entB~combout\(1) & ((!\bo1|regP|q[0]~9\) # (!\bo1|regP|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(1),
	datab => \bo1|regP|q\(1),
	datad => VCC,
	cin => \bo1|regP|q[0]~9\,
	combout => \bo1|regP|q[1]~10_combout\,
	cout => \bo1|regP|q[1]~11\);

-- Location: LCFF_X64_Y31_N19
\bo1|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[1]~10_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(1));

-- Location: LCCOMB_X64_Y31_N20
\bo1|regP|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[2]~12_combout\ = ((\bo1|regP|q\(2) $ (\entB~combout\(2) $ (!\bo1|regP|q[1]~11\)))) # (GND)
-- \bo1|regP|q[2]~13\ = CARRY((\bo1|regP|q\(2) & ((\entB~combout\(2)) # (!\bo1|regP|q[1]~11\))) # (!\bo1|regP|q\(2) & (\entB~combout\(2) & !\bo1|regP|q[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(2),
	datab => \entB~combout\(2),
	datad => VCC,
	cin => \bo1|regP|q[1]~11\,
	combout => \bo1|regP|q[2]~12_combout\,
	cout => \bo1|regP|q[2]~13\);

-- Location: LCFF_X64_Y31_N21
\bo1|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[2]~12_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(2));

-- Location: LCCOMB_X64_Y31_N22
\bo1|regP|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[3]~14_combout\ = (\entB~combout\(3) & ((\bo1|regP|q\(3) & (\bo1|regP|q[2]~13\ & VCC)) # (!\bo1|regP|q\(3) & (!\bo1|regP|q[2]~13\)))) # (!\entB~combout\(3) & ((\bo1|regP|q\(3) & (!\bo1|regP|q[2]~13\)) # (!\bo1|regP|q\(3) & ((\bo1|regP|q[2]~13\) 
-- # (GND)))))
-- \bo1|regP|q[3]~15\ = CARRY((\entB~combout\(3) & (!\bo1|regP|q\(3) & !\bo1|regP|q[2]~13\)) # (!\entB~combout\(3) & ((!\bo1|regP|q[2]~13\) # (!\bo1|regP|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(3),
	datab => \bo1|regP|q\(3),
	datad => VCC,
	cin => \bo1|regP|q[2]~13\,
	combout => \bo1|regP|q[3]~14_combout\,
	cout => \bo1|regP|q[3]~15\);

-- Location: LCFF_X64_Y31_N23
\bo1|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[3]~14_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(3));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[4]~I\ : cycloneii_io
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
	padio => ww_entB(4),
	combout => \entB~combout\(4));

-- Location: LCCOMB_X64_Y31_N24
\bo1|regP|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[4]~16_combout\ = ((\bo1|regP|q\(4) $ (\entB~combout\(4) $ (!\bo1|regP|q[3]~15\)))) # (GND)
-- \bo1|regP|q[4]~17\ = CARRY((\bo1|regP|q\(4) & ((\entB~combout\(4)) # (!\bo1|regP|q[3]~15\))) # (!\bo1|regP|q\(4) & (\entB~combout\(4) & !\bo1|regP|q[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(4),
	datab => \entB~combout\(4),
	datad => VCC,
	cin => \bo1|regP|q[3]~15\,
	combout => \bo1|regP|q[4]~16_combout\,
	cout => \bo1|regP|q[4]~17\);

-- Location: LCFF_X64_Y31_N25
\bo1|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[4]~16_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(4));

-- Location: LCCOMB_X64_Y31_N26
\bo1|regP|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[5]~18_combout\ = (\entB~combout\(5) & ((\bo1|regP|q\(5) & (\bo1|regP|q[4]~17\ & VCC)) # (!\bo1|regP|q\(5) & (!\bo1|regP|q[4]~17\)))) # (!\entB~combout\(5) & ((\bo1|regP|q\(5) & (!\bo1|regP|q[4]~17\)) # (!\bo1|regP|q\(5) & ((\bo1|regP|q[4]~17\) 
-- # (GND)))))
-- \bo1|regP|q[5]~19\ = CARRY((\entB~combout\(5) & (!\bo1|regP|q\(5) & !\bo1|regP|q[4]~17\)) # (!\entB~combout\(5) & ((!\bo1|regP|q[4]~17\) # (!\bo1|regP|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(5),
	datab => \bo1|regP|q\(5),
	datad => VCC,
	cin => \bo1|regP|q[4]~17\,
	combout => \bo1|regP|q[5]~18_combout\,
	cout => \bo1|regP|q[5]~19\);

-- Location: LCFF_X64_Y31_N27
\bo1|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[5]~18_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(5));

-- Location: LCCOMB_X64_Y31_N28
\bo1|regP|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[6]~20_combout\ = ((\entB~combout\(6) $ (\bo1|regP|q\(6) $ (!\bo1|regP|q[5]~19\)))) # (GND)
-- \bo1|regP|q[6]~21\ = CARRY((\entB~combout\(6) & ((\bo1|regP|q\(6)) # (!\bo1|regP|q[5]~19\))) # (!\entB~combout\(6) & (\bo1|regP|q\(6) & !\bo1|regP|q[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(6),
	datab => \bo1|regP|q\(6),
	datad => VCC,
	cin => \bo1|regP|q[5]~19\,
	combout => \bo1|regP|q[6]~20_combout\,
	cout => \bo1|regP|q[6]~21\);

-- Location: LCFF_X64_Y31_N29
\bo1|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[6]~20_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(6));

-- Location: LCCOMB_X64_Y31_N30
\bo1|regP|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regP|q[7]~22_combout\ = \entB~combout\(7) $ (\bo1|regP|q[6]~21\ $ (\bo1|regP|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entB~combout\(7),
	datad => \bo1|regP|q\(7),
	cin => \bo1|regP|q[6]~21\,
	combout => \bo1|regP|q[7]~22_combout\);

-- Location: LCFF_X64_Y31_N31
\bo1|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regP|q[7]~22_combout\,
	sclr => \bc1|state.S1~regout\,
	ena => \bc1|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(7));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
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
	datain => \bo1|regP|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
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
	datain => \bo1|regP|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
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
	datain => \bo1|regP|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
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
	datain => \bo1|regP|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));
END structure;


