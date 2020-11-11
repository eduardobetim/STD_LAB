transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/bc.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/multiplicador.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/bo.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/mux2para1.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/registrador.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/somadorsubtrator.vhd}
vcom -93 -work work {C:/Users/Eduardo Betim/Documents/Repo-UFSC/STD_LAB/aula8 - multip2/igualazero.vhd}

