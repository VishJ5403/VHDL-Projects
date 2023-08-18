transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DUT.vho}

vcom -93 -work work {C:/Users/visha/Downloads/p1u (3)/p1u/test.VHDL}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT0=DUT_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
