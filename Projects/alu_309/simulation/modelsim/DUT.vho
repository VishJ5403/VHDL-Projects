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

-- DATE "04/15/2022 15:15:12"

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
	input_vector : IN std_logic_vector(33 DOWNTO 0);
	output_vector : OUT std_logic_vector(16 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(33 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(16 DOWNTO 0);
SIGNAL \add_instance|op[0]~38_combout\ : std_logic;
SIGNAL \add_instance|op[1]~62_combout\ : std_logic;
SIGNAL \add_instance|op[1]~39_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|Equal0~0_combout\ : std_logic;
SIGNAL \add_instance|op[2]~40_combout\ : std_logic;
SIGNAL \add_instance|op[2]~41_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|op[3]~63_combout\ : std_logic;
SIGNAL \add_instance|op[3]~42_combout\ : std_logic;
SIGNAL \add_instance|carry~3_combout\ : std_logic;
SIGNAL \add_instance|op[4]~43_combout\ : std_logic;
SIGNAL \add_instance|op[4]~44_combout\ : std_logic;
SIGNAL \add_instance|carry~5_combout\ : std_logic;
SIGNAL \add_instance|carry~4_combout\ : std_logic;
SIGNAL \add_instance|op[5]~64_combout\ : std_logic;
SIGNAL \add_instance|op[5]~45_combout\ : std_logic;
SIGNAL \add_instance|carry~6_combout\ : std_logic;
SIGNAL \add_instance|op[6]~46_combout\ : std_logic;
SIGNAL \add_instance|op[6]~47_combout\ : std_logic;
SIGNAL \add_instance|carry~8_combout\ : std_logic;
SIGNAL \add_instance|carry~7_combout\ : std_logic;
SIGNAL \add_instance|op[7]~65_combout\ : std_logic;
SIGNAL \add_instance|op[7]~48_combout\ : std_logic;
SIGNAL \add_instance|carry~9_combout\ : std_logic;
SIGNAL \add_instance|op[8]~49_combout\ : std_logic;
SIGNAL \add_instance|op[8]~50_combout\ : std_logic;
SIGNAL \add_instance|carry~11_combout\ : std_logic;
SIGNAL \add_instance|carry~10_combout\ : std_logic;
SIGNAL \add_instance|op[9]~66_combout\ : std_logic;
SIGNAL \add_instance|op[9]~51_combout\ : std_logic;
SIGNAL \add_instance|carry~12_combout\ : std_logic;
SIGNAL \add_instance|op[10]~52_combout\ : std_logic;
SIGNAL \add_instance|op[10]~53_combout\ : std_logic;
SIGNAL \add_instance|carry~14_combout\ : std_logic;
SIGNAL \add_instance|carry~13_combout\ : std_logic;
SIGNAL \add_instance|op[11]~67_combout\ : std_logic;
SIGNAL \add_instance|op[11]~54_combout\ : std_logic;
SIGNAL \add_instance|carry~15_combout\ : std_logic;
SIGNAL \add_instance|op[12]~55_combout\ : std_logic;
SIGNAL \add_instance|op[12]~56_combout\ : std_logic;
SIGNAL \add_instance|carry~17_combout\ : std_logic;
SIGNAL \add_instance|carry~16_combout\ : std_logic;
SIGNAL \add_instance|op[13]~68_combout\ : std_logic;
SIGNAL \add_instance|op[13]~57_combout\ : std_logic;
SIGNAL \add_instance|carry~18_combout\ : std_logic;
SIGNAL \add_instance|op[14]~58_combout\ : std_logic;
SIGNAL \add_instance|op[14]~59_combout\ : std_logic;
SIGNAL \add_instance|op[15]~60_combout\ : std_logic;
SIGNAL \add_instance|op[15]~61_combout\ : std_logic;
SIGNAL \add_instance|carry~19_combout\ : std_logic;
SIGNAL \add_instance|carry~20_combout\ : std_logic;
SIGNAL \add_instance|C~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(33 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(33),
	combout => \input_vector~combout\(33));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: LC_X9_Y10_N9
\add_instance|op[0]~38\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~38_combout\ = ((\input_vector~combout\(0) & ((!\input_vector~combout\(16)))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(33)) # (\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~38_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(32),
	combout => \input_vector~combout\(32));

-- Location: LC_X9_Y10_N4
\add_instance|op[1]~62\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~62_combout\ = (\input_vector~combout\(16) & (!\input_vector~combout\(33) & (\input_vector~combout\(0) & !\input_vector~combout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~62_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X9_Y10_N8
\add_instance|op[1]~39\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~39_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(17)) # (!\input_vector~combout\(1))))) # (!\input_vector~combout\(33) & (\add_instance|op[1]~62_combout\ $ (\input_vector~combout\(1) $ 
-- (\input_vector~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2dde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[1]~62_combout\,
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~39_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: LC_X9_Y10_N0
\add_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(17)) # ((\input_vector~combout\(0) & \input_vector~combout\(16))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(17) & (\input_vector~combout\(0) & 
-- \input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~0_combout\);

-- Location: LC_X9_Y10_N5
\add_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal0~0_combout\ = ((\input_vector~combout\(33)) # ((\input_vector~combout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(33),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal0~0_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X9_Y10_N7
\add_instance|op[2]~40\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~40_combout\ = \input_vector~combout\(18) $ (\input_vector~combout\(2) $ (((\add_instance|carry~0_combout\ & !\add_instance|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \add_instance|carry~0_combout\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~40_combout\);

-- Location: LC_X9_Y10_N3
\add_instance|op[2]~41\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~41_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(2))) # (!\input_vector~combout\(18)))) # (!\input_vector~combout\(33) & (((\add_instance|op[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(33),
	datac => \add_instance|op[2]~40_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~41_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X9_Y10_N2
\add_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~2_combout\ = (\input_vector~combout\(18) & (((\add_instance|carry~0_combout\) # (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~2_combout\);

-- Location: LC_X9_Y10_N1
\add_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~1_combout\ = (((\add_instance|carry~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~1_combout\);

-- Location: LC_X9_Y8_N1
\add_instance|op[3]~63\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~63_combout\ = (!\input_vector~combout\(33) & (!\input_vector~combout\(32) & ((\add_instance|carry~2_combout\) # (\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(32),
	datac => \add_instance|carry~2_combout\,
	datad => \add_instance|carry~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~63_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19),
	combout => \input_vector~combout\(19));

-- Location: LC_X9_Y8_N6
\add_instance|op[3]~42\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~42_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(19))) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(3) $ (\add_instance|op[3]~63_combout\ $ 
-- (\input_vector~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "63be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(3),
	datac => \add_instance|op[3]~63_combout\,
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~42_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X9_Y8_N5
\add_instance|carry~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~3_combout\ = (\input_vector~combout\(3) & ((\add_instance|carry~1_combout\) # ((\add_instance|carry~2_combout\) # (\input_vector~combout\(19))))) # (!\input_vector~combout\(3) & (\input_vector~combout\(19) & 
-- ((\add_instance|carry~1_combout\) # (\add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~1_combout\,
	datab => \input_vector~combout\(3),
	datac => \add_instance|carry~2_combout\,
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~3_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20),
	combout => \input_vector~combout\(20));

-- Location: LC_X9_Y8_N2
\add_instance|op[4]~43\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~43_combout\ = \input_vector~combout\(4) $ (\input_vector~combout\(20) $ (((!\add_instance|Equal0~0_combout\ & \add_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|Equal0~0_combout\,
	datac => \add_instance|carry~3_combout\,
	datad => \input_vector~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~43_combout\);

-- Location: LC_X9_Y8_N3
\add_instance|op[4]~44\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~44_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(20)) # (!\input_vector~combout\(4))))) # (!\input_vector~combout\(33) & (\add_instance|op[4]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4eee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \add_instance|op[4]~43_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~44_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21),
	combout => \input_vector~combout\(21));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X9_Y8_N0
\add_instance|carry~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~5_combout\ = ((\input_vector~combout\(20) & ((\add_instance|carry~3_combout\) # (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~3_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~5_combout\);

-- Location: LC_X9_Y8_N7
\add_instance|carry~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~4_combout\ = (\add_instance|carry~3_combout\ & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~3_combout\,
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~4_combout\);

-- Location: LC_X9_Y8_N8
\add_instance|op[5]~64\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~64_combout\ = (!\input_vector~combout\(33) & (!\input_vector~combout\(32) & ((\add_instance|carry~5_combout\) # (\add_instance|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(32),
	datac => \add_instance|carry~5_combout\,
	datad => \add_instance|carry~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~64_combout\);

-- Location: LC_X9_Y8_N9
\add_instance|op[5]~45\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~45_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(5))) # (!\input_vector~combout\(21)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(21) $ (\input_vector~combout\(5) $ 
-- (\add_instance|op[5]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(21),
	datac => \input_vector~combout\(5),
	datad => \add_instance|op[5]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~45_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22),
	combout => \input_vector~combout\(22));

-- Location: LC_X9_Y8_N4
\add_instance|carry~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~6_combout\ = (\input_vector~combout\(5) & ((\add_instance|carry~4_combout\) # ((\add_instance|carry~5_combout\) # (\input_vector~combout\(21))))) # (!\input_vector~combout\(5) & (\input_vector~combout\(21) & 
-- ((\add_instance|carry~4_combout\) # (\add_instance|carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|carry~4_combout\,
	datac => \add_instance|carry~5_combout\,
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~6_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X6_Y8_N7
\add_instance|op[6]~46\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~46_combout\ = \input_vector~combout\(22) $ (\input_vector~combout\(6) $ (((\add_instance|carry~6_combout\ & !\add_instance|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "39c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~6_combout\,
	datab => \input_vector~combout\(22),
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~46_combout\);

-- Location: LC_X6_Y8_N4
\add_instance|op[6]~47\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~47_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(6))) # (!\input_vector~combout\(22)))) # (!\input_vector~combout\(33) & (((\add_instance|op[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(22),
	datac => \add_instance|op[6]~46_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~47_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23),
	combout => \input_vector~combout\(23));

-- Location: LC_X6_Y8_N8
\add_instance|carry~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~8_combout\ = ((\input_vector~combout\(22) & ((\add_instance|carry~6_combout\) # (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(22),
	datac => \add_instance|carry~6_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~8_combout\);

-- Location: LC_X6_Y8_N6
\add_instance|carry~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~7_combout\ = ((\input_vector~combout\(6) & (\add_instance|carry~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|carry~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~7_combout\);

-- Location: LC_X6_Y8_N9
\add_instance|op[7]~65\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~65_combout\ = (!\input_vector~combout\(32) & (!\input_vector~combout\(33) & ((\add_instance|carry~8_combout\) # (\add_instance|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~8_combout\,
	datab => \input_vector~combout\(32),
	datac => \add_instance|carry~7_combout\,
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~65_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X6_Y8_N5
\add_instance|op[7]~48\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~48_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(7))) # (!\input_vector~combout\(23)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(23) $ (\add_instance|op[7]~65_combout\ $ 
-- (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(23),
	datab => \add_instance|op[7]~65_combout\,
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~48_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X6_Y8_N2
\add_instance|carry~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~9_combout\ = (\input_vector~combout\(23) & ((\input_vector~combout\(7)) # ((\add_instance|carry~7_combout\) # (\add_instance|carry~8_combout\)))) # (!\input_vector~combout\(23) & (\input_vector~combout\(7) & 
-- ((\add_instance|carry~7_combout\) # (\add_instance|carry~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(23),
	datab => \input_vector~combout\(7),
	datac => \add_instance|carry~7_combout\,
	datad => \add_instance|carry~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~9_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24),
	combout => \input_vector~combout\(24));

-- Location: LC_X7_Y9_N2
\add_instance|op[8]~49\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[8]~49_combout\ = \input_vector~combout\(8) $ (\input_vector~combout\(24) $ (((!\add_instance|Equal0~0_combout\ & \add_instance|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|Equal0~0_combout\,
	datac => \add_instance|carry~9_combout\,
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[8]~49_combout\);

-- Location: LC_X7_Y9_N6
\add_instance|op[8]~50\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[8]~50_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(24))) # (!\input_vector~combout\(8)))) # (!\input_vector~combout\(33) & (((\add_instance|op[8]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[8]~49_combout\,
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[8]~50_combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25),
	combout => \input_vector~combout\(25));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X7_Y9_N4
\add_instance|carry~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~11_combout\ = ((\input_vector~combout\(24) & ((\input_vector~combout\(8)) # (\add_instance|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \add_instance|carry~9_combout\,
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~11_combout\);

-- Location: LC_X7_Y9_N7
\add_instance|carry~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~10_combout\ = (((\add_instance|carry~9_combout\ & \input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|carry~9_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~10_combout\);

-- Location: LC_X7_Y9_N8
\add_instance|op[9]~66\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[9]~66_combout\ = (!\input_vector~combout\(32) & (!\input_vector~combout\(33) & ((\add_instance|carry~11_combout\) # (\add_instance|carry~10_combout\))))

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
	dataa => \add_instance|carry~11_combout\,
	datab => \input_vector~combout\(32),
	datac => \input_vector~combout\(33),
	datad => \add_instance|carry~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[9]~66_combout\);

-- Location: LC_X7_Y9_N1
\add_instance|op[9]~51\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[9]~51_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(9))) # (!\input_vector~combout\(25)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(25) $ (\input_vector~combout\(9) $ 
-- (\add_instance|op[9]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(25),
	datac => \input_vector~combout\(9),
	datad => \add_instance|op[9]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[9]~51_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26),
	combout => \input_vector~combout\(26));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X7_Y9_N5
\add_instance|carry~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~12_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(25)) # ((\add_instance|carry~10_combout\) # (\add_instance|carry~11_combout\)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(25) & 
-- ((\add_instance|carry~10_combout\) # (\add_instance|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(25),
	datac => \add_instance|carry~10_combout\,
	datad => \add_instance|carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~12_combout\);

-- Location: LC_X7_Y7_N3
\add_instance|op[10]~52\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[10]~52_combout\ = \input_vector~combout\(26) $ (\input_vector~combout\(10) $ (((!\add_instance|Equal0~0_combout\ & \add_instance|carry~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "693c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal0~0_combout\,
	datab => \input_vector~combout\(26),
	datac => \input_vector~combout\(10),
	datad => \add_instance|carry~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[10]~52_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|op[10]~53\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[10]~53_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(26)) # (!\input_vector~combout\(10))))) # (!\input_vector~combout\(33) & (\add_instance|op[10]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2eee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[10]~52_combout\,
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[10]~53_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(27),
	combout => \input_vector~combout\(27));

-- Location: LC_X7_Y7_N4
\add_instance|carry~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~14_combout\ = ((\input_vector~combout\(26) & ((\input_vector~combout\(10)) # (\add_instance|carry~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(26),
	datac => \input_vector~combout\(10),
	datad => \add_instance|carry~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~14_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|carry~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~13_combout\ = (((\input_vector~combout\(10) & \add_instance|carry~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(10),
	datad => \add_instance|carry~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~13_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|op[11]~67\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[11]~67_combout\ = (!\input_vector~combout\(33) & (!\input_vector~combout\(32) & ((\add_instance|carry~14_combout\) # (\add_instance|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~14_combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|carry~13_combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[11]~67_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|op[11]~54\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[11]~54_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(27))) # (!\input_vector~combout\(11)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(11) $ (\input_vector~combout\(27) $ 
-- (\add_instance|op[11]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7976",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(27),
	datac => \input_vector~combout\(33),
	datad => \add_instance|op[11]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[11]~54_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(28),
	combout => \input_vector~combout\(28));

-- Location: LC_X7_Y7_N1
\add_instance|carry~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~15_combout\ = (\input_vector~combout\(27) & ((\add_instance|carry~14_combout\) # ((\input_vector~combout\(11)) # (\add_instance|carry~13_combout\)))) # (!\input_vector~combout\(27) & (\input_vector~combout\(11) & 
-- ((\add_instance|carry~14_combout\) # (\add_instance|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~14_combout\,
	datab => \input_vector~combout\(27),
	datac => \input_vector~combout\(11),
	datad => \add_instance|carry~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~15_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X7_Y7_N2
\add_instance|op[12]~55\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[12]~55_combout\ = \input_vector~combout\(28) $ (\input_vector~combout\(12) $ (((\add_instance|carry~15_combout\ & !\add_instance|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(28),
	datab => \add_instance|carry~15_combout\,
	datac => \add_instance|Equal0~0_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[12]~55_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|op[12]~56\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[12]~56_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(12))) # (!\input_vector~combout\(28)))) # (!\input_vector~combout\(33) & (((\add_instance|op[12]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(28),
	datab => \add_instance|op[12]~55_combout\,
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[12]~56_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(29),
	combout => \input_vector~combout\(29));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X7_Y7_N8
\add_instance|carry~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~17_combout\ = (\input_vector~combout\(28) & ((\add_instance|carry~15_combout\) # ((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(28),
	datab => \add_instance|carry~15_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~17_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|carry~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~16_combout\ = ((\add_instance|carry~15_combout\ & ((\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|carry~15_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~16_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|op[13]~68\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[13]~68_combout\ = (!\input_vector~combout\(32) & (!\input_vector~combout\(33) & ((\add_instance|carry~17_combout\) # (\add_instance|carry~16_combout\))))

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
	dataa => \add_instance|carry~17_combout\,
	datab => \input_vector~combout\(32),
	datac => \input_vector~combout\(33),
	datad => \add_instance|carry~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[13]~68_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|op[13]~57\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[13]~57_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(13))) # (!\input_vector~combout\(29)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(29) $ (\input_vector~combout\(13) $ 
-- (\add_instance|op[13]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7976",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(29),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(33),
	datad => \add_instance|op[13]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[13]~57_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X9_Y7_N5
\add_instance|carry~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~18_combout\ = (\input_vector~combout\(29) & ((\input_vector~combout\(13)) # ((\add_instance|carry~17_combout\) # (\add_instance|carry~16_combout\)))) # (!\input_vector~combout\(29) & (\input_vector~combout\(13) & 
-- ((\add_instance|carry~17_combout\) # (\add_instance|carry~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(29),
	datab => \input_vector~combout\(13),
	datac => \add_instance|carry~17_combout\,
	datad => \add_instance|carry~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~18_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(30),
	combout => \input_vector~combout\(30));

-- Location: LC_X9_Y7_N1
\add_instance|op[14]~58\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[14]~58_combout\ = \input_vector~combout\(14) $ (\input_vector~combout\(30) $ (((!\add_instance|Equal0~0_combout\ & \add_instance|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal0~0_combout\,
	datab => \input_vector~combout\(14),
	datac => \add_instance|carry~18_combout\,
	datad => \input_vector~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[14]~58_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|op[14]~59\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[14]~59_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(30)) # (!\input_vector~combout\(14))))) # (!\input_vector~combout\(33) & (\add_instance|op[14]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4eee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \add_instance|op[14]~58_combout\,
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[14]~59_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X9_Y7_N9
\add_instance|op[15]~60\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[15]~60_combout\ = (!\input_vector~combout\(32) & ((\input_vector~combout\(30) & ((\input_vector~combout\(14)) # (\add_instance|carry~18_combout\))) # (!\input_vector~combout\(30) & (\input_vector~combout\(14) & 
-- \add_instance|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(30),
	datab => \input_vector~combout\(14),
	datac => \add_instance|carry~18_combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[15]~60_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(31),
	combout => \input_vector~combout\(31));

-- Location: LC_X9_Y7_N0
\add_instance|op[15]~61\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[15]~61_combout\ = (\input_vector~combout\(33) & (((!\input_vector~combout\(31))) # (!\input_vector~combout\(15)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(15) $ (\add_instance|op[15]~60_combout\ $ 
-- (\input_vector~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59f6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \add_instance|op[15]~60_combout\,
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[15]~61_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|carry~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~19_combout\ = (\input_vector~combout\(30) & (((\input_vector~combout\(14)) # (\add_instance|carry~18_combout\)))) # (!\input_vector~combout\(30) & (((\input_vector~combout\(14) & \add_instance|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	datad => \add_instance|carry~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~19_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|carry~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~20_combout\ = (\input_vector~combout\(15) & (((\add_instance|carry~19_combout\) # (\input_vector~combout\(31))))) # (!\input_vector~combout\(15) & (((\add_instance|carry~19_combout\ & \input_vector~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datac => \add_instance|carry~19_combout\,
	datad => \input_vector~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~20_combout\);

-- Location: LC_X9_Y10_N6
\add_instance|C\ : maxv_lcell
-- Equation(s):
-- \add_instance|C~combout\ = ((\add_instance|Equal0~0_combout\ & ((\add_instance|C~combout\))) # (!\add_instance|Equal0~0_combout\ & (\add_instance|carry~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|carry~20_combout\,
	datac => \add_instance|C~combout\,
	datad => \add_instance|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C~combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[0]~38_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[1]~39_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[2]~41_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[3]~42_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[4]~44_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[5]~45_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[6]~47_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[7]~48_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[8]~50_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[9]~51_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[10]~53_combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[11]~54_combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[12]~56_combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[13]~57_combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[14]~59_combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[15]~61_combout\,
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C~combout\,
	oe => VCC,
	padio => ww_output_vector(16));
END structure;


