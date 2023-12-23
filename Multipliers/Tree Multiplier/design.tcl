read_file -format verilog  ./source/WallaceMultMain.v
analyze  -format verilog {./source/WallaceMultMain.v}

current_design AWallaceTreeMultiplierSeq
link
elaborate AWallaceTreeMultiplierSeq
check_design
source ./source/WallaceMain.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_WallaceMultMain.v


current_design FullAdder
link
elaborate FullAdder
check_design
source ./source/FA.sdc	


current_design WallaceTreeMultiplier
link
elaborate WallaceTreeMultiplier
check_design
source ./source/Wallace.sdc	

# # Generate reports 
report_area > ./results/synth_area.rpt
report_cell > ./results/synth_cells.rpt
report_qor  > ./results/synth_qor.rpt
report_resources > ./results/synth_resources.rpt
report_timing  -max_paths 100 > ./results/synth_timing.rpt 
# Generate SDF file
set sdf_file_path "./results/WTM.sdf"
report_timing   -max_paths 100   -delay_type  max  -from [all_inputs] -to [all_outputs] > $sdf_file_path
report_power > ./results/total_power.rpt
