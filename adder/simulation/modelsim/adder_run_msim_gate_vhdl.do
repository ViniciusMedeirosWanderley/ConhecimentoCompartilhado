transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {adder.vho}

vcom -93 -work work {C:/Users/aluno/Desktop/Projetos/adder/testbench_adder.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=adder_vhd.sdo -L cyclone -L gate_work -L work -voptargs="+acc" testbench_adder

add wave *
view structure
view signals
run -all
