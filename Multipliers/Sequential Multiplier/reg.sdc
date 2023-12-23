#Set clock
create_clock -period 2 [get_ports clk]
set_propagated_clock [get_clocks clk]


# Set input delays
set_input_delay  -clock clk 0.2 [get_ports reset]
set_input_delay  -clock clk 0.2 [get_ports inp]
set_input_delay  -clock clk 0.2 [get_ports clk]

# Set output delays
set_output_delay  0.5 [get_ports out]

# Set Output Load
set_load 10 [get_ports out]

