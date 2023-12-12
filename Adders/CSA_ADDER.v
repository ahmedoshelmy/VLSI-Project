module CSA_ADDER(
  output [31:0] sum,
  output cout,
  input [31:0] a,
  input [31:0] b,
  input cin // Carry-in
);

  wire [31:0] sum0, sum1; // sum with carry-in = 0 and 1
  wire [15:0] cout0, cout1; // carry-out for sum0 and sum1
  wire [15:0] c; // carry select signal

  // Generate carry for each group of 4 bits
  
  RCA4 rca0 (.sum(sum0[3:0]), .cout(cout0[0]), .a(a[3:0]), .b(b[3:0]), .cin(0));
  RCA4 rca1 (.sum(sum1[3:0]), .cout(cout1[0]), .a(a[3:0]), .b(b[3:0]), .cin(1));
  genvar i;
  generate
    for (i=1; i<8; i=i+1) begin : carrygen
      RCA4 rca0 (.sum(sum0[4*i+3:4*i]), .cout(cout0[i]), .a(a[4*i+3:4*i]), .b(b[4*i+3:4*i]), .cin(cout0[i-1]));
      RCA4 rca1 (.sum(sum1[4*i+3:4*i]), .cout(cout1[i]), .a(a[4*i+3:4*i]), .b(b[4*i+3:4*i]), .cin(cout1[i-1]));
    end
  endgenerate

  // Generate carry select logic with carry-in
  assign c = cin ? cout1 & ~cout0 : cout0 & ~cout1;

  // Select sum output based on carry-in
  generate
    for (i=0; i<32; i=i+1) begin : sumsel
      MUX2 mux (.out(sum[i]), .sel(c[i/4]), .in0(sum0[i]), .in1(sum1[i]));
    end
  endgenerate

  // Generate carry-out
  assign cout = cin ? cout1[7] : cout0[7]; // carry-out based on carry-in

endmodule
