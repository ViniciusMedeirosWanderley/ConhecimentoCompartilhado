transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Relatório 4/mux4_estruturado/mux4_estruturado.vhd}
vcom -93 -work work {D:/Relatório 4/mux4_estruturado/mux2.vhd}

