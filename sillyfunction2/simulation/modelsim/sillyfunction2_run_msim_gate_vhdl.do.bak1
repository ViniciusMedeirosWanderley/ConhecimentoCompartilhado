transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sillyfunction2.vho}

vcom -93 -work work {D:/projeto2/testbench/testbench_sillyfunction2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=sillyfunction2_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_sillyfunction2

add wave *
view structure
view signals
run -all
