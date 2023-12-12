
module VerilogMultiplier (
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [63:0] sum
);

assign sum = a * b;
endmodule