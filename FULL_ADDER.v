module FullAdder(
  input A,  // First input bit
  input B,  // Second input bit
  input Cin,  // Carry-in
  output Sum,  // Sum output
  output Cout,  // Carry-out
  output propagate
);

  // Generate the sum bit
  assign Sum = A ^ B ^ Cin;

  // Generate the carry-out
  assign Cout = (A & B) | ((A ^ B) & Cin);

  // Generate the propagate bit
  assign propagate = A ^ B;
endmodule

