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

-- DATE "11/11/2020 15:01:08"

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
	reset : IN std_logic;
	clk : IN std_logic;
	inicio : IN std_logic;
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(7 DOWNTO 0);
	conteudoA : OUT std_logic_vector(7 DOWNTO 0);
	conteudoB : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[5]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoA[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[6]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- conteudoB[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_entA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_conteudoA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_conteudoB : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo1|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|state.S2~regout\ : std_logic;
SIGNAL \bo1|somasub|Add0~0_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~5_combout\ : std_logic;
SIGNAL \bo1|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \bo1|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \bo1|mux2|y[4]~4_combout\ : std_logic;
SIGNAL \bo1|mux2|y[5]~5_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~20_combout\ : std_logic;
SIGNAL \bc1|state.S2~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state~17_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc1|state.S3~regout\ : std_logic;
SIGNAL \bc1|state.S4~regout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc1|Selector0~0_combout\ : std_logic;
SIGNAL \bc1|state.S0~regout\ : std_logic;
SIGNAL \bc1|Selector1~0_combout\ : std_logic;
SIGNAL \bc1|state.S1~regout\ : std_logic;
SIGNAL \bo1|mux2|y[6]~6_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~17_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~14_combout\ : std_logic;
SIGNAL \bo1|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~11_combout\ : std_logic;
SIGNAL \bo1|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~8_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~2_cout\ : std_logic;
SIGNAL \bo1|somasub|Add0~3_combout\ : std_logic;
SIGNAL \bo1|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~4\ : std_logic;
SIGNAL \bo1|somasub|Add0~6_combout\ : std_logic;
SIGNAL \bo1|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \bc1|CA~combout\ : std_logic;
SIGNAL \bo1|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~7\ : std_logic;
SIGNAL \bo1|somasub|Add0~10\ : std_logic;
SIGNAL \bo1|somasub|Add0~13\ : std_logic;
SIGNAL \bo1|somasub|Add0~16\ : std_logic;
SIGNAL \bo1|somasub|Add0~19\ : std_logic;
SIGNAL \bo1|somasub|Add0~21_combout\ : std_logic;
SIGNAL \bo1|mux1|y[6]~6_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~23_combout\ : std_logic;
SIGNAL \bo1|mux2|y[7]~7_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~22\ : std_logic;
SIGNAL \bo1|somasub|Add0~24_combout\ : std_logic;
SIGNAL \bo1|mux1|y[7]~7_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~15_combout\ : std_logic;
SIGNAL \bo1|mux1|y[4]~4_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~1_combout\ : std_logic;
SIGNAL \bo1|geraBz|Equal0~1_combout\ : std_logic;
SIGNAL \bo1|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~12_combout\ : std_logic;
SIGNAL \bo1|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \bo1|somasub|Add0~9_combout\ : std_logic;
SIGNAL \bo1|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \bo1|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \bc1|process_0~0_combout\ : std_logic;
SIGNAL \bc1|state~16_combout\ : std_logic;
SIGNAL \bc1|state.S5~regout\ : std_logic;
SIGNAL \bo1|somasub|Add0~18_combout\ : std_logic;
SIGNAL \bo1|mux1|y[5]~5_combout\ : std_logic;
SIGNAL \bo1|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q[4]~feeder_combout\ : std_logic;
SIGNAL \bo1|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo1|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo1|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_inicio <= inicio;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
saida <= ww_saida;
conteudoA <= ww_conteudoA;
conteudoB <= ww_conteudoB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X37_Y35_N4
\bo1|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~0_combout\ = (!\bo1|regB|q\(1) & (!\bo1|regB|q\(0) & (!\bo1|regB|q\(2) & !\bo1|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(1),
	datab => \bo1|regB|q\(0),
	datac => \bo1|regB|q\(2),
	datad => \bo1|regB|q\(3),
	combout => \bo1|geraBz|Equal0~0_combout\);

-- Location: LCFF_X35_Y35_N7
\bc1|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S2~regout\);

-- Location: LCCOMB_X37_Y35_N2
\bo1|somasub|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~0_combout\ = (\bo1|regB|q\(0) & !\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regB|q\(0),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~0_combout\);

-- Location: LCCOMB_X37_Y35_N16
\bo1|somasub|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~5_combout\ = (\bo1|regB|q\(1)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(1),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~5_combout\);

-- Location: LCCOMB_X36_Y35_N24
\bo1|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[2]~2_combout\ = (\bc1|state.S4~regout\ & ((\bo1|regA|q\(2)))) # (!\bc1|state.S4~regout\ & (\bo1|regP|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(2),
	datab => \bc1|state.S4~regout\,
	datad => \bo1|regA|q\(2),
	combout => \bo1|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X36_Y35_N0
\bo1|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[3]~3_combout\ = (\bc1|state.S4~regout\ & (\bo1|regA|q\(3))) # (!\bc1|state.S4~regout\ & ((\bo1|regP|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(3),
	datab => \bc1|state.S4~regout\,
	datad => \bo1|regP|q\(3),
	combout => \bo1|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X36_Y35_N28
\bo1|mux2|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[4]~4_combout\ = (\bc1|state.S4~regout\ & ((\bo1|regA|q\(4)))) # (!\bc1|state.S4~regout\ & (\bo1|regP|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regP|q\(4),
	datac => \bc1|state.S4~regout\,
	datad => \bo1|regA|q\(4),
	combout => \bo1|mux2|y[4]~4_combout\);

-- Location: LCCOMB_X36_Y35_N30
\bo1|mux2|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[5]~5_combout\ = (\bc1|state.S4~regout\ & ((\bo1|regA|q\(5)))) # (!\bc1|state.S4~regout\ & (\bo1|regP|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regP|q\(5),
	datab => \bc1|state.S4~regout\,
	datad => \bo1|regA|q\(5),
	combout => \bo1|mux2|y[5]~5_combout\);

-- Location: LCCOMB_X37_Y35_N8
\bo1|somasub|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~20_combout\ = (\bo1|regB|q\(6)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regB|q\(6),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~20_combout\);

-- Location: LCCOMB_X35_Y35_N6
\bc1|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state.S2~feeder_combout\ = \bc1|CA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc1|CA~combout\,
	combout => \bc1|state.S2~feeder_combout\);

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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N0
\bc1|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~17_combout\ = (\bc1|state.S2~regout\ & !\bc1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S2~regout\,
	datad => \bc1|process_0~0_combout\,
	combout => \bc1|state~17_combout\);

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

-- Location: LCFF_X35_Y35_N1
\bc1|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S3~regout\);

-- Location: LCFF_X36_Y35_N29
\bc1|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bc1|state.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S4~regout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y35_N22
\bc1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector0~0_combout\ = (!\bc1|state.S5~regout\ & ((\bc1|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S5~regout\,
	datac => \bc1|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bc1|Selector0~0_combout\);

-- Location: LCFF_X37_Y35_N23
\bc1|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S0~regout\);

-- Location: LCCOMB_X37_Y35_N10
\bc1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|Selector1~0_combout\ = (\inicio~combout\ & !\bc1|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicio~combout\,
	datad => \bc1|state.S0~regout\,
	combout => \bc1|Selector1~0_combout\);

-- Location: LCFF_X36_Y35_N31
\bc1|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bc1|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S1~regout\);

-- Location: LCFF_X36_Y35_N13
\bo1|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|somasub|Add0~21_combout\,
	aclr => \bc1|state.S1~regout\,
	sload => VCC,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(6));

-- Location: LCCOMB_X35_Y35_N22
\bo1|mux2|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[6]~6_combout\ = (\bc1|state.S4~regout\ & ((\bo1|regA|q\(6)))) # (!\bc1|state.S4~regout\ & (\bo1|regP|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datac => \bo1|regP|q\(6),
	datad => \bo1|regA|q\(6),
	combout => \bo1|mux2|y[6]~6_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X37_Y35_N27
\bo1|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(5),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(5));

-- Location: LCCOMB_X37_Y35_N14
\bo1|somasub|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~17_combout\ = (\bo1|regB|q\(5)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regB|q\(5),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~17_combout\);

-- Location: LCCOMB_X37_Y35_N6
\bo1|somasub|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~14_combout\ = (\bo1|regB|q\(4)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(4),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~14_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y35_N18
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

-- Location: LCFF_X37_Y35_N19
\bo1|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[3]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(3));

-- Location: LCCOMB_X37_Y35_N28
\bo1|somasub|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~11_combout\ = (\bo1|regB|q\(3)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo1|regB|q\(3),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~11_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y35_N24
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

-- Location: LCFF_X37_Y35_N25
\bo1|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[2]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(2));

-- Location: LCCOMB_X37_Y35_N30
\bo1|somasub|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~8_combout\ = (\bo1|regB|q\(2)) # (\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo1|regB|q\(2),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|somasub|Add0~8_combout\);

-- Location: LCCOMB_X36_Y35_N4
\bo1|somasub|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~2_cout\ = CARRY(\bc1|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datad => VCC,
	cout => \bo1|somasub|Add0~2_cout\);

-- Location: LCCOMB_X36_Y35_N6
\bo1|somasub|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~3_combout\ = (\bo1|somasub|Add0~0_combout\ & ((\bo1|mux2|y[0]~0_combout\ & (\bo1|somasub|Add0~2_cout\ & VCC)) # (!\bo1|mux2|y[0]~0_combout\ & (!\bo1|somasub|Add0~2_cout\)))) # (!\bo1|somasub|Add0~0_combout\ & ((\bo1|mux2|y[0]~0_combout\ 
-- & (!\bo1|somasub|Add0~2_cout\)) # (!\bo1|mux2|y[0]~0_combout\ & ((\bo1|somasub|Add0~2_cout\) # (GND)))))
-- \bo1|somasub|Add0~4\ = CARRY((\bo1|somasub|Add0~0_combout\ & (!\bo1|mux2|y[0]~0_combout\ & !\bo1|somasub|Add0~2_cout\)) # (!\bo1|somasub|Add0~0_combout\ & ((!\bo1|somasub|Add0~2_cout\) # (!\bo1|mux2|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|somasub|Add0~0_combout\,
	datab => \bo1|mux2|y[0]~0_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~2_cout\,
	combout => \bo1|somasub|Add0~3_combout\,
	cout => \bo1|somasub|Add0~4\);

-- Location: LCFF_X36_Y35_N1
\bo1|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|somasub|Add0~3_combout\,
	aclr => \bc1|state.S1~regout\,
	sload => VCC,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(0));

-- Location: LCCOMB_X36_Y35_N26
\bo1|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[0]~0_combout\ = (\bc1|state.S4~regout\ & (\bo1|regA|q\(0))) # (!\bc1|state.S4~regout\ & ((\bo1|regP|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(0),
	datab => \bo1|regP|q\(0),
	datad => \bc1|state.S4~regout\,
	combout => \bo1|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X36_Y35_N8
\bo1|somasub|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~6_combout\ = ((\bo1|somasub|Add0~5_combout\ $ (\bo1|mux2|y[1]~1_combout\ $ (!\bo1|somasub|Add0~4\)))) # (GND)
-- \bo1|somasub|Add0~7\ = CARRY((\bo1|somasub|Add0~5_combout\ & ((\bo1|mux2|y[1]~1_combout\) # (!\bo1|somasub|Add0~4\))) # (!\bo1|somasub|Add0~5_combout\ & (\bo1|mux2|y[1]~1_combout\ & !\bo1|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|somasub|Add0~5_combout\,
	datab => \bo1|mux2|y[1]~1_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~4\,
	combout => \bo1|somasub|Add0~6_combout\,
	cout => \bo1|somasub|Add0~7\);

-- Location: LCFF_X36_Y35_N3
\bo1|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|somasub|Add0~6_combout\,
	aclr => \bc1|state.S1~regout\,
	sload => VCC,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N12
\bo1|mux1|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[1]~1_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(1)))) # (!\bc1|state.S1~regout\ & (\bo1|somasub|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|somasub|Add0~6_combout\,
	datad => \entA~combout\(1),
	combout => \bo1|mux1|y[1]~1_combout\);

-- Location: LCCOMB_X35_Y35_N2
\bc1|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|CA~combout\ = (\bc1|state.S4~regout\) # (\bc1|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datad => \bc1|state.S1~regout\,
	combout => \bc1|CA~combout\);

-- Location: LCFF_X35_Y35_N13
\bo1|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[1]~1_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(1));

-- Location: LCCOMB_X36_Y35_N2
\bo1|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[1]~1_combout\ = (\bc1|state.S4~regout\ & ((\bo1|regA|q\(1)))) # (!\bc1|state.S4~regout\ & (\bo1|regP|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datac => \bo1|regP|q\(1),
	datad => \bo1|regA|q\(1),
	combout => \bo1|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X36_Y35_N10
\bo1|somasub|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~9_combout\ = (\bo1|mux2|y[2]~2_combout\ & ((\bo1|somasub|Add0~8_combout\ & (\bo1|somasub|Add0~7\ & VCC)) # (!\bo1|somasub|Add0~8_combout\ & (!\bo1|somasub|Add0~7\)))) # (!\bo1|mux2|y[2]~2_combout\ & ((\bo1|somasub|Add0~8_combout\ & 
-- (!\bo1|somasub|Add0~7\)) # (!\bo1|somasub|Add0~8_combout\ & ((\bo1|somasub|Add0~7\) # (GND)))))
-- \bo1|somasub|Add0~10\ = CARRY((\bo1|mux2|y[2]~2_combout\ & (!\bo1|somasub|Add0~8_combout\ & !\bo1|somasub|Add0~7\)) # (!\bo1|mux2|y[2]~2_combout\ & ((!\bo1|somasub|Add0~7\) # (!\bo1|somasub|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|mux2|y[2]~2_combout\,
	datab => \bo1|somasub|Add0~8_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~7\,
	combout => \bo1|somasub|Add0~9_combout\,
	cout => \bo1|somasub|Add0~10\);

-- Location: LCCOMB_X36_Y35_N12
\bo1|somasub|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~12_combout\ = ((\bo1|mux2|y[3]~3_combout\ $ (\bo1|somasub|Add0~11_combout\ $ (!\bo1|somasub|Add0~10\)))) # (GND)
-- \bo1|somasub|Add0~13\ = CARRY((\bo1|mux2|y[3]~3_combout\ & ((\bo1|somasub|Add0~11_combout\) # (!\bo1|somasub|Add0~10\))) # (!\bo1|mux2|y[3]~3_combout\ & (\bo1|somasub|Add0~11_combout\ & !\bo1|somasub|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|mux2|y[3]~3_combout\,
	datab => \bo1|somasub|Add0~11_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~10\,
	combout => \bo1|somasub|Add0~12_combout\,
	cout => \bo1|somasub|Add0~13\);

-- Location: LCCOMB_X36_Y35_N14
\bo1|somasub|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~15_combout\ = (\bo1|mux2|y[4]~4_combout\ & ((\bo1|somasub|Add0~14_combout\ & (\bo1|somasub|Add0~13\ & VCC)) # (!\bo1|somasub|Add0~14_combout\ & (!\bo1|somasub|Add0~13\)))) # (!\bo1|mux2|y[4]~4_combout\ & ((\bo1|somasub|Add0~14_combout\ & 
-- (!\bo1|somasub|Add0~13\)) # (!\bo1|somasub|Add0~14_combout\ & ((\bo1|somasub|Add0~13\) # (GND)))))
-- \bo1|somasub|Add0~16\ = CARRY((\bo1|mux2|y[4]~4_combout\ & (!\bo1|somasub|Add0~14_combout\ & !\bo1|somasub|Add0~13\)) # (!\bo1|mux2|y[4]~4_combout\ & ((!\bo1|somasub|Add0~13\) # (!\bo1|somasub|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|mux2|y[4]~4_combout\,
	datab => \bo1|somasub|Add0~14_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~13\,
	combout => \bo1|somasub|Add0~15_combout\,
	cout => \bo1|somasub|Add0~16\);

-- Location: LCCOMB_X36_Y35_N16
\bo1|somasub|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~18_combout\ = ((\bo1|mux2|y[5]~5_combout\ $ (\bo1|somasub|Add0~17_combout\ $ (!\bo1|somasub|Add0~16\)))) # (GND)
-- \bo1|somasub|Add0~19\ = CARRY((\bo1|mux2|y[5]~5_combout\ & ((\bo1|somasub|Add0~17_combout\) # (!\bo1|somasub|Add0~16\))) # (!\bo1|mux2|y[5]~5_combout\ & (\bo1|somasub|Add0~17_combout\ & !\bo1|somasub|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|mux2|y[5]~5_combout\,
	datab => \bo1|somasub|Add0~17_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~16\,
	combout => \bo1|somasub|Add0~18_combout\,
	cout => \bo1|somasub|Add0~19\);

-- Location: LCCOMB_X36_Y35_N18
\bo1|somasub|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~21_combout\ = (\bo1|somasub|Add0~20_combout\ & ((\bo1|mux2|y[6]~6_combout\ & (\bo1|somasub|Add0~19\ & VCC)) # (!\bo1|mux2|y[6]~6_combout\ & (!\bo1|somasub|Add0~19\)))) # (!\bo1|somasub|Add0~20_combout\ & ((\bo1|mux2|y[6]~6_combout\ & 
-- (!\bo1|somasub|Add0~19\)) # (!\bo1|mux2|y[6]~6_combout\ & ((\bo1|somasub|Add0~19\) # (GND)))))
-- \bo1|somasub|Add0~22\ = CARRY((\bo1|somasub|Add0~20_combout\ & (!\bo1|mux2|y[6]~6_combout\ & !\bo1|somasub|Add0~19\)) # (!\bo1|somasub|Add0~20_combout\ & ((!\bo1|somasub|Add0~19\) # (!\bo1|mux2|y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|somasub|Add0~20_combout\,
	datab => \bo1|mux2|y[6]~6_combout\,
	datad => VCC,
	cin => \bo1|somasub|Add0~19\,
	combout => \bo1|somasub|Add0~21_combout\,
	cout => \bo1|somasub|Add0~22\);

-- Location: LCCOMB_X35_Y35_N30
\bo1|mux1|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[6]~6_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(6))) # (!\bc1|state.S1~regout\ & ((\bo1|somasub|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \entA~combout\(6),
	datad => \bo1|somasub|Add0~21_combout\,
	combout => \bo1|mux1|y[6]~6_combout\);

-- Location: LCFF_X35_Y35_N31
\bo1|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[6]~6_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X37_Y35_N15
\bo1|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(7),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(7));

-- Location: LCCOMB_X37_Y35_N0
\bo1|somasub|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~23_combout\ = (\bc1|state.S4~regout\) # (\bo1|regB|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datad => \bo1|regB|q\(7),
	combout => \bo1|somasub|Add0~23_combout\);

-- Location: LCFF_X36_Y35_N21
\bo1|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|somasub|Add0~24_combout\,
	aclr => \bc1|state.S1~regout\,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(7));

-- Location: LCCOMB_X35_Y35_N16
\bo1|mux2|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux2|y[7]~7_combout\ = (\bc1|state.S4~regout\ & (\bo1|regA|q\(7))) # (!\bc1|state.S4~regout\ & ((\bo1|regP|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc1|state.S4~regout\,
	datac => \bo1|regA|q\(7),
	datad => \bo1|regP|q\(7),
	combout => \bo1|mux2|y[7]~7_combout\);

-- Location: LCCOMB_X36_Y35_N20
\bo1|somasub|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|somasub|Add0~24_combout\ = \bo1|somasub|Add0~23_combout\ $ (\bo1|somasub|Add0~22\ $ (!\bo1|mux2|y[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo1|somasub|Add0~23_combout\,
	datad => \bo1|mux2|y[7]~7_combout\,
	cin => \bo1|somasub|Add0~22\,
	combout => \bo1|somasub|Add0~24_combout\);

-- Location: LCCOMB_X35_Y35_N20
\bo1|mux1|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[7]~7_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(7))) # (!\bc1|state.S1~regout\ & ((\bo1|somasub|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \entA~combout\(7),
	datad => \bo1|somasub|Add0~24_combout\,
	combout => \bo1|mux1|y[7]~7_combout\);

-- Location: LCFF_X35_Y35_N21
\bo1|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[7]~7_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N18
\bo1|mux1|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[4]~4_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(4)))) # (!\bc1|state.S1~regout\ & (\bo1|somasub|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|somasub|Add0~15_combout\,
	datad => \entA~combout\(4),
	combout => \bo1|mux1|y[4]~4_combout\);

-- Location: LCFF_X35_Y35_N19
\bo1|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[4]~4_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(4));

-- Location: LCCOMB_X35_Y35_N4
\bo1|geraAz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~1_combout\ = (!\bo1|regA|q\(5) & (!\bo1|regA|q\(6) & (!\bo1|regA|q\(7) & !\bo1|regA|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(5),
	datab => \bo1|regA|q\(6),
	datac => \bo1|regA|q\(7),
	datad => \bo1|regA|q\(4),
	combout => \bo1|geraAz|Equal0~1_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X37_Y35_N1
\bo1|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(6),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(6));

-- Location: LCCOMB_X37_Y35_N26
\bo1|geraBz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraBz|Equal0~1_combout\ = (!\bo1|regB|q\(4) & (!\bo1|regB|q\(6) & (!\bo1|regB|q\(5) & !\bo1|regB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regB|q\(4),
	datab => \bo1|regB|q\(6),
	datac => \bo1|regB|q\(5),
	datad => \bo1|regB|q\(7),
	combout => \bo1|geraBz|Equal0~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N10
\bo1|mux1|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[0]~0_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(0))) # (!\bc1|state.S1~regout\ & ((\bo1|somasub|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \entA~combout\(0),
	datad => \bo1|somasub|Add0~3_combout\,
	combout => \bo1|mux1|y[0]~0_combout\);

-- Location: LCFF_X35_Y35_N11
\bo1|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[0]~0_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N8
\bo1|mux1|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[3]~3_combout\ = (\bc1|state.S1~regout\ & (\entA~combout\(3))) # (!\bc1|state.S1~regout\ & ((\bo1|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \entA~combout\(3),
	datad => \bo1|somasub|Add0~12_combout\,
	combout => \bo1|mux1|y[3]~3_combout\);

-- Location: LCFF_X35_Y35_N9
\bo1|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[3]~3_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N26
\bo1|mux1|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[2]~2_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(2)))) # (!\bc1|state.S1~regout\ & (\bo1|somasub|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|somasub|Add0~9_combout\,
	datad => \entA~combout\(2),
	combout => \bo1|mux1|y[2]~2_combout\);

-- Location: LCFF_X35_Y35_N27
\bo1|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[2]~2_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(2));

-- Location: LCCOMB_X35_Y35_N14
\bo1|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|geraAz|Equal0~0_combout\ = (!\bo1|regA|q\(1) & (!\bo1|regA|q\(0) & (!\bo1|regA|q\(3) & !\bo1|regA|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|regA|q\(1),
	datab => \bo1|regA|q\(0),
	datac => \bo1|regA|q\(3),
	datad => \bo1|regA|q\(2),
	combout => \bo1|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y35_N22
\bc1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|process_0~0_combout\ = (\bo1|geraBz|Equal0~0_combout\ & ((\bo1|geraBz|Equal0~1_combout\) # ((\bo1|geraAz|Equal0~1_combout\ & \bo1|geraAz|Equal0~0_combout\)))) # (!\bo1|geraBz|Equal0~0_combout\ & (\bo1|geraAz|Equal0~1_combout\ & 
-- ((\bo1|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo1|geraBz|Equal0~0_combout\,
	datab => \bo1|geraAz|Equal0~1_combout\,
	datac => \bo1|geraBz|Equal0~1_combout\,
	datad => \bo1|geraAz|Equal0~0_combout\,
	combout => \bc1|process_0~0_combout\);

-- Location: LCCOMB_X35_Y35_N24
\bc1|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc1|state~16_combout\ = (\bc1|state.S2~regout\ & \bc1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S2~regout\,
	datad => \bc1|process_0~0_combout\,
	combout => \bc1|state~16_combout\);

-- Location: LCFF_X35_Y35_N25
\bc1|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc1|state~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc1|state.S5~regout\);

-- Location: LCFF_X36_Y35_N27
\bo1|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|somasub|Add0~9_combout\,
	aclr => \bc1|state.S1~regout\,
	sload => VCC,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(2));

-- Location: LCFF_X36_Y35_N25
\bo1|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo1|somasub|Add0~12_combout\,
	aclr => \bc1|state.S1~regout\,
	sload => VCC,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(3));

-- Location: LCFF_X36_Y35_N15
\bo1|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|somasub|Add0~15_combout\,
	aclr => \bc1|state.S1~regout\,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(4));

-- Location: LCFF_X36_Y35_N17
\bo1|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|somasub|Add0~18_combout\,
	aclr => \bc1|state.S1~regout\,
	ena => \bc1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regP|q\(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N28
\bo1|mux1|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|mux1|y[5]~5_combout\ = (\bc1|state.S1~regout\ & ((\entA~combout\(5)))) # (!\bc1|state.S1~regout\ & (\bo1|somasub|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc1|state.S1~regout\,
	datac => \bo1|somasub|Add0~18_combout\,
	datad => \entA~combout\(5),
	combout => \bo1|mux1|y[5]~5_combout\);

-- Location: LCFF_X35_Y35_N29
\bo1|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|mux1|y[5]~5_combout\,
	ena => \bc1|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regA|q\(5));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y35_N20
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

-- Location: LCFF_X37_Y35_N21
\bo1|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[0]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X37_Y35_N11
\bo1|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(1),
	sload => VCC,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(1));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y35_N12
\bo1|regB|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo1|regB|q[4]~feeder_combout\ = \entB~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(4),
	combout => \bo1|regB|q[4]~feeder_combout\);

-- Location: LCFF_X37_Y35_N13
\bo1|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo1|regB|q[4]~feeder_combout\,
	ena => \bc1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo1|regB|q\(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bc1|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[0]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[1]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[2]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(2));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[3]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(3));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[4]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(4));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[5]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[6]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoA[7]~I\ : cycloneii_io
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
	datain => \bo1|regA|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoA(7));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[0]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[1]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[2]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[3]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[4]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[5]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(5));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[6]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(6));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\conteudoB[7]~I\ : cycloneii_io
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
	datain => \bo1|regB|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_conteudoB(7));
END structure;


