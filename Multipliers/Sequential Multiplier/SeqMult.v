module SeqMult (
    clk,
                rst,
                A,
                B,
                P);
    input clk, rst;
    input signed [31:0] A, B;
    output reg [63:0] P;
    
    wire start, sign;
    integer counter;
    
    assign start = (counter == 0);
    assign sign  = A[31] ^ B[31];
    
    reg [31:0] multiplicand, multiplier, Accumulator;
    
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            counter = 0;
            P       = 0;
            end else begin
            if (start) begin
                multiplicand            = A;
                if (A[31]) multiplicand = -A;
                
                multiplier            = B;
                if (B[31]) multiplier = -B;
                
                Accumulator = 0;
            end
            
            if (multiplier[0]) Accumulator = Accumulator + multiplicand;
            else Accumulator               = Accumulator;
            
            {Accumulator, multiplier} = {Accumulator, multiplier} >> 1;
            
            if (counter == 31) begin
                counter          = 0;
                P                = {Accumulator, multiplier};
                if (sign) P      = -P;
                end else counter = counter + 1;
            end
        end
        
        endmodule
