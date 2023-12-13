module CarryBypassAdderStage #(parameter NUM_BITS = 4)(
  input [NUM_BITS-1:0] A,   // Input A
  input [NUM_BITS-1:0] B,   // Input B
  input Cin,                // Carry-in
  output [NUM_BITS-1:0] Sum, // Sum output
  output Cout               // Carry-out
);

  wire [NUM_BITS-1:0] propagate;  // Propagate bits from each stage
  wire [NUM_BITS-1:0] carry;      // Carry bits from each stage

  // Generate stages using for loop
  genvar i;
  generate
    for (i = 0; i < NUM_BITS; i = i + 1) begin : GEN_STAGE
      FullAdder U (
        .A(A[i]),
        .B(B[i]),
        .Cin(i == 0 ? Cin : carry[i-1]),
        .Sum(Sum[i]),
        .Cout(carry[i]),
        .propagate(propagate[i])
      );
    end
  endgenerate

  // Calculate Cout based on propagate bits
  assign Cout = (&propagate) ? Cin : carry[NUM_BITS-1];

endmodule
