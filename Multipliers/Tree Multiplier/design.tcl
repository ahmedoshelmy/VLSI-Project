read_file -format verilog  ./source/WallaceTreeMultiplier.v
analyze  -format verilog {./source/WallaceTreeMultiplier.v}

current_design WallaceTreeMultiplier
link
elaborate WallaceTreeMultiplier
check_design
source ./source/Mult.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_WallaceTreeMultiplier.v

# # Generate reports 
report_area > ./results/synth_area.rpt
report_cell > ./results/synth_cells.rpt
report_qor  > ./results/synth_qor.rpt
report_resources > ./results/synth_resources.rpt
report_timing  -max_paths 100 > ./results/synth_timing.rpt 
# Generate SDF file
set sdf_file_path "./results/CSA_ADDER3.sdf"
report_timing   -max_paths 100   -delay_type  max  -from [all_inputs] -to [all_outputs] > $sdf_file_path
report_power > ./results/total_power.rpt
