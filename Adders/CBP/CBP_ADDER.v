module CarryBypassAdder #(parameter NUM_BITS = 32, parameter NUM_STAGES = 4)(
  input Clk,
  input [NUM_BITS-1:0] A,
  input [NUM_BITS-1:0] B,
  input Cin,
  output [NUM_BITS-1:0] Sum,
  output Cout
);

    wire [NUM_STAGES-1:0] carry;

    genvar i;
    generate
        for (i = 0; i < NUM_STAGES; i = i + 1) begin : GEN_STAGE
            CarryBypassAdderStage #(.NUM_BITS(NUM_BITS/NUM_STAGES)) U (
                .A(A[(i+1)*NUM_BITS/NUM_STAGES-1:i*NUM_BITS/NUM_STAGES]),
                .B(B[(i+1)*NUM_BITS/NUM_STAGES-1:i*NUM_BITS/NUM_STAGES]),
                .Cin(i == 0 ? Cin : carry[i-1]),
                .Sum(Sum[(i+1)*NUM_BITS/NUM_STAGES-1:i*NUM_BITS/NUM_STAGES]),
                .Cout(carry[i])
            );
        end
    endgenerate

    
    assign Cout = carry[NUM_STAGES-1];


endmodule