module CarryBypassAdderAlt #(parameter NUM_BITS = 32, parameter NUM_STAGES = 4)(
    input [NUM_BITS-1:0] A,
    input [NUM_BITS-1:0] B,
    input Cin,
    output [NUM_BITS-1:0] Sum,
    output Cout
);

    wire [NUM_STAGES-1:0] carry;
    wire [NUM_BITS-1:0] propagate;
    wire [NUM_BITS-1:0] carry_out;

    // Full Adders for generate
    genvar i;
    generate
        for (i = 0; i < NUM_BITS; i = i + 1) begin : GEN_STAGE
            FullAdder U (
                .A(A[i]),
                .B(B[i]),
                .Cin(i == 0 ? Cin : i % (NUM_BITS/NUM_STAGES) == 0 ? carry[i/(NUM_BITS/NUM_STAGES) - 1] : carry_out[i-1]),
                .Sum(Sum[i]),
                .Cout(carry_out[i]),
                .propagate(propagate[i])
            );
        end
    endgenerate

    // Calculate Cout based on propagate bits

    genvar j;
    generate
        for (j = 0; j < NUM_STAGES; j = j + 1) begin : GEN_COUT
            assign carry[j] = (&propagate[j*NUM_BITS/NUM_STAGES +: NUM_BITS/NUM_STAGES]) ? j == 0 ? Cin : carry[j-1] : carry_out[(j+1)*NUM_BITS/NUM_STAGES-1];
        end
    endgenerate

    assign Cout = carry[NUM_STAGES-1];


endmodule
