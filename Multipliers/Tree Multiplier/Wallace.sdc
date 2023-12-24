# Set input delays
set_input_delay  0.2 [get_ports A]
set_input_delay  0.2 [get_ports B]

# Set output delays
set_output_delay  0.5 [get_ports out]

# Set Output Load
set_load 10 [get_ports out]


