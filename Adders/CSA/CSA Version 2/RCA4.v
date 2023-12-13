// 4-bit Ripple Carry Adder
module RCA4(
  output [3:0] sum,
  output cout,
  input [3:0] a,
  input [3:0] b,
  input cin
);

  assign {cout, sum} = a + b + cin;

endmodule