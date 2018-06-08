transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/CIRCUITOS/ProjetoFinal/CLA_16bits[fatorada]/vuafatorada.vhd}
vcom -93 -work work {D:/CIRCUITOS/ProjetoFinal/CLA_16bits[fatorada]/cla16.vhd}
vcom -93 -work work {D:/CIRCUITOS/ProjetoFinal/CLA_16bits[fatorada]/cla4_fatorada.vhd}
vcom -93 -work work {D:/CIRCUITOS/ProjetoFinal/CLA_16bits[fatorada]/fulladder_pg.vhd}

vcom -93 -work work {D:/CIRCUITOS/ProjetoFinal/CLA_16bits[fatorada]/testbench/testbench_cla16.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_cla16

add wave *
view structure
view signals
run -all
