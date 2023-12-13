# Read the files

read_file -format verilog  ./source/CSA_ADDER3.v
analyze  -format verilog {./source/CSA_ADDER3.v}

# Synthezise the modules 

# RCA
current_design RCA_N
link
elaborate RCA_N
check_design
source ./source/RCA_N.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_RCA_N.v

# CSA_ADDER3
current_design CSA_ADDER3
elaborate CSA_ADDER3
link
check_design
source ./source/CSA_ADDER3.sdc		
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_CSA_ADDER3.v


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
