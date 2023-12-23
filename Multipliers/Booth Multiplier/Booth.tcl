

# BoothMultiplier 
read_file -format verilog  ./source/Booth.v
analyze  -format verilog {./source/Booth.v}


current_design BoothMultiplier
link
elaborate BoothMultiplier
check_design
source ./source/Booth.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_Booth.v



# # Generate reports 
report_area > ./results/booth_synth_area.rpt
report_cell > ./results/booth_synth_cells.rpt
report_qor  > ./results/booth_synth_qor.rpt
report_resources > ./results/booth_synth_resources.rpt
report_timing  -max_paths 100 > ./results/booth_synth_timing.rpt 
# Generate SDF file
set sdf_file_path "./results/boothMult.sdf"
report_timing   -max_paths 100   -delay_type  max  -from [all_inputs] -to [all_outputs] > $sdf_file_path
report_power > ./results/booth_total_power.rpt
