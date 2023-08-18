transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Projects/4BitMUX41/DUT.vhdl}
vcom -93 -work work {D:/Projects/4BitMUX41/Gates.vhdl}
vcom -93 -work work {D:/Projects/4BitMUX41/MUX21.vhdl}
vcom -93 -work work {D:/Projects/4BitMUX41/MUX41.vhdl}
vcom -93 -work work {D:/Projects/4BitMUX41/BMUX.vhdl}

vcom -93 -work work {D:/Projects/4BitMUX41/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
