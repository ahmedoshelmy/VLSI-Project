

# Set input delays
set_input_delay  1 [get_ports A]
set_input_delay  1 [get_ports Cin]
set_input_delay  1 [get_ports B]

# Set output delays
set_output_delay  0.5 [get_ports P]
set_output_delay  0.5 [get_ports G]
set_output_delay  0.5 [get_ports Cout]
set_output_delay  0.5 [get_ports S]



# Set Output Load
set_load 10 [get_ports Cout]
set_load 10 [get_ports P]
set_load 10 [get_ports G]
set_load 10 [get_ports S]

