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

-- DATE "09/19/2021 12:14:20"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(10 DOWNTO 0);
SIGNAL \add_instance|d1|borrow~0_combout\ : std_logic;
SIGNAL \add_instance|d1|borrow~1_combout\ : std_logic;
SIGNAL \add_instance|d1|borrow~2_combout\ : std_logic;
SIGNAL \add_instance|d1|division:pr[7][12]~0_combout\ : std_logic;
SIGNAL \add_instance|d1|borrow~3_combout\ : std_logic;
SIGNAL \add_instance|d1|RQ[0]~1_combout\ : std_logic;
SIGNAL \add_instance|d1|RQ[13]~4_combout\ : std_logic;
SIGNAL \add_instance|d1|division:pr[7][10]~0_combout\ : std_logic;
SIGNAL \add_instance|d1|division:pr[7][11]~0_combout\ : std_logic;
SIGNAL \add_instance|d2|borrow~1_combout\ : std_logic;
SIGNAL \add_instance|d2|borrow~0_combout\ : std_logic;
SIGNAL \add_instance|d1|RQ[12]~2_combout\ : std_logic;
SIGNAL \add_instance|d1|RQ[11]~3_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[0]~0_combout\ : std_logic;
SIGNAL \add_instance|d1|RQ[14]~0_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[0]~1_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[9]~2_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[10]~3_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[11]~4_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[12]~5_combout\ : std_logic;
SIGNAL \add_instance|d2|RQ[13]~6_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|d1|ALT_INV_RQ[0]~1_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|d1|ALT_INV_RQ[0]~1_combout\ <= NOT \add_instance|d1|RQ[0]~1_combout\;

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X9_Y7_N2
\add_instance|d1|borrow~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|borrow~0_combout\ = (\input_vector~combout\(3)) # ((\input_vector~combout\(5)) # ((\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|borrow~0_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|d1|borrow~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|borrow~1_combout\ = (\input_vector~combout\(6) & (((\input_vector~combout\(7) & \add_instance|d1|borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \add_instance|d1|borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|borrow~1_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|d1|borrow~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|borrow~2_combout\ = (\input_vector~combout\(2)) # ((\input_vector~combout\(4)) # (\input_vector~combout\(3) $ (\add_instance|d1|borrow~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \add_instance|d1|borrow~1_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|borrow~2_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|d1|division:pr[7][12]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|division:pr[7][12]~0_combout\ = ((\input_vector~combout\(3)) # ((\input_vector~combout\(4)) # (!\input_vector~combout\(7)))) # (!\input_vector~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|division:pr[7][12]~0_combout\);

-- Location: LC_X9_Y7_N9
\add_instance|d1|borrow~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|borrow~3_combout\ = (((!\input_vector~combout\(5)) # (!\add_instance|d1|division:pr[7][12]~0_combout\)) # (!\add_instance|d1|borrow~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|d1|borrow~2_combout\,
	datac => \add_instance|d1|division:pr[7][12]~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|borrow~3_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|d1|RQ[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|RQ[0]~1_combout\ = (\input_vector~combout\(6) & ((\input_vector~combout\(7) & ((\add_instance|d1|borrow~0_combout\))) # (!\input_vector~combout\(7) & (\add_instance|d1|borrow~3_combout\)))) # (!\input_vector~combout\(6) & 
-- (((!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d1|borrow~3_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|d1|borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|RQ[0]~1_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|d1|RQ[13]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|RQ[13]~4_combout\ = (\add_instance|d1|RQ[0]~1_combout\ & (((\add_instance|d1|division:pr[7][12]~0_combout\ & \input_vector~combout\(5))))) # (!\add_instance|d1|RQ[0]~1_combout\ & (\add_instance|d1|borrow~2_combout\ $ 
-- (((\add_instance|d1|division:pr[7][12]~0_combout\ & \input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d1|RQ[0]~1_combout\,
	datab => \add_instance|d1|borrow~2_combout\,
	datac => \add_instance|d1|division:pr[7][12]~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|RQ[13]~4_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|d1|division:pr[7][10]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|division:pr[7][10]~0_combout\ = \input_vector~combout\(3) $ (((\input_vector~combout\(6) & (\input_vector~combout\(7) & \add_instance|d1|borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(7),
	datad => \add_instance|d1|borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|division:pr[7][10]~0_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|d1|division:pr[7][11]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|division:pr[7][11]~0_combout\ = (\input_vector~combout\(4) $ (((!\input_vector~combout\(3) & \add_instance|d1|borrow~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \add_instance|d1|borrow~1_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|division:pr[7][11]~0_combout\);

-- Location: LC_X7_Y7_N1
\add_instance|d2|borrow~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|borrow~1_combout\ = (!\add_instance|d1|division:pr[7][10]~0_combout\ & (!\add_instance|d1|division:pr[7][11]~0_combout\ & (\add_instance|d1|RQ[0]~1_combout\ $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d1|division:pr[7][10]~0_combout\,
	datab => \add_instance|d1|RQ[0]~1_combout\,
	datac => \input_vector~combout\(2),
	datad => \add_instance|d1|division:pr[7][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|borrow~1_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|d2|borrow~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|borrow~0_combout\ = ((\input_vector~combout\(1)) # (\input_vector~combout\(2) $ (!\add_instance|d1|RQ[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \add_instance|d1|RQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|borrow~0_combout\);

-- Location: LC_X7_Y7_N4
\add_instance|d1|RQ[12]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|RQ[12]~2_combout\ = \add_instance|d1|division:pr[7][11]~0_combout\ $ (((!\add_instance|d1|division:pr[7][10]~0_combout\ & (!\add_instance|d1|RQ[0]~1_combout\ & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d1|division:pr[7][10]~0_combout\,
	datab => \add_instance|d1|RQ[0]~1_combout\,
	datac => \input_vector~combout\(2),
	datad => \add_instance|d1|division:pr[7][11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|RQ[12]~2_combout\);

-- Location: LC_X7_Y7_N2
\add_instance|d1|RQ[11]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|RQ[11]~3_combout\ = \input_vector~combout\(3) $ (\add_instance|d1|borrow~1_combout\ $ (((!\add_instance|d1|RQ[0]~1_combout\ & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "56a9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \add_instance|d1|RQ[0]~1_combout\,
	datac => \input_vector~combout\(2),
	datad => \add_instance|d1|borrow~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|RQ[11]~3_combout\);

-- Location: LC_X7_Y7_N3
\add_instance|d2|RQ[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[0]~0_combout\ = ((\add_instance|d1|RQ[12]~2_combout\ & ((\add_instance|d2|borrow~0_combout\) # (\add_instance|d1|RQ[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d2|borrow~0_combout\,
	datac => \add_instance|d1|RQ[12]~2_combout\,
	datad => \add_instance|d1|RQ[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[0]~0_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|d1|RQ[14]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|d1|RQ[14]~0_combout\ = (\input_vector~combout\(6) & (\add_instance|d1|borrow~3_combout\ & ((!\add_instance|d1|borrow~0_combout\) # (!\input_vector~combout\(7))))) # (!\input_vector~combout\(6) & (!\add_instance|d1|borrow~3_combout\ & 
-- (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1898",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|d1|borrow~3_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|d1|borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d1|RQ[14]~0_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|d2|RQ[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[0]~1_combout\ = (\add_instance|d1|RQ[13]~4_combout\ & ((\add_instance|d2|RQ[0]~0_combout\) # ((\add_instance|d2|borrow~1_combout\ & \add_instance|d1|RQ[14]~0_combout\)))) # (!\add_instance|d1|RQ[13]~4_combout\ & 
-- (((\add_instance|d1|RQ[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d1|RQ[13]~4_combout\,
	datab => \add_instance|d2|borrow~1_combout\,
	datac => \add_instance|d2|RQ[0]~0_combout\,
	datad => \add_instance|d1|RQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[0]~1_combout\);

-- Location: LC_X6_Y9_N2
\add_instance|d2|RQ[9]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[9]~2_combout\ = (\input_vector~combout\(1) $ (((\add_instance|d2|RQ[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datad => \add_instance|d2|RQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[9]~2_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|d2|RQ[10]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[10]~3_combout\ = \input_vector~combout\(2) $ (\add_instance|d1|RQ[0]~1_combout\ $ (((\input_vector~combout\(1)) # (!\add_instance|d2|RQ[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d22d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d2|RQ[0]~1_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \add_instance|d1|RQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[10]~3_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|d2|RQ[11]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[11]~4_combout\ = (\add_instance|d1|RQ[11]~3_combout\ $ (((!\add_instance|d2|borrow~0_combout\ & \add_instance|d2|RQ[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|d1|RQ[11]~3_combout\,
	datac => \add_instance|d2|borrow~0_combout\,
	datad => \add_instance|d2|RQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[11]~4_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|d2|RQ[12]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[12]~5_combout\ = \add_instance|d1|RQ[12]~2_combout\ $ (((\add_instance|d2|RQ[0]~1_combout\ & ((\add_instance|d2|borrow~0_combout\) # (\add_instance|d1|RQ[11]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d2|borrow~0_combout\,
	datab => \add_instance|d1|RQ[11]~3_combout\,
	datac => \add_instance|d1|RQ[12]~2_combout\,
	datad => \add_instance|d2|RQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[12]~5_combout\);

-- Location: LC_X7_Y7_N8
\add_instance|d2|RQ[13]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|d2|RQ[13]~6_combout\ = (\add_instance|d2|RQ[0]~0_combout\ & (!\add_instance|d1|RQ[13]~4_combout\ & ((\add_instance|d1|RQ[14]~0_combout\)))) # (!\add_instance|d2|RQ[0]~0_combout\ & (\add_instance|d1|RQ[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6644",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|d2|RQ[0]~0_combout\,
	datab => \add_instance|d1|RQ[13]~4_combout\,
	datad => \add_instance|d1|RQ[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|d2|RQ[13]~6_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \input_vector~combout\(0),
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[9]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[10]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[11]~4_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[12]~5_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[13]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d2|RQ[0]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d1|ALT_INV_RQ[0]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|d1|borrow~1_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(10));
END structure;

