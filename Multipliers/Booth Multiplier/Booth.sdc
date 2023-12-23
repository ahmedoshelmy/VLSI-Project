
#Set clock
create_clock -period 2000 [get_ports oClk]
set_propagated_clock [get_clocks oClk]

create_clock -period 0.01 [get_ports clk]


# Set input delays
set_input_delay  -clock oClk 0.2 [get_ports M]
set_input_delay  -clock oClk 0.2 [get_ports Q]
set_input_delay  -clock clk 0.2 [get_ports clk]
set_input_delay  -clock oClk 0.2 [get_ports rst]
set_input_delay  -clock oClk 0.2 [get_ports oRst]


# Set output delays
set_output_delay  0.5 [get_ports P]

# Set Output Load
set_load 10 [get_ports P]


