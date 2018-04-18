transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {tristate.vho}

vcom -93 -work work {D:/Preparação4/tristate/testbench/testbench_tristate.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=tristate_vhd.sdo -L stratixii -L gate_work -L work -voptargs="+acc" testbench_tristate

add wave *
view structure
view signals
run -all
