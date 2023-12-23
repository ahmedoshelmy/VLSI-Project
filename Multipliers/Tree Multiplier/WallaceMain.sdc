# Set input delays
#Set clock
create_clock -period 4 [get_ports clk]


#Set input delays
set_input_delay -clock clk 0.2 [all_inputs]

#Set output delays
set_output_delay  0.5 [get_ports out]

#Set Output Load
set_load 10 [get_ports out]



