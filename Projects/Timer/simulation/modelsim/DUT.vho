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

-- DATE "10/24/2021 12:54:53"

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

ENTITY 	timer_controller IS
    PORT (
	inp_switch : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic;
	clock_50 : IN std_logic;
	clock_1 : IN std_logic;
	out_LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END timer_controller;

-- Design Ports Information


ARCHITECTURE structure OF timer_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp_switch : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_out_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \y_present.t2~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \y_present.t1~regout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \y_present.t3~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \y_present~7_combout\ : std_logic;
SIGNAL \y_present.rst~regout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \inp_switch~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_inp_switch <= inp_switch;
ww_reset <= reset;
ww_clock_50 <= clock_50;
ww_clock_1 <= clock_1;
out_LED <= ww_out_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(2),
	combout => \inp_switch~combout\(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(1),
	combout => \inp_switch~combout\(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(0),
	combout => \inp_switch~combout\(0));

-- Location: LC_X7_Y4_N6
\Selector3~0\ : maxv_lcell
-- Equation(s):
-- \Selector3~0_combout\ = (!\reset~combout\ & ((\inp_switch~combout\(2)) # ((\inp_switch~combout\(1)) # (\inp_switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3332",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(2),
	datab => \reset~combout\,
	datac => \inp_switch~combout\(1),
	datad => \inp_switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0_combout\);

-- Location: LC_X6_Y4_N7
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = (\inp_switch~combout\(1) & ((\y_present.t2~regout\) # ((!\inp_switch~combout\(2) & !\inp_switch~combout\(0))))) # (!\inp_switch~combout\(1) & (\y_present.t2~regout\ & (\inp_switch~combout\(2) $ (!\inp_switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(1),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(0),
	datad => \y_present.t2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X6_Y4_N8
\y_present.t2\ : maxv_lcell
-- Equation(s):
-- \y_present.t2~regout\ = DFFEAS((((\Selector3~0_combout\ & \Selector2~0_combout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.t2~regout\);

-- Location: LC_X7_Y4_N2
\Selector4~0\ : maxv_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (\inp_switch~combout\(0) & ((\y_present.t1~regout\) # ((!\inp_switch~combout\(1) & !\inp_switch~combout\(2))))) # (!\inp_switch~combout\(0) & (\inp_switch~combout\(1) & (\inp_switch~combout\(2) & \y_present.t1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	datad => \y_present.t1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X7_Y4_N3
\y_present.t1\ : maxv_lcell
-- Equation(s):
-- \y_present.t1~regout\ = DFFEAS(((!\reset~combout\ & ((\Selector4~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \reset~combout\,
	datad => \Selector4~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.t1~regout\);

-- Location: LC_X7_Y4_N8
\Selector3~1\ : maxv_lcell
-- Equation(s):
-- \Selector3~1_combout\ = (\inp_switch~combout\(2) & ((\y_present.t3~regout\) # ((!\inp_switch~combout\(0) & !\inp_switch~combout\(1))))) # (!\inp_switch~combout\(2) & (\y_present.t3~regout\ & (\inp_switch~combout\(0) $ (!\inp_switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f910",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	datad => \y_present.t3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~1_combout\);

-- Location: LC_X7_Y4_N9
\y_present.t3\ : maxv_lcell
-- Equation(s):
-- \y_present.t3~regout\ = DFFEAS((((\Selector3~0_combout\ & \Selector3~1_combout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector3~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.t3~regout\);

-- Location: LC_X6_Y4_N9
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (!\inp_switch~combout\(0) & (!\inp_switch~combout\(2) & ((\y_present.t1~regout\) # (\y_present.t3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.t1~regout\,
	datab => \y_present.t3~regout\,
	datac => \inp_switch~combout\(0),
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X6_Y4_N4
\Selector7~1\ : maxv_lcell
-- Equation(s):
-- \Selector7~1_combout\ = (\inp_switch~combout\(1)) # ((\inp_switch~combout\(0) $ (!\inp_switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(0),
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1_combout\);

-- Location: LC_X7_Y4_N0
\y_present~7\ : maxv_lcell
-- Equation(s):
-- \y_present~7_combout\ = (!\y_present.rst~regout\ & ((\inp_switch~combout\(0) & ((\inp_switch~combout\(1)) # (\inp_switch~combout\(2)))) # (!\inp_switch~combout\(0) & (\inp_switch~combout\(1) & \inp_switch~combout\(2)))))

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
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(1),
	datac => \inp_switch~combout\(2),
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y_present~7_combout\);

-- Location: LC_X7_Y4_N1
\y_present.rst\ : maxv_lcell
-- Equation(s):
-- \y_present.rst~regout\ = DFFEAS((((\Selector3~0_combout\ & !\y_present~7_combout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \Selector3~0_combout\,
	datad => \y_present~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.rst~regout\);

-- Location: LC_X6_Y4_N5
\Selector7~2\ : maxv_lcell
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~0_combout\) # ((\Selector7~1_combout\ & ((\y_present.t2~regout\) # (!\y_present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.t2~regout\,
	datab => \Selector7~0_combout\,
	datac => \Selector7~1_combout\,
	datad => \y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~2_combout\);

-- Location: LC_X7_Y4_N7
\Selector6~1\ : maxv_lcell
-- Equation(s):
-- \Selector6~1_combout\ = (\y_present.rst~regout\ & (\y_present.t1~regout\ & (\inp_switch~combout\(1) $ (\inp_switch~combout\(2))))) # (!\y_present.rst~regout\ & (\inp_switch~combout\(1) $ (((\inp_switch~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(1),
	datab => \y_present.rst~regout\,
	datac => \y_present.t1~regout\,
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~1_combout\);

-- Location: LC_X7_Y4_N4
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (\inp_switch~combout\(1) & ((\y_present.t3~regout\) # ((\y_present.t2~regout\)))) # (!\inp_switch~combout\(1) & (\inp_switch~combout\(2) & ((\y_present.t3~regout\) # (\y_present.t2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fca8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(1),
	datab => \y_present.t3~regout\,
	datac => \y_present.t2~regout\,
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X7_Y4_N5
\Selector6~2\ : maxv_lcell
-- Equation(s):
-- \Selector6~2_combout\ = ((\Selector6~0_combout\) # ((!\inp_switch~combout\(0) & \Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datac => \Selector6~1_combout\,
	datad => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~2_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_1);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector7~2_combout\,
	oe => VCC,
	padio => ww_out_LED(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector6~2_combout\,
	oe => VCC,
	padio => ww_out_LED(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector6~2_combout\,
	oe => VCC,
	padio => ww_out_LED(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector4~0_combout\,
	oe => VCC,
	padio => ww_out_LED(3));
END structure;


