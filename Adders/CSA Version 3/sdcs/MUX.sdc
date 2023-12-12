

# Set input delays
set_input_delay  1 [get_ports ino]
set_input_delay  1 [get_ports sel]
set_input_delay  1 [get_ports IN1]

# Set output delays
set_output_delay  0.5 [get_ports out]


# Set Output Load
set_load 10 [get_ports out]

