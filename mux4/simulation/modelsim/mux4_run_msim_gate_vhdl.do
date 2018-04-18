transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux4.vho}

vcom -93 -work work {D:/Preparacao3/4.6/testbench_mux4.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux4_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux4

add wave *
view structure
view signals
run -all
