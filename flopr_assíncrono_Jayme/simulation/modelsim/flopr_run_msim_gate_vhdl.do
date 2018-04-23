transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {flopr.vho}

vcom -93 -work work {D:/Relatório 5/flopr/testbench/testbench_flopr.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=flopr_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_flopr

add wave *
view structure
view signals
run -all
