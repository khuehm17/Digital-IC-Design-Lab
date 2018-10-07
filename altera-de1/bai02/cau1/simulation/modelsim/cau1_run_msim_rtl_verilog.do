transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/Workspace/GIT/IC-Design/altera-de1/bai02/cau1 {F:/Workspace/GIT/IC-Design/altera-de1/bai02/cau1/cau1.v}

