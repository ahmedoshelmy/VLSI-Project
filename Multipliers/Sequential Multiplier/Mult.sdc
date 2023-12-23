

# Set input delays
set_input_delay  0.2 [get_ports inputA]
set_input_delay  0.2 [get_ports inputB]
set_input_delay  0.2 [get_ports clk]
set_input_delay  0.2 [get_ports internalClk]
set_input_delay  0.2 [get_ports reset]

# Set output delays
set_output_delay  0.5 [get_ports result]

# Set Output Load
set_load 10 [get_ports Cout]
set_load 10 [get_ports S]

#Set clock
create_clock -period 2 [get_ports clk]
set_utilization -resource_area 60

