

module CSA_ADDER #(
    parameter DATA_WIDTH = 32,

    // The number of adders in one block 
    // (the block is a unit composed of a number adders that generates 
    // the carry bit for the next block)
    parameter BLOCK_SIZE = 16
)
(
    input [DATA_WIDTH - 1:0] A,
    input [DATA_WIDTH - 1:0] B,
    input Cin,

    output Cout,
    output [DATA_WIDTH - 1:0] S
);

    localparam STAGES_COUNT = DATA_WIDTH / BLOCK_SIZE;

    wire [DATA_WIDTH - 1:0] S0;
    wire [DATA_WIDTH - 1:0] S1;

    wire [STAGES_COUNT - 1:0] C0;
    wire [STAGES_COUNT - 1:0] C1;
    wire [STAGES_COUNT - 1:0] C;

    genvar i;

    ripple_carry_adder #(
        .DATA_WIDTH(BLOCK_SIZE)
    )
    U0_ripple_carry_adder (
        .A(A[BLOCK_SIZE - 1:0]),
        .B(B[BLOCK_SIZE - 1:0]),
        .Cin(Cin),

        .Cout(C[0]),
        .S(S[BLOCK_SIZE - 1:0])
    );
    

    generate
        for (i = 1; i < STAGES_COUNT; i = i + 1) begin
            if (i == STAGES_COUNT - 1) begin
                ripple_carry_adder #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_final_ripple_carry_adder_C0 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b0),

                    .Cout(C0[i]),
                    .S(S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                ripple_carry_adder #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_final_ripple_carry_adder_C1 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b1),
                    
                    .Cout(C1[i]),
                    .S(S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                MY_MUX #(
                    .DATA_WIDTH(BLOCK_SIZE + 1)
                )
                U_final_mux(
                    .IN0({C0[i], S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]}),
                    .IN1({ C1[i], S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]}),
                    .select(C[i - 1]),

                    .OUT({C[i], S[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]})
                );
            end
            else begin
                ripple_carry_adder #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_ripple_carry_adder_C0 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b0),

                    .Cout(C0[i]),
                    .S(S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                ripple_carry_adder #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_ripple_carry_adder_C1 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b1),
                    
                    .Cout(C1[i]),
                    .S(S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                MY_MUX #(
                    .DATA_WIDTH(BLOCK_SIZE + 1)
                )
                U_mux(
                    .IN0({C0[i], S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]}),
                    .IN1({C1[i], S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]}),
                    .select(C[i - 1]),

                    .OUT({C[i], S[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]})
                );
            end

        end
    endgenerate

    assign Cout = C[STAGES_COUNT - 1];

endmodule


module MY_MUX #(
    parameter DATA_WIDTH = 17
)
(
    input [DATA_WIDTH - 1:0] IN0,
    input [DATA_WIDTH - 1:0] IN1,
    input [ $clog2(DATA_WIDTH) - 1 : 0 ] select, // Logarithm of DATA_WIDTH

    output [DATA_WIDTH - 1:0] OUT
);
    assign OUT = select ? IN1 : IN0;

endmodule


module half_adder (
    input A,
    input B,

    output Cout,
    output S
);

    assign Cout = A & B;
    assign S = A ^ B;

endmodule



module full_adder (
    input A,
    input B,
    input Cin,

    output P,
    output G,
    output Cout,
    output S
);

    wire C2;

    half_adder HA_1 (
        .A(A),
        .B(B),

        .Cout(G),
        .S(P)
    );

    half_adder HA_2 (
        .A(P),
        .B(Cin),

        .Cout(C2),
        .S(S)
    );

    assign Cout = G | C2;

endmodule



module ripple_carry_adder #(
    parameter DATA_WIDTH = 16
)
(
    input [DATA_WIDTH - 1:0] A,
    input [DATA_WIDTH - 1:0] B,
    input Cin,

    output [DATA_WIDTH - 1:0] P,
    output [DATA_WIDTH - 1:0] G,
    output Cout,
    output [DATA_WIDTH - 1:0] S
);

    wire [DATA_WIDTH:0] C;
    assign C[0] = Cin;

    
    genvar i;


    full_adder U0_FA (
        .A(A[0]),
        .B(B[0]),
        .Cin(C[0]),

        .P(P[0]),
        .G(G[0]),
        .Cout(C[1]),
        .S(S[0])
    );

    generate
        for (i = 1; i < DATA_WIDTH; i = i + 1) begin
            full_adder U_FA (
                .A(A[i]),
                .B(B[i]),
                .Cin(C[i]),

                .P(P[i]),
                .G(G[i]),
                .Cout(C[i + 1]),
                .S(S[i])
            );
        end
    endgenerate


    assign Cout = C[DATA_WIDTH];

endmodule