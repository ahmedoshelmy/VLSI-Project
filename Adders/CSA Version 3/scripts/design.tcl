# Read the files

read_file -format verilog  ./source/CSA_ADDER.v
analyze  -format verilog {./source/CSA_ADDER.v}

# Synthezise the modules 

# RCA
current_design RCA
link
elaborate RCA
check_design
source ./source/CSA_ADDER.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_RCA.v

# CSA_ADDER
current_design CSA_ADDER
elaborate CSA_ADDER
link
check_design
source ./source/CSA_ADDER.sdc		
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_CSA_ADDER.v


# # Generate reports 
report_area > ./results/synth_area.rpt
report_cell > ./results/synth_cells.rpt
report_qor  > ./results/synth_qor.rpt
report_resources > ./results/synth_resources.rpt
report_timing  > ./results/synth_timing.rpt 
# Generate SDF file
set sdf_file_path "./results/CSA_ADDER.sdf"
report_timing -delay_type max  -from [all_inputs] -to [all_outputs] > $sdf_file_path
report_power > ./results/total_power.rpt
