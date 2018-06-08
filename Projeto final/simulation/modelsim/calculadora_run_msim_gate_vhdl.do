transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {calculadora.vho}

vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/testbench/testbench_calculadora.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=calculadora_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_calculadora

add wave *
view structure
view signals
run -all
