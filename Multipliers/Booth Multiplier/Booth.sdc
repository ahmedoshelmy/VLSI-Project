#Set clock
create_clock -period 16 [get_ports oClk]
create_clock -period 0.5 [get_ports clk]


# Set input delays
set_input_delay -clock oClk 0.2 [all_inputs]

# Set output delays
set_output_delay  0.5 [get_ports P]

# Set Output Load
set_load 10 [get_ports P]
