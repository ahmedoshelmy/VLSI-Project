read_file -format verilog  ./source/verilog_multiplier.v
analyze  -format verilog {./source/verilog_multiplier.v}
elaborate VerilogMultiplier


link
check_design
source ./source/verilog_multiplier.sdc
compile -exact_map > ./results/compile_verilog_multiplier.log
report_area > ./results/synth_area_verilog_multiplier.rpt
report_cell > ./results/synth_cells_verilog_multiplier.rpt
report_qor  > ./results/synth_qor_verilog_multiplier.rpt
report_resources > ./results/synth_resources_verilog_multiplier.rpt
report_power > ./results/total_power_report_verilog_multiplier.rpt
report_timing -max_paths 200 > ./results/synth_timing_verilog_multiplier.rpt 
write -format verilog -output ./results/Synth_verilog_multiplier.v
#Generate SDF file
set sdf_file_path "./results/verilog_multiplier.sdf"
report_timing -delay_type max -max_paths 200 -from [all_inputs] -to [all_outputs] > $sdf_file_path