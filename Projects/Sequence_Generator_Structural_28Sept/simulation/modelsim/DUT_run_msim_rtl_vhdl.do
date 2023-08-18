transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/FF_beh.vhdl}
vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/DUT.vhdl}
vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/TopLevel.vhdl}
vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/Sequence_Generator_Structural.vhdl}

vcom -93 -work work {D:/Projects/Sequence_Generator_Structural_28Sept/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
