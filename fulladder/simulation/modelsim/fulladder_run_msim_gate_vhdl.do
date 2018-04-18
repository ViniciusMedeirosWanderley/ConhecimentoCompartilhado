transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {fulladder.vho}

vcom -93 -work work {D:/Preparacao3/4.7/testbench_fulladder.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=fulladder_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_fulladder

add wave *
view structure
view signals
run -all
