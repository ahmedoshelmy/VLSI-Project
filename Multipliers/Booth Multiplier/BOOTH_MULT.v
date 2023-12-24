module BoothMultiplier_Pre #(
  parameter N = 32
)(
  input clk,
  input oClk,
  input rst,
  input oRst,
  input signed [N-1:0] M,
  input signed [N-1:0] Q,
  output reg signed [2*N-1:0] P
  input signed [N-1:0] M,
  input signed [N-1:0] Q,
  output reg signed [2*N-1:0] P
);

  // Internal registers
  reg signed [N-1:0] Q_reg;
  reg signed [N-1:0] Acc;
  reg signed [N-1:0] M_reg;
  reg signed Q_prev;
  reg signed [N-1:0] Q_reg_in;
  reg signed [N-1:0] Q_reg;
  reg signed [N-1:0] Acc;
  reg signed [N-1:0] M_reg;
  reg signed Q_prev;
  reg [5:0] count;
  wire signed [2*N:0] case_add;
  wire signed [2*N:0] case_add_shifted;
  wire signed [2*N:0] case_sub;
  wire signed [2*N:0] case_sub_shifted;
  wire signed [2*N:0] case_add;
  wire signed [2*N:0] case_add_shifted;
  wire signed [2*N:0] case_sub;
  wire signed [2*N:0] case_sub_shifted;

  always @(posedge oClk,posedge oRst) begin
    if (oRst) begin
  always @(posedge oClk,posedge rst) begin
    if (rst) begin
      Q_reg_in <= Q;
      M_reg <= M;
      P <= 0;
    end else begin
      M_reg<= M;
      Q_reg_in <= Q;
      P <= {Acc[N-1], Acc, Q_reg[N-1:1]};
    end

    count <= N-1;
  end

  always @(posedge clk) begin
    if (count == N-1) begin
      Q_reg <= Q_reg_in;
    end else
    if (count > 0) begin
      if (Q_reg[0] == 1'b1 && Q_prev == 1'b0) begin
        // Subtract M_reg from Acc
        {Acc,Q_reg,Q_prev} <= case_sub_shifted;
      end else if (Q_reg[0] == 1'b0 && Q_prev == 1'b1) begin
        // Add M to Acc
        {Acc,Q_reg,Q_prev} <= case_add_shifted;
      end else begin
        // Shift Acc and Q_reg
        {Acc,Q_reg,Q_prev} <= {Acc[N-1], Acc, Q_reg};
      end
      count <= count - 1;
    end
  end

  // Assign case_add
  assign case_add = {(Acc + M_reg), Q_reg, Q_prev};
  assign case_add_shifted = {case_add[2*N], case_add[2*N:1]};

  // Assign case_sub
  assign case_sub = {(Acc - M_reg), Q_reg, Q_prev}; 
  assign case_sub_shifted = {case_sub[2*N], case_sub[2*N:1]};


endmodule