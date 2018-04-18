transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux4_estruturado.vho}

vcom -93 -work work {C:/Users/vinic/Dropbox/3 Periodo/Circuitos Lógicos/Preparação4/mux4_estruturado/testbench_mux4_estruturado/testbench_mux4_estruturado.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux4_estruturado_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux4_estruturado

add wave *
view structure
view signals
run -all
