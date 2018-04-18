transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux2.vho}

vcom -93 -work work {D:/Preparacao3/4.5/testbench_mux2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux2_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux2

add wave *
view structure
view signals
run -all
