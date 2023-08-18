-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/29/2022 20:21:18"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	control_path IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	op_code : IN std_logic_vector(3 DOWNTO 0);
	condition : IN std_logic_vector(1 DOWNTO 0);
	T : OUT std_logic_vector(25 DOWNTO 0);
	C : IN std_logic;
	Z : IN std_logic;
	invalid_next : IN std_logic;
	eq : IN std_logic;
	B : IN std_logic
	);
END control_path;

-- Design Ports Information


ARCHITECTURE structure OF control_path IS
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
SIGNAL ww_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_condition : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_T : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_invalid_next : std_logic;
SIGNAL ww_eq : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Q.S2~regout\ : std_logic;
SIGNAL \Q.S7~regout\ : std_logic;
SIGNAL \Q.S9~regout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \nQ.S14~0_combout\ : std_logic;
SIGNAL \nQ.S14~1_combout\ : std_logic;
SIGNAL \eq~combout\ : std_logic;
SIGNAL \Q.S14~regout\ : std_logic;
SIGNAL \Q.S8~regout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Z~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \nQ.S3~0_combout\ : std_logic;
SIGNAL \invalid_next~combout\ : std_logic;
SIGNAL \nQ.S6~0_combout\ : std_logic;
SIGNAL \nQ.S10~0_combout\ : std_logic;
SIGNAL \Q.S10~regout\ : std_logic;
SIGNAL \Q.S11~regout\ : std_logic;
SIGNAL \nQ.S12~0_combout\ : std_logic;
SIGNAL \Q.S12~regout\ : std_logic;
SIGNAL \Q.S13~regout\ : std_logic;
SIGNAL \nQ.S2~2_combout\ : std_logic;
SIGNAL \Q.S15~regout\ : std_logic;
SIGNAL \Q.S16~regout\ : std_logic;
SIGNAL \Q.S3~regout\ : std_logic;
SIGNAL \nQ.S4~0_combout\ : std_logic;
SIGNAL \Q.S4~regout\ : std_logic;
SIGNAL \Q.S6~regout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Q.S5~regout\ : std_logic;
SIGNAL \nQ.S1~0_combout\ : std_logic;
SIGNAL \Q.S1~regout\ : std_logic;
SIGNAL \WideOr2~4_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \WideOr3~4_combout\ : std_logic;
SIGNAL \T~3_combout\ : std_logic;
SIGNAL \T~4_combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \T~5_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \op_code~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \condition~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Q.S1~regout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_op_code <= op_code;
ww_condition <= condition;
T <= ww_T;
ww_C <= C;
ww_Z <= Z;
ww_invalid_next <= invalid_next;
ww_eq <= eq;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Q.S1~regout\ <= NOT \Q.S1~regout\;
\ALT_INV_WideOr2~4_combout\ <= NOT \WideOr2~4_combout\;
\ALT_INV_WideOr10~combout\ <= NOT \WideOr10~combout\;
\ALT_INV_WideOr3~4_combout\ <= NOT \WideOr3~4_combout\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_code[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op_code(2),
	combout => \op_code~combout\(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_code[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op_code(0),
	combout => \op_code~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_code[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op_code(1),
	combout => \op_code~combout\(1));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_code[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op_code(3),
	combout => \op_code~combout\(3));

-- Location: LC_X2_Y7_N5
\Mux9~0\ : maxv_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (!\op_code~combout\(1) & (!\op_code~combout\(3) & ((\op_code~combout\(0)) # (\op_code~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op_code~combout\(0),
	datab => \op_code~combout\(1),
	datac => \op_code~combout\(3),
	datad => \op_code~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X2_Y7_N0
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\op_code~combout\(2) & ((\op_code~combout\(1) & (\op_code~combout\(0) & !\op_code~combout\(3))) # (!\op_code~combout\(1) & ((\op_code~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0038",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op_code~combout\(0),
	datab => \op_code~combout\(1),
	datac => \op_code~combout\(3),
	datad => \op_code~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X3_Y7_N2
\Q.S2\ : maxv_lcell
-- Equation(s):
-- \Q.S2~regout\ = DFFEAS((!\Mux0~0_combout\ & (!\reset~combout\ & ((!\Q.S1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux0~0_combout\,
	datab => \reset~combout\,
	datad => \Q.S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S2~regout\);

-- Location: LC_X3_Y7_N8
\Q.S7\ : maxv_lcell
-- Equation(s):
-- \Q.S7~regout\ = DFFEAS((\Mux9~0_combout\ & (!\reset~combout\ & (\Q.S2~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux9~0_combout\,
	datab => \reset~combout\,
	datac => \Q.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S7~regout\);

-- Location: LC_X5_Y7_N0
\Q.S9\ : maxv_lcell
-- Equation(s):
-- \Q.S9~regout\ = DFFEAS((!\reset~combout\ & (\op_code~combout\(2) & (\op_code~combout\(0) & \Q.S7~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \op_code~combout\(2),
	datac => \op_code~combout\(0),
	datad => \Q.S7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S9~regout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: LC_X2_Y7_N4
\Mux6~0\ : maxv_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\op_code~combout\(0) & ((\op_code~combout\(3)) # ((\op_code~combout\(1) & !\op_code~combout\(2))))) # (!\op_code~combout\(0) & (\op_code~combout\(3) & ((\op_code~combout\(1)) # (!\op_code~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op_code~combout\(0),
	datab => \op_code~combout\(1),
	datac => \op_code~combout\(3),
	datad => \op_code~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X2_Y7_N2
\nQ.S14~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S14~0_combout\ = ((\op_code~combout\(3) & (!\op_code~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \op_code~combout\(3),
	datac => \op_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S14~0_combout\);

-- Location: LC_X3_Y7_N0
\nQ.S14~1\ : maxv_lcell
-- Equation(s):
-- \nQ.S14~1_combout\ = (\nQ.S14~0_combout\ & (\op_code~combout\(2) & (!\op_code~combout\(0) & \Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nQ.S14~0_combout\,
	datab => \op_code~combout\(2),
	datac => \op_code~combout\(0),
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S14~1_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\eq~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_eq,
	combout => \eq~combout\);

-- Location: LC_X3_Y7_N5
\Q.S14\ : maxv_lcell
-- Equation(s):
-- \Q.S14~regout\ = DFFEAS(((!\reset~combout\ & (\nQ.S14~1_combout\ & \eq~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \nQ.S14~1_combout\,
	datad => \eq~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S14~regout\);

-- Location: LC_X3_Y7_N4
\Q.S8\ : maxv_lcell
-- Equation(s):
-- \Q.S8~regout\ = DFFEAS((!\op_code~combout\(0) & (((!\reset~combout\ & \Q.S7~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \op_code~combout\(0),
	datac => \reset~combout\,
	datad => \Q.S7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S8~regout\);

-- Location: LC_X3_Y7_N1
\Selector2~1\ : maxv_lcell
-- Equation(s):
-- \Selector2~1_combout\ = (\Q.S14~regout\) # ((\Q.S8~regout\) # ((!\eq~combout\ & \nQ.S14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S14~regout\,
	datab => \eq~combout\,
	datac => \Q.S8~regout\,
	datad => \nQ.S14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\condition[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_condition(0),
	combout => \condition~combout\(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\condition[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_condition(1),
	combout => \condition~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Z,
	combout => \Z~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: LC_X1_Y7_N6
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\condition~combout\(0) & (!\condition~combout\(1) & (\Z~combout\))) # (!\condition~combout\(0) & (((\C~combout\)) # (!\condition~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7531",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \condition~combout\(0),
	datab => \condition~combout\(1),
	datac => \Z~combout\,
	datad => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X3_Y7_N6
\nQ.S3~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S3~0_combout\ = (!\op_code~combout\(3) & (!\op_code~combout\(2) & (!\op_code~combout\(0) & \Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op_code~combout\(3),
	datab => \op_code~combout\(2),
	datac => \op_code~combout\(0),
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S3~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\invalid_next~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_invalid_next,
	combout => \invalid_next~combout\);

-- Location: LC_X2_Y7_N8
\nQ.S6~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S6~0_combout\ = ((!\op_code~combout\(3) & (\op_code~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \op_code~combout\(3),
	datac => \op_code~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S6~0_combout\);

-- Location: LC_X5_Y7_N3
\nQ.S10~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S10~0_combout\ = (\nQ.S6~0_combout\ & (\op_code~combout\(2) & (!\op_code~combout\(0) & \Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nQ.S6~0_combout\,
	datab => \op_code~combout\(2),
	datac => \op_code~combout\(0),
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S10~0_combout\);

-- Location: LC_X5_Y7_N4
\Q.S10\ : maxv_lcell
-- Equation(s):
-- \Q.S10~regout\ = DFFEAS((!\reset~combout\ & ((\nQ.S10~0_combout\) # ((!\invalid_next~combout\ & \Q.S11~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \invalid_next~combout\,
	datab => \Q.S11~regout\,
	datac => \reset~combout\,
	datad => \nQ.S10~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S10~regout\);

-- Location: LC_X4_Y7_N6
\Q.S11\ : maxv_lcell
-- Equation(s):
-- \Q.S11~regout\ = DFFEAS((((!\reset~combout\ & \Q.S10~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \Q.S10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S11~regout\);

-- Location: LC_X5_Y7_N8
\nQ.S12~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S12~0_combout\ = (\nQ.S6~0_combout\ & (\op_code~combout\(2) & (\op_code~combout\(0) & \Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nQ.S6~0_combout\,
	datab => \op_code~combout\(2),
	datac => \op_code~combout\(0),
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S12~0_combout\);

-- Location: LC_X5_Y7_N9
\Q.S12\ : maxv_lcell
-- Equation(s):
-- \Q.S12~regout\ = DFFEAS((!\reset~combout\ & ((\nQ.S12~0_combout\) # ((\Q.S13~regout\ & !\invalid_next~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5504",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \Q.S13~regout\,
	datac => \invalid_next~combout\,
	datad => \nQ.S12~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S12~regout\);

-- Location: LC_X5_Y7_N2
\Q.S13\ : maxv_lcell
-- Equation(s):
-- \Q.S13~regout\ = DFFEAS((((!\reset~combout\ & \Q.S12~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => \Q.S12~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S13~regout\);

-- Location: LC_X5_Y7_N7
\nQ.S2~2\ : maxv_lcell
-- Equation(s):
-- \nQ.S2~2_combout\ = (((!\reset~combout\ & !\Q.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Q.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S2~2_combout\);

-- Location: LC_X4_Y7_N8
\Q.S15\ : maxv_lcell
-- Equation(s):
-- \Q.S15~regout\ = DFFEAS((!\op_code~combout\(0) & (!\op_code~combout\(2) & (\nQ.S14~0_combout\ & \nQ.S2~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \op_code~combout\(0),
	datab => \op_code~combout\(2),
	datac => \nQ.S14~0_combout\,
	datad => \nQ.S2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S15~regout\);

-- Location: LC_X4_Y7_N7
\Q.S16\ : maxv_lcell
-- Equation(s):
-- \Q.S16~regout\ = DFFEAS((\op_code~combout\(0) & (!\op_code~combout\(2) & (\nQ.S14~0_combout\ & \nQ.S2~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \op_code~combout\(0),
	datab => \op_code~combout\(2),
	datac => \nQ.S14~0_combout\,
	datad => \nQ.S2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S16~regout\);

-- Location: LC_X3_Y7_N7
\Q.S3\ : maxv_lcell
-- Equation(s):
-- \Q.S3~regout\ = DFFEAS(((!\reset~combout\ & (\Mux4~0_combout\ & \nQ.S3~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \Mux4~0_combout\,
	datad => \nQ.S3~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S3~regout\);

-- Location: LC_X3_Y7_N3
\nQ.S4~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S4~0_combout\ = ((!\op_code~combout\(2) & ((\Q.S7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \op_code~combout\(2),
	datad => \Q.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S4~0_combout\);

-- Location: LC_X4_Y7_N5
\Q.S4\ : maxv_lcell
-- Equation(s):
-- \Q.S4~regout\ = DFFEAS((!\reset~combout\ & ((\Q.S3~regout\) # ((\op_code~combout\(0) & \nQ.S4~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \Q.S3~regout\,
	datac => \op_code~combout\(0),
	datad => \nQ.S4~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S4~regout\);

-- Location: LC_X4_Y7_N9
\Q.S6\ : maxv_lcell
-- Equation(s):
-- \Q.S6~regout\ = DFFEAS((\op_code~combout\(0) & (\nQ.S6~0_combout\ & (!\op_code~combout\(2) & \nQ.S2~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \op_code~combout\(0),
	datab => \nQ.S6~0_combout\,
	datac => \op_code~combout\(2),
	datad => \nQ.S2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S6~regout\);

-- Location: LC_X4_Y7_N0
\WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0_combout\ = (!\Q.S15~regout\ & (!\Q.S16~regout\ & (!\Q.S4~regout\ & !\Q.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S15~regout\,
	datab => \Q.S16~regout\,
	datac => \Q.S4~regout\,
	datad => \Q.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0_combout\);

-- Location: LC_X4_Y7_N1
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = ((\invalid_next~combout\ & ((\Q.S11~regout\) # (\Q.S13~regout\)))) # (!\WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S11~regout\,
	datab => \invalid_next~combout\,
	datac => \Q.S13~regout\,
	datad => \WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X4_Y7_N2
\Selector2~2\ : maxv_lcell
-- Equation(s):
-- \Selector2~2_combout\ = (\Mux4~0_combout\ & (!\B~combout\ & ((\Selector2~0_combout\)))) # (!\Mux4~0_combout\ & ((\nQ.S3~0_combout\) # ((!\B~combout\ & \Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \B~combout\,
	datac => \nQ.S3~0_combout\,
	datad => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~2_combout\);

-- Location: LC_X4_Y7_N3
\Q.S5\ : maxv_lcell
-- Equation(s):
-- \Q.S5~regout\ = DFFEAS((!\reset~combout\ & (((\Selector2~1_combout\) # (\Selector2~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S5~regout\);

-- Location: LC_X3_Y7_N9
\nQ.S1~0\ : maxv_lcell
-- Equation(s):
-- \nQ.S1~0_combout\ = (\reset~combout\) # ((\Q.S5~regout\) # ((\Mux6~0_combout\ & \Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Mux6~0_combout\,
	datac => \Q.S5~regout\,
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nQ.S1~0_combout\);

-- Location: LC_X4_Y7_N4
\Q.S1\ : maxv_lcell
-- Equation(s):
-- \Q.S1~regout\ = DFFEAS((!\Q.S9~regout\ & (!\nQ.S1~0_combout\ & ((!\Selector2~0_combout\) # (!\B~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0105",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Q.S9~regout\,
	datab => \B~combout\,
	datac => \nQ.S1~0_combout\,
	datad => \Selector2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S1~regout\);

-- Location: LC_X6_Y7_N3
\WideOr2~4\ : maxv_lcell
-- Equation(s):
-- \WideOr2~4_combout\ = (((!\Q.S7~regout\ & !\Q.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Q.S7~regout\,
	datad => \Q.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~4_combout\);

-- Location: LC_X5_Y7_N6
\WideOr10~0\ : maxv_lcell
-- Equation(s):
-- \WideOr10~0_combout\ = (\Q.S13~regout\) # ((\Q.S2~regout\) # ((\Q.S10~regout\) # (\Q.S12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S13~regout\,
	datab => \Q.S2~regout\,
	datac => \Q.S10~regout\,
	datad => \Q.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~0_combout\);

-- Location: LC_X6_Y7_N9
WideOr10 : maxv_lcell
-- Equation(s):
-- \WideOr10~combout\ = ((\Q.S14~regout\) # ((\WideOr10~0_combout\) # (!\Q.S1~regout\))) # (!\WideOr2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~4_combout\,
	datab => \Q.S14~regout\,
	datac => \WideOr10~0_combout\,
	datad => \Q.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~combout\);

-- Location: LC_X6_Y7_N0
\WideOr3~4\ : maxv_lcell
-- Equation(s):
-- \WideOr3~4_combout\ = ((!\Q.S13~regout\ & ((!\Q.S11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q.S13~regout\,
	datad => \Q.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~4_combout\);

-- Location: LC_X5_Y7_N5
\T~3\ : maxv_lcell
-- Equation(s):
-- \T~3_combout\ = (((\Q.S9~regout\) # (\Q.S13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Q.S9~regout\,
	datad => \Q.S13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T~3_combout\);

-- Location: LC_X4_Y6_N6
\T~4\ : maxv_lcell
-- Equation(s):
-- \T~4_combout\ = (\Q.S10~regout\) # (((\Q.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S10~regout\,
	datad => \Q.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T~4_combout\);

-- Location: LC_X5_Y7_N1
WideOr9 : maxv_lcell
-- Equation(s):
-- \WideOr9~combout\ = ((\Q.S7~regout\) # ((\Q.S3~regout\) # (\Q.S2~regout\))) # (!\WideOr3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~4_combout\,
	datab => \Q.S7~regout\,
	datac => \Q.S3~regout\,
	datad => \Q.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~combout\);

-- Location: LC_X6_Y7_N6
WideOr8 : maxv_lcell
-- Equation(s):
-- \WideOr8~combout\ = ((\Q.S16~regout\) # ((\Q.S15~regout\) # (\Q.S14~regout\))) # (!\Q.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S1~regout\,
	datab => \Q.S16~regout\,
	datac => \Q.S15~regout\,
	datad => \Q.S14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~combout\);

-- Location: LC_X4_Y6_N8
WideOr7 : maxv_lcell
-- Equation(s):
-- \WideOr7~combout\ = (((\Q.S8~regout\) # (!\WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WideOr7~0_combout\,
	datad => \Q.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~combout\);

-- Location: LC_X4_Y6_N9
\WideOr6~0\ : maxv_lcell
-- Equation(s):
-- \WideOr6~0_combout\ = (((!\Q.S4~regout\ & !\Q.S11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Q.S4~regout\,
	datad => \Q.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~0_combout\);

-- Location: LC_X4_Y6_N5
WideOr6 : maxv_lcell
-- Equation(s):
-- \WideOr6~combout\ = ((\Q.S8~regout\) # ((\Q.S4~regout\) # (\Q.S11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q.S8~regout\,
	datac => \Q.S4~regout\,
	datad => \Q.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~combout\);

-- Location: LC_X4_Y6_N2
\T~5\ : maxv_lcell
-- Equation(s):
-- \T~5_combout\ = (((\Q.S6~regout\) # (\Q.S11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Q.S6~regout\,
	datad => \Q.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T~5_combout\);

-- Location: LC_X6_Y7_N5
WideOr5 : maxv_lcell
-- Equation(s):
-- \WideOr5~combout\ = ((\Q.S14~regout\) # ((\Q.S7~regout\) # (!\WideOr3~4_combout\))) # (!\Q.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S1~regout\,
	datab => \Q.S14~regout\,
	datac => \Q.S7~regout\,
	datad => \WideOr3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~combout\);

-- Location: LC_X6_Y7_N4
WideOr4 : maxv_lcell
-- Equation(s):
-- \WideOr4~combout\ = ((\Q.S14~regout\) # ((\Q.S7~regout\) # (\Q.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q.S14~regout\,
	datac => \Q.S7~regout\,
	datad => \Q.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~combout\);

-- Location: LC_X6_Y7_N7
\WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \WideOr1~0_combout\ = (\Q.S1~regout\ & (!\Q.S15~regout\ & ((!\Q.S14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S1~regout\,
	datab => \Q.S15~regout\,
	datad => \Q.S14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~0_combout\);

-- Location: LC_X6_Y7_N2
WideOr3 : maxv_lcell
-- Equation(s):
-- \WideOr3~combout\ = ((\Q.S13~regout\) # ((\Q.S11~regout\) # (!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q.S13~regout\,
	datac => \WideOr1~0_combout\,
	datad => \Q.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~combout\);

-- Location: LC_X6_Y7_N8
WideOr2 : maxv_lcell
-- Equation(s):
-- \WideOr2~combout\ = ((\Q.S3~regout\) # ((\Q.S7~regout\) # (!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q.S3~regout\,
	datac => \Q.S7~regout\,
	datad => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~combout\);

-- Location: LC_X6_Y7_N1
\WideOr0~0\ : maxv_lcell
-- Equation(s):
-- \WideOr0~0_combout\ = (!\Q.S11~regout\ & (!\Q.S3~regout\ & (!\Q.S7~regout\ & !\Q.S13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S11~regout\,
	datab => \Q.S3~regout\,
	datac => \Q.S7~regout\,
	datad => \Q.S13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~0_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Q.S1~regout\,
	oe => VCC,
	padio => ww_T(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Q.S1~regout\,
	oe => VCC,
	padio => ww_T(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr10~combout\,
	oe => VCC,
	padio => ww_T(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q.S2~regout\,
	oe => VCC,
	padio => ww_T(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr3~4_combout\,
	oe => VCC,
	padio => ww_T(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \T~3_combout\,
	oe => VCC,
	padio => ww_T(5));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \T~4_combout\,
	oe => VCC,
	padio => ww_T(6));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr9~combout\,
	oe => VCC,
	padio => ww_T(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \T~4_combout\,
	oe => VCC,
	padio => ww_T(8));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr8~combout\,
	oe => VCC,
	padio => ww_T(9));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr2~4_combout\,
	oe => VCC,
	padio => ww_T(10));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q.S12~regout\,
	oe => VCC,
	padio => ww_T(11));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr7~combout\,
	oe => VCC,
	padio => ww_T(12));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr6~0_combout\,
	oe => VCC,
	padio => ww_T(13));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr6~combout\,
	oe => VCC,
	padio => ww_T(14));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \T~5_combout\,
	oe => VCC,
	padio => ww_T(15));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q.S8~regout\,
	oe => VCC,
	padio => ww_T(16));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr5~combout\,
	oe => VCC,
	padio => ww_T(17));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr4~combout\,
	oe => VCC,
	padio => ww_T(18));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q.S15~regout\,
	oe => VCC,
	padio => ww_T(19));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr3~combout\,
	oe => VCC,
	padio => ww_T(20));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr2~combout\,
	oe => VCC,
	padio => ww_T(21));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_T(22));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr1~0_combout\,
	oe => VCC,
	padio => ww_T(23));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr0~0_combout\,
	oe => VCC,
	padio => ww_T(24));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\T[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Q.S1~regout\,
	oe => VCC,
	padio => ww_T(25));
END structure;


