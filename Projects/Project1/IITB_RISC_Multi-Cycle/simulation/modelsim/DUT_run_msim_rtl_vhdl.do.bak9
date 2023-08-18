transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/alu.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/ccr.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/check.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/check_reg.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/fsm.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/ls.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/mem.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/mux_1.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/mux_2.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/mux_3.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/reg_16.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/rf.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/se.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/data_path.VHDL}
vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/DUT.VHDL}

vcom -93 -work work {C:/Users/hp/Desktop/IITB_RISC_Multi-Cycle/test.VHDL}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
