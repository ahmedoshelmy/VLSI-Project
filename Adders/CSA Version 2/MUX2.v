

// 2-to-1 multiplexer
module MUX2(
  output out,
  input sel,
  input in0,
  input in1
);

  assign out = sel ? in1 : in0;

endmodule