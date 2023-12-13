

# Set input delays
set_input_delay  1 [get_ports a]
set_input_delay  1 [get_ports b]
set_input_delay  1 [get_ports cin]

# Set output delays
set_output_delay  0.5 [get_ports cout]
set_output_delay  0.5 [get_ports sum]


# Set Output Load
set_load 10 [get_ports cout]
set_load 10 [get_ports sum]


