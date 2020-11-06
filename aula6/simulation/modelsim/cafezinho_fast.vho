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

-- DATE "10/28/2020 20:22:05"

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

ENTITY 	cafezinho IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	e100 : IN std_logic;
	e50 : IN std_logic;
	ok : IN std_logic;
	libera_cafe : OUT std_logic
	);
END cafezinho;

-- Design Ports Information
-- libera_cafe	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ok	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e50	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e100	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cafezinho IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_e100 : std_logic;
SIGNAL ww_e50 : std_logic;
SIGNAL ww_ok : std_logic;
SIGNAL ww_libera_cafe : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e50~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \ok~combout\ : std_logic;
SIGNAL \estado~14_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \estado.CHECK~regout\ : std_logic;
SIGNAL \e100~combout\ : std_logic;
SIGNAL \estado~15_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.IDLE~regout\ : std_logic;
SIGNAL \estado~16_combout\ : std_logic;
SIGNAL \estado.ACC100~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \inc2~regout\ : std_logic;
SIGNAL \estado~17_combout\ : std_logic;
SIGNAL \estado.ACC50~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \inc1~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \saldo~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \saldo~2_combout\ : std_logic;
SIGNAL \saldo~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \saldo~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \saldo~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado.PREP~regout\ : std_logic;
SIGNAL saldo : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_e100 <= e100;
ww_e50 <= e50;
ww_ok <= ok;
libera_cafe <= ww_libera_cafe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e50~I\ : cycloneii_io
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
	padio => ww_e50,
	combout => \e50~combout\);

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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ok~I\ : cycloneii_io
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
	padio => ww_ok,
	combout => \ok~combout\);

-- Location: LCCOMB_X30_Y35_N4
\estado~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~14_combout\ = (!\estado.IDLE~regout\ & \ok~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.IDLE~regout\,
	datad => \ok~combout\,
	combout => \estado~14_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X30_Y35_N5
\estado.CHECK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.CHECK~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e100~I\ : cycloneii_io
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
	padio => ww_e100,
	combout => \e100~combout\);

-- Location: LCCOMB_X30_Y35_N0
\estado~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~15_combout\ = (!\estado.IDLE~regout\ & ((\e50~combout\) # ((\ok~combout\) # (\e100~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e50~combout\,
	datab => \ok~combout\,
	datac => \e100~combout\,
	datad => \estado.IDLE~regout\,
	combout => \estado~15_combout\);

-- Location: LCCOMB_X30_Y35_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estado~15_combout\) # ((\estado.CHECK~regout\ & ((saldo(3)) # (saldo(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(3),
	datab => saldo(4),
	datac => \estado.CHECK~regout\,
	datad => \estado~15_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X30_Y35_N3
\estado.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.IDLE~regout\);

-- Location: LCCOMB_X30_Y35_N30
\estado~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~16_combout\ = (!\estado.IDLE~regout\ & (\e100~combout\ & !\ok~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.IDLE~regout\,
	datac => \e100~combout\,
	datad => \ok~combout\,
	combout => \estado~16_combout\);

-- Location: LCFF_X30_Y35_N31
\estado.ACC100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.ACC100~regout\);

-- Location: LCCOMB_X29_Y35_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estado.ACC100~regout\) # ((\estado.IDLE~regout\ & \inc2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.IDLE~regout\,
	datac => \inc2~regout\,
	datad => \estado.ACC100~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X29_Y35_N25
inc2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inc2~regout\);

-- Location: LCCOMB_X30_Y35_N24
\estado~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado~17_combout\ = (\e50~combout\ & (!\ok~combout\ & (!\e100~combout\ & !\estado.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e50~combout\,
	datab => \ok~combout\,
	datac => \e100~combout\,
	datad => \estado.IDLE~regout\,
	combout => \estado~17_combout\);

-- Location: LCFF_X30_Y35_N25
\estado.ACC50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.ACC50~regout\);

-- Location: LCCOMB_X29_Y35_N6
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado.ACC50~regout\) # ((\estado.IDLE~regout\ & \inc1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.IDLE~regout\,
	datac => \inc1~regout\,
	datad => \estado.ACC50~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X29_Y35_N7
inc1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inc1~regout\);

-- Location: LCCOMB_X29_Y35_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = saldo(0) $ (VCC)
-- \Add0~1\ = CARRY(saldo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saldo(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y35_N8
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\inc1~regout\ & (((\Add0~0_combout\)))) # (!\inc1~regout\ & (\inc2~regout\ & (saldo(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc2~regout\,
	datab => \inc1~regout\,
	datac => saldo(0),
	datad => \Add0~0_combout\,
	combout => \Add0~10_combout\);

-- Location: LCFF_X29_Y35_N9
\saldo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saldo(0));

-- Location: LCCOMB_X29_Y35_N12
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (saldo(1) & (!\Add0~1\)) # (!saldo(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!saldo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y35_N4
\saldo~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \saldo~4_combout\ = (\inc1~regout\ & (((\Add0~2_combout\)))) # (!\inc1~regout\ & (\inc2~regout\ & (!saldo(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc1~regout\,
	datab => \inc2~regout\,
	datac => saldo(1),
	datad => \Add0~2_combout\,
	combout => \saldo~4_combout\);

-- Location: LCFF_X29_Y35_N5
\saldo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saldo~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saldo(1));

-- Location: LCCOMB_X29_Y35_N14
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (saldo(2) & (\Add0~3\ $ (GND))) # (!saldo(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((saldo(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y35_N30
\saldo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \saldo~2_combout\ = (\inc2~regout\ & (!\inc1~regout\ & (saldo(2) $ (saldo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(2),
	datab => saldo(1),
	datac => \inc2~regout\,
	datad => \inc1~regout\,
	combout => \saldo~2_combout\);

-- Location: LCCOMB_X29_Y35_N26
\saldo~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \saldo~3_combout\ = (\saldo~2_combout\) # ((\inc1~regout\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc1~regout\,
	datac => \Add0~4_combout\,
	datad => \saldo~2_combout\,
	combout => \saldo~3_combout\);

-- Location: LCFF_X29_Y35_N27
\saldo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saldo~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saldo(2));

-- Location: LCCOMB_X29_Y35_N2
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = saldo(4) $ (((saldo(3) & (saldo(1) & saldo(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(3),
	datab => saldo(1),
	datac => saldo(2),
	datad => saldo(4),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (saldo(3) & (!\Add0~5\)) # (!saldo(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!saldo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y35_N18
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!saldo(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => saldo(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X29_Y35_N22
\saldo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saldo~0_combout\ = (\inc1~regout\ & (((\Add0~8_combout\)))) # (!\inc1~regout\ & (\Add1~0_combout\ & (\inc2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc1~regout\,
	datab => \Add1~0_combout\,
	datac => \inc2~regout\,
	datad => \Add0~8_combout\,
	combout => \saldo~0_combout\);

-- Location: LCFF_X29_Y35_N23
\saldo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saldo~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saldo(4));

-- Location: LCCOMB_X29_Y35_N28
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = saldo(3) $ (((saldo(1) & saldo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo(3),
	datab => saldo(1),
	datac => saldo(2),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X29_Y35_N20
\saldo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \saldo~1_combout\ = (\inc1~regout\ & (((\Add0~6_combout\)))) # (!\inc1~regout\ & (\inc2~regout\ & (\Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc2~regout\,
	datab => \Add1~1_combout\,
	datac => \Add0~6_combout\,
	datad => \inc1~regout\,
	combout => \saldo~1_combout\);

-- Location: LCFF_X29_Y35_N21
\saldo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \saldo~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => saldo(3));

-- Location: LCCOMB_X29_Y35_N0
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado.CHECK~regout\ & ((saldo(4)) # (saldo(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CHECK~regout\,
	datab => saldo(4),
	datac => saldo(3),
	combout => \Selector3~0_combout\);

-- Location: LCFF_X29_Y35_N1
\estado.PREP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.PREP~regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\libera_cafe~I\ : cycloneii_io
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
	datain => \estado.PREP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_libera_cafe);
END structure;


