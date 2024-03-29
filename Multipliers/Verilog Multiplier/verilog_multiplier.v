module VerilogMultiplier (
    input wire clk,
    input wire rst,
    input signed [31:0] A,
    input signed [31:0] B,
    output signed [63:0] P
);

reg signed [31:0] A_reg;
reg signed [31:0] B_reg;
reg signed [63:0] P_reg;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        A_reg <= 0;
        B_reg <= 0;
        P_reg <= 0;
    end else begin
        A_reg <= A;
        B_reg <= B;
        P_reg <= A_reg * B_reg;
    end
end

assign P = P_reg;

endmodule