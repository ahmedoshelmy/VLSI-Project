# Read the files

read_file -format verilog  ./source/CSA_ADDER.v
analyze  -format verilog {./source/CSA_ADDER.v}

#Compile the file 



# Synthezise the modules 

# MUX 
current_design MUX2
link
elaborate MUX2
check_design
source ./source/MUX.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_MUX2.v




# RCA4 
current_design RCA4
link
elaborate RCA4
check_design
source ./source/CSA_ADDER.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_RCA4.v



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
report_timing -max_paths 10 > ./results/synth_timing.rpt 
# Generate SDF file
set sdf_file_path "./results/CSA_ADDER.sdf"
report_timing -delay_type max -max_paths 10 -from [all_inputs] -to [all_outputs] > $sdf_file_path
report_power > ./results/total_power.rpt
    