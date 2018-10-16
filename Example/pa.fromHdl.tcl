
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Example -dir "/home/alejandro/Documentos/Laboratorio de Electronica/Example/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Sensor.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Sensor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Sensor $srcset
add_files [list {Sensor.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
