

module CSA_ADDER3 #(
    parameter DATA_WIDTH = 32,
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

    RCA #(
        .DATA_WIDTH(BLOCK_SIZE)
    )
    U0_RCA (
        .A(A[BLOCK_SIZE - 1:0]),
        .B(B[BLOCK_SIZE - 1:0]),
        .Cin(Cin),

        .Cout(C[0]),
        .S(S[BLOCK_SIZE - 1:0])
    );
    

    generate
        for (i = 1; i < STAGES_COUNT; i = i + 1) begin
            if (i == STAGES_COUNT - 1) begin
                RCA #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_final_RCA_C0 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b0),

                    .Cout(C0[i]),
                    .S(S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                RCA #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_final_RCA_C1 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b1),
                    
                    .Cout(C1[i]),
                    .S(S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );
                assign {C[i], S[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]} =
                 (C[i-1] == 1'b1) ? 
                 {C1[i], S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]} :
                 {C0[i], S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]};
            end
            else begin
                RCA #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_RCA_C0 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b0),

                    .Cout(C0[i]),
                    .S(S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                RCA #(
                    .DATA_WIDTH(BLOCK_SIZE)
                )
                U_RCA_C1 (
                    .A(A[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .B(B[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]),
                    .Cin(1'b1),
                    
                    .Cout(C1[i]),
                    .S(S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE])
                );

                assign {C[i], S[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]} =
                 (C[i-1] == 1'b1) ? 
                 {C1[i], S1[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]} :
                 {C0[i], S0[(i + 1) * BLOCK_SIZE - 1:i * BLOCK_SIZE]};
            
            end

        end
    endgenerate

    assign Cout = C[STAGES_COUNT - 1];

endmodule
module RCA #(
    parameter DATA_WIDTH = 16
)
(
    input [DATA_WIDTH - 1:0] A,
    input [DATA_WIDTH - 1:0] B,
    input Cin,

    output Cout,
    output [DATA_WIDTH - 1:0] S
);

    wire [DATA_WIDTH:0] C;
    assign C[0] = Cin;

    genvar i;

    generate
        for (i = 0; i < DATA_WIDTH; i = i + 1) begin
            assign S[i] = A[i] ^ B[i] ^ C[i];
            assign C[i + 1] = (A[i] & B[i]) | (B[i] & C[i]) | (C[i] & A[i]);
        end
    endgenerate

    assign Cout = C[DATA_WIDTH];

endmodule