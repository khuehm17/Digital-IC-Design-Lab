transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Workspace/GIT/IC-Design/altera-de1/bai05/cau6 {E:/Workspace/GIT/IC-Design/altera-de1/bai05/cau6/cau6.v}

