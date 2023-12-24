create_clock -name clk -period 2 [get_ports clk]
set_input_delay -max 0.2 -clock [get_clocks clk] [remove_from_collection [all_inputs ] [get_ports clk]]
set_load 10 [get_ports {P}]
set_output_delay -max 0.5 -clock [get_clocks clk] [all_outputs]





