transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/91sp2/projetos/sillyfunction.vhd}

vcom -93 -work work {D:/projetos/testbench/testbench_sillyfunction.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_sillyfunction

add wave *
view structure
view signals
run -all
