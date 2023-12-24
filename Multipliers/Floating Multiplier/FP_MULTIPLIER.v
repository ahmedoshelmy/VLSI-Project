module FP_MULTIPLIER(
  input clk,
  input rst,
  input signed [31:0] A,
  input signed [31:0] B,
  output signed [31:0] P
);
    wire [23:0] A_mantissa;
    wire [23:0] B_mantissa;
    wire [47:0] mantissa_product;
    wire [47:0] shifted_mantissa_product;
    wire [5:0] count;
    wire [7:0] exponent_sum;

    assign A_mantissa = {1'b1,A[22:0]};
    assign B_mantissa = {1'b1,B[22:0]};

    assign mantissa_product = A_mantissa * B_mantissa;

    assign count = (mantissa_product[47] == 1'b1) ? 6'd0 : (mantissa_product[46] == 1'b1) ? 6'd1 : (mantissa_product[45] == 1'b1) ? 6'd2 : (mantissa_product[44] == 1'b1) ? 6'd3 : (mantissa_product[43] == 1'b1) ? 6'd4 : (mantissa_product[42] == 1'b1) ? 6'd5 : (mantissa_product[41] == 1'b1) ? 6'd6 : (mantissa_product[40] == 1'b1) ? 6'd7 : (mantissa_product[39] == 1'b1) ? 6'd8 : (mantissa_product[38] == 1'b1) ? 6'd9 : (mantissa_product[37] == 1'b1) ? 6'd10 : (mantissa_product[36] == 1'b1) ? 6'd11 : (mantissa_product[35] == 1'b1) ? 6'd12 : (mantissa_product[34] == 1'b1) ? 6'd13 : (mantissa_product[33] == 1'b1) ? 6'd14 : (mantissa_product[32] == 1'b1) ? 6'd15 : (mantissa_product[31] == 1'b1) ? 6'd16 : (mantissa_product[30] == 1'b1) ? 6'd17 : (mantissa_product[29] == 1'b1) ? 6'd18 : (mantissa_product[28] == 1'b1) ? 6'd19 : (mantissa_product[27] == 1'b1) ? 6'd20 : (mantissa_product[26] == 1'b1) ? 6'd21 : (mantissa_product[25] == 1'b1) ? 6'd22 : (mantissa_product[24] == 1'b1) ? 6'd23 : 6'd24;

    assign shifted_mantissa_product = mantissa_product << count;

    assign P[22:0] = (A[30:0] == 31'd0) ? 23'd0 : shifted_mantissa_product[46:24];

    assign exponent_sum = A[30:23] + B[30:23] - 8'd127;

    assign P[30:23] = (A[30:0] == 31'd0) ? 8'd0 : (count == 6'd0) ? exponent_sum + 1 : exponent_sum;

    assign P[31] = A[31] ^ B[31];


endmodule