transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Workspace/GIT/IC-Design/altera-de1/bai03/cau1 {E:/Workspace/GIT/IC-Design/altera-de1/bai03/cau1/cau1.v}

