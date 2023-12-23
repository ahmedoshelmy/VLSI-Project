vsim work.SeqMult
add wave  \
sim:/SeqMult/A \
sim:/SeqMult/B \
sim:/SeqMult/C
add wave  \
sim:/SeqMult/clk
add wave  \
sim:/SeqMult/reset
force -freeze sim:/SeqMult/A 32'd12
force -freeze sim:/SeqMult/B 32'd12
force -freeze sim:/SeqMult/reset 0
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
run 
force -freeze sim:/SeqMult/reset 0
run 
add wave  \
sim:/SeqMult/counter
run
force -freeze sim:/SeqMult/reset 1
run
force -freeze sim:/SeqMult/reset 0
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.regNbits
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
run 
force -freeze sim:/SeqMult/B 32'd12
force -freeze sim:/SeqMult/A 32'd12
force -freeze sim:/SeqMult/reset 1
run 
force -freeze sim:/SeqMult/reset 0
run 
force -freeze sim:/SeqMult/reset 1
run
force -freeze sim:/SeqMult/reset 0
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.regNbits
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/B 32'd12
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/A 32'd12
run
force -freeze sim:/SeqMult/reset 0
run
add wave  \
sim:/SeqMult/product
run
restart -f
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/A 32'd12
force -freeze sim:/SeqMult/B 32'd12
run
force -freeze sim:/SeqMult/reset 0
run
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.regNbits
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/A 32'd12
force -freeze sim:/SeqMult/B 32'd12
run 
# Compile of SeqMult.v was successful.
restart -f
force -freeze sim:/SeqMult/A 32'd12
force -freeze sim:/SeqMult/B 32'd12
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/reset 1
run 
force -freeze sim:/SeqMult/reset 0
run
run
run
run
restart -f
run 
force -freeze sim:/SeqMult/reset 0
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/B 32'd12
force -freeze sim:/SeqMult/A 32'd155
run
add wave  \
sim:/SeqMult/accumulator
run
quit -sim
# End time: 22:32:10 on Dec 15,2023, Elapsed time: 0:23:03
# Errors: 0, Warnings: 0
# Compile of SeqMult.v was successful.
vsim work.SeqMult
# vsim work.SeqMult 
# Start time: 22:32:43 on Dec 15,2023
# Loading work.SeqMult
# Loading work.regNbits
add wave  \
sim:/SeqMult/A \
sim:/SeqMult/B \
sim:/SeqMult/C \
sim:/SeqMult/accumulator \
sim:/SeqMult/clk \
sim:/SeqMult/counter \
sim:/SeqMult/product \
sim:/SeqMult/reset
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/reset 0 0
force -freeze sim:/SeqMult/A 0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz 0
force -freeze sim:/SeqMult/A 0 
quit -sim
# End time: 22:33:48 on Dec 15,2023, Elapsed time: 0:01:05
# Errors: 0, Warnings: 0
# Compile of SeqMult.v was successful.
vsim work.SeqMult
# vsim work.SeqMult 
# Start time: 22:36:12 on Dec 15,2023
# Loading work.SeqMult
# Loading work.registerNbits
add wave  \
sim:/SeqMult/A \
sim:/SeqMult/B \
sim:/SeqMult/C \
sim:/SeqMult/clk \
sim:/SeqMult/counter
add wave  \
sim:/SeqMult/reset
force -freeze sim:/SeqMult/reset 0 0
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/A 32'd56
force -freeze sim:/SeqMult/B 32'd355
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
run 
force -freeze sim:/SeqMult/reset 
# ** Error: (vish-4001) Incorrect number of arguments.
# Usage: force <object_name> {<value> [[@]<time_info>][, <value> [[@]<time_info>]...} [-freeze | -drive | -deposit] [-cancel [@]<time_info>] [-repeat [@]<time_info>]
force -freeze sim:/SeqMult/reset 0
run 
run
force -freeze sim:/SeqMult/reset 1
run
force -freeze sim:/SeqMult/reset 0
run 
run 
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/B 32'd355
force -freeze sim:/SeqMult/A 32'd111
run 
force -freeze sim:/SeqMult/reset 0
run 
run
run
run
force -freeze sim:/SeqMult/reset 1
run
force -freeze sim:/SeqMult/reset 0
run
run
restart -f
# Compile of SeqMult.v was successful.
restart
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/B 32'd10
# Compile of SeqMult.v was successful.
run -over
restart -f 
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/B 32'd10
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/reset 1
run
add wave  \
sim:/SeqMult/product
run
restart -f
force -freeze sim:/SeqMult/B 32'd10
force -freeze sim:/SeqMult/A 32'd52
run
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/reset 1
run
force -freeze sim:/SeqMult/reset 0
run
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/B 32'd10
run
force -freeze sim:/SeqMult/reset 1
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/B 32'd10
run
run
force -freeze sim:/SeqMult/reset 0
run 10 ps
force -freeze sim:/SeqMult/reset 1
run 10 ps
run 
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits
force -freeze sim:/SeqMult/reset 1
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/B 32'd10
run
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
run
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits
run
force -freeze sim:/SeqMult/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/SeqMult/A 32'd52
force -freeze sim:/SeqMult/B 32'd10

force -freeze sim:/SeqMult/reset 1
run
# Compile of SeqMult.v failed with 1 errors.
# Compile of SeqMult.v was successful.
restart -f
# Loading work.SeqMult
# Loading work.registerNbits

force -freeze sim:/SeqMult/reset 1
