module A_SeqMult #(
    parameter N = 32
) (
    a,
    b,
    clk,
    reset,
    result
);
  input clk, reset;
  input [N-1:0] a, b;
  output [2*N-1:0] result;
  wire [N-1:0] A_reg;
  wire [N-1:0] B_reg;
  wire [N-1:0] outA_reg;
  wire [N-1:0] outB_reg;
  regN #(32) regA (
      clk,
      reset,
      a,
      A_reg
  );
  regN #(32) regB (
      clk,
      reset,
      b,
      B_reg
  );
  SeqMult sm (
      clk,
      reset,
      A_reg,
      B_reg,
      {outA_reg, outB_reg}
  );
  regN #(32) outA (
      clk,
      reset,
      outB_reg,
      result[N-1:0]
  );
  regN #(32) outB (
      clk,
      reset,
      outA_reg,
      result[2*N-1:N]
  );
endmodule