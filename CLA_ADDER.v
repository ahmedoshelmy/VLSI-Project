module FA_1bit (
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire cout
);
  assign {cout, sum} = a + b + cin;
endmodule

module CLA_Logic (
  input wire signed [31:0] A,
  input wire signed [31:0] B,
  input wire cin,
  output wire signed [31:0] C
);
  wire signed [31:0] g;
  wire signed [31:0] p;

  assign g = A & B;
  assign p = A ^ B;

  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : assign_block
      assign C[i] = g[i] | (p[i] & (i == 0 ? cin : C[i-1]));
    end
  endgenerate
endmodule


module CLA_ADDER (
  input wire signed [31:0] A,
  input wire signed [31:0] B,
  input wire cin,
  output wire signed [31:0] S,
  output wire cout,
  output wire overflow
);
  wire [31:0] SumCarry;

  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : generate_FA
      FA_1bit S_inst(A[i], B[i], (i == 0 ? cin : SumCarry[i-1]), S[i], _);
    end
  endgenerate

  CLA_Logic ca (.A(A), .B(B), .cin(cin), .C(SumCarry));

  assign cout = SumCarry[31];
  assign overflow = (A[31] == B[31] && S[31] != A[31]) ? 1'b1 : 1'b0;

endmodule


