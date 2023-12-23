# RegN 
read_file -format verilog  ./source/regN.v
analyze  -format verilog {./source/regN.v}


current_design regN
link
elaborate regN
check_design
source ./source/Mult.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_regN.v

# SeqMult 
read_file -format verilog  ./source/SeqMult.v
analyze  -format verilog {./source/SeqMult.v}


current_design SeqMult
link
elaborate SeqMult
check_design
source ./source/Mult.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_SeqMult.v


# SeqMultMain

read_file -format verilog  ./source/SeqMultMain.v
analyze  -format verilog {./source/SeqMultMain.v}

current_design A_SeqMult
link
elaborate A_SeqMult
check_design
source ./source/Mult.sdc	
compile -exact_map > ./results/compile.log
write -format verilog -output ./results/Synth_SeqMultMain.v

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
