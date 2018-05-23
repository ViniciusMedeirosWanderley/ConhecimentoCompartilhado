transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/Projetos/adder/adder.vhd}

vcom -93 -work work {C:/Users/aluno/Desktop/Projetos/adder/testbench_adder.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cyclone -L rtl_work -L work -voptargs="+acc" testbench_adder

add wave *
view structure
view signals
run -all
