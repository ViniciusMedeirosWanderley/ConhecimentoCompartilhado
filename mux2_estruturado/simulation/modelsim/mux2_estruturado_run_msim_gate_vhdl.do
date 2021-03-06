transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux2_estruturado.vho}

vcom -93 -work work {C:/Users/vinic/Dropbox/3 Periodo/Circuitos L�gicos/Prepara��o4/mux2_estruturado/testbench_mux2_estruturado/testbench_mux2_estruturado.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux2_estruturado_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux2_estruturado

add wave *
view structure
view signals
run -all
