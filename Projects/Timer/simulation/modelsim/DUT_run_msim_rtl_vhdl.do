transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Projects/Timer/timer_controller.vhdl}

vcom -93 -work work {D:/Projects/Timer/timer_controller_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  time_controller_tb

add wave *
view structure
view signals
run 60 us
