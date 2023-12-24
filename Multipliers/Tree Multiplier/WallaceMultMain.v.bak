module AWallaceTreeMultiplierSeq(
    A,
    B,
    clk,
    reset,
    out
);
input clk, reset;
input [31:0] A,B;
output [63:0]  out;
wire [31:0] A_reg;
wire [31:0] B_reg;
wire [31:0] outA_reg;
wire [31:0] outB_reg;
regN #(32) regA (
    clk,
    reset,
    A,
    A_reg
);
regN #(32) regB (
    clk,
    reset,
    B,
    B_reg
);
WallaceTreeMultiplier wm(
    A_reg,
    B_reg,
    {outA_reg, outB_reg}
);
regN #(32) outA (
    clk,
    reset,
    outB_reg,
    out[31:0]
);
regN #(32) outB (
    clk,
    reset,
    outA_reg,
    out[63:32]
);
endmodule