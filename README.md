# VLSI Adder & Multiplier Architectures

Verilog RTL implementations of several classic digital-arithmetic circuit architectures, written for a VLSI/digital design course, with testbenches and synthesis scripts (`.tcl`/`.sdc`) for gate-level synthesis and timing analysis.

## Adders (`Adders/`)

- **RPCA** — Ripple Carry Adder
- **CLA** — Carry Lookahead Adder
- **CSA** — Carry Save Adder (multiple design iterations)
- **CBP** — Carry Bypass Adder
- Plus a general parametrized Verilog adder

## Multipliers (`Multipliers/`)

- **Sequential Multiplier** — shift-and-add, one bit per clock cycle
- **Tree Multiplier** — Wallace-tree-style partial product reduction
- **Booth Multiplier** — Booth-encoded multiplication for signed operands
- **Floating Multiplier** — floating-point multiplication

Each architecture includes a testbench (`*_tb.v`) and a synthesized/gate-level version (`Synth_*.v`) alongside `.tcl` synthesis scripts and `.sdc` timing constraints, consistent with a Design Compiler-based ASIC flow — the intent is comparing these architectures on area/timing tradeoffs rather than just functional correctness.

## Running it

Simulate any module with its paired testbench in a Verilog simulator (e.g. ModelSim/Vivado/Icarus Verilog). The `.tcl`/`.sdc` files are for gate-level synthesis in a tool such as Synopsys Design Compiler and aren't needed for functional simulation.
