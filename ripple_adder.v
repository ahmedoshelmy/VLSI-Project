module RippleAdder (
    input Clk,
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);

    wire [31:0] c;

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gen_full_adder
            FullAdder full_adder_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(i == 0 ? cin : c[i-1]),
                .sum(sum[i]),
                .cout(c[i])
            );
        end
    endgenerate

    assign cout = c[31];
    
endmodule
