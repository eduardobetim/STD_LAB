transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Eduardo Betim/Documents/UFSC/Tarefas/Semestre 2/SD_LAB/aula2/decod7segmentos.vhd}

