
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name projectAnd -dir "/home/alejandro/Documentos/Laboratorio de Electronica/projectAnd/planAhead_run_2" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "andModule.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {andModule.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top andModule $srcset
add_files [list {andModule.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
