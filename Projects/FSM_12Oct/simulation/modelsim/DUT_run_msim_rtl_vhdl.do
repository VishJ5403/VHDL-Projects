transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Projects/FSM_12Oct/cov_detect.vhdl}
vcom -93 -work work {D:/Projects/FSM_12Oct/lcd_controller.vhdl}
vcom -93 -work work {D:/Projects/FSM_12Oct/Test.vhdl}

