transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sillyfunction.vho}

vcom -93 -work work {C:/altera/91sp2/quartus/projetos/testbench_sillyfunction.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=sillyfunction_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_sillyfunction

add wave *
view structure
view signals
run -all
