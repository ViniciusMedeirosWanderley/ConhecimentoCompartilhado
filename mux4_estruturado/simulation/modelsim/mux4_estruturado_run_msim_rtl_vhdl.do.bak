transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Preparação4/mux4_estruturado/mux4_estruturado.vhd}
vcom -93 -work work {D:/Preparação4/mux4_estruturado/mux2.vhd}

vcom -93 -work work {D:/Preparação4/mux4_estruturado/testbench_mux4_estruturado/testbench_mux4_estruturado.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_mux4_estruturado

add wave *
view structure
view signals
run -all
