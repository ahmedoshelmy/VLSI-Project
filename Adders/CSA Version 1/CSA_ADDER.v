module CSA_ADDER(
  output [31:0] S,
  output Cout,
  input [31:0] A,
  input [31:0] B,
  input Cin // Carry-in
);

  wire [31:0] sum0, sum1; // sum with carry-in = 0 and 1
  wire [15:0] cout0, cout1; // carry-out for sum0 and sum1
  wire [7:0] c; // carry select signal

  // Generate carry for each group of 4 bits
  
  RCA rca0 (.sum(sum0[3:0]), .cout(cout0[0]), .a(A[3:0]), .b(B[3:0]), .cin(Cin));
  RCA rca1 (.sum(sum1[3:0]), .cout(cout1[0]), .a(A[3:0]), .b(B[3:0]), .cin(1'b1));
  genvar i;
  generate
    for (i=1; i<8; i=i+1) begin : carrygen
      RCA rca0 (.sum(sum0[4*i+3:4*i]), .cout(cout0[i]), .a(A[4*i+3:4*i]), .b(B[4*i+3:4*i]), .cin(cout0[i-1]));
      RCA rca1 (.sum(sum1[4*i+3:4*i]), .cout(cout1[i]), .a(A[4*i+3:4*i]), .b(B[4*i+3:4*i]), .cin(cout1[i-1]));
    end
  endgenerate

  // Generate carry select logic with carry-in
  assign c = Cin ? cout1 & ~cout0 : cout0 & ~cout1;
  // Select sum output based on carry-in
  generate
    for (i = 0; i < 8; i = i + 1) begin : sumsel
      assign S[4*i+3:4*i] = (c[i] == 1'b0) ? sum0[4*i+3:4*i] : sum1[4*i+3:4*i];
    end
  endgenerate

  // Generate carry-out
  assign Cout = Cin ? cout1[7] : cout0[7]; // carry-out based on carry-in

endmodule

module RCA(
  output [3:0] sum,
  output cout,
  input [3:0] a,
  input [3:0] b,
  input cin
);

  assign {cout, sum} = a + b + cin;

endmodule

