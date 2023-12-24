module SeqMult (
    clk,
    internalClk,
                rst,
                A,
                B,
                P);
    input clk, rst,internalClk;
    input signed [31:0] A, B;
    output reg [63:0] P;
    
    wire start, sign;
    integer counter;
    
    assign start = (counter == 0);
    assign sign  = A[31] ^ B[31];
    
    reg [31:0] multiplicand, multiplier, Accumulator;
    

    // Input Registers

  reg [31:0] A_reg, B_reg;
  reg [63:0] P_reg; 

  always @(posedge clk) begin
    if (rst) begin 
        A_reg <= 32'b0; B_reg <= 32'b0;
    end
    else begin A_reg <= A; B_reg <= B ;
    end
    end




    always @(posedge internalClk, posedge rst) begin
        if (rst) begin
            counter = 0;
            P       = 0;
            end else begin
            if (start) begin
                multiplicand            = A_reg;
                if (A_reg[31]) multiplicand = -A_reg;
                
                multiplier            = B_reg;
                if (B_reg[31]) multiplier = -B_reg;
                
                Accumulator = 0;
            end
            
            if (multiplier[0]) Accumulator = Accumulator + multiplicand;
            else Accumulator               = Accumulator;
            
            {Accumulator, multiplier} = {Accumulator, multiplier} >> 1;
            
            if (counter == 31) begin
                counter          = 0;
                P_reg                = {Accumulator, multiplier};
                if (sign) P_reg      = -P_reg;
                end else counter = counter + 1;
            end
        end
          always @(posedge clk) begin
    if (rst)  P <= 64'b0;
    else P <= P_reg ;
    end
        endmodule
