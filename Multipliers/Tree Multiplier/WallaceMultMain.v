    module FullAdder (
        input  wire  [63:0] a,
        input  wire  [63:0] b,
        input  wire  [63:0] cin,
        output wire [63:0] sum,
        output wire [63:0] cout
    );

    assign sum = a ^ b ^ cin;
    assign cout = ((a & b) | ((a ^ b) & cin))<< 1'b1;


endmodule

module WallaceTreeMultiplier (
    input wire signed [31:0] A,
    input wire signed [31:0] B,
    output reg signed [63:0] out,        
    input wire clk,rst

);
       // Input Registers

  reg [31:0] A_reg, B_reg;

  always @(posedge clk) begin
    if (rst) begin 
        A_reg <= 32'b0; B_reg <= 32'b0;
    end
    else begin A_reg <= A; B_reg <= B ;
    end
    end
    
    
    // Generate the partial products
    
    wire [63:0] p[63:0];
    wire [63:0] SignedExtendedA , SignedExtendedB;
    assign SignedExtendedA = {{32{A_reg[31]}} , A_reg};
    assign SignedExtendedB = {{32{B_reg[31]}} , B_reg};

    genvar i; 
    generate
	for (i = 0; i < 64; i = i + 1) begin: signExtend
		assign p[i] = SignedExtendedB[i] == 1'b1 ? SignedExtendedA << i : 64'b0;
	end
	endgenerate
    // generate 
    wire[63:0] g[41:0];
    generate
    for (i = 0 ; i < 21 ; i= i+1 ) begin: level1
        FullAdder x6(p[i*3],p[i*3+1],p[i*3+2],g[i],g[i+21]);
    end 
    endgenerate

    //2nd stage 
    wire[63:0] g2[27:0];
    generate
        for (i=0 ; i < 14 ; i = i+1) begin: level2
        FullAdder x5(g[i*3],g[i*3+1],g[i*3+2],g2[i],g2[i+14]);
    end
    endgenerate
    
    //g2[27] & p[63] are left
    wire[63:0] g3[17:0];

    generate
    for (i=0 ; i < 9 ; i = i+1) begin: level3
        FullAdder x0(g2[i*3],g2[i*3+1],g2[i*3+2],g3[i],g3[i+9]);
    end
    endgenerate

    wire[63:0] g4[11:0];

    generate
    for (i=0 ; i < 6 ; i = i+1) begin: level4
        FullAdder x1(g3[i*3],g3[i*3+1],g3[i*3+2],g4[i],g4[i+6]);
    end
    endgenerate

    wire[63:0] g5[7:0];
    generate
    for (i=0 ; i < 4 ; i = i+1) begin: level5
        FullAdder x2(g4[i*3],g4[i*3+1],g4[i*3+2],g5[i],g5[i+4]);
    end
    endgenerate
    wire[63:0] g6[5:0];
    FullAdder F0(g5[0],g5[1],g5[2],g6[0],g6[1]);
    FullAdder F1(g5[3],g5[4],g5[5],g6[2],g6[3]);
    FullAdder F2(g5[6],g5[7],g2[27],g6[4],g6[5]);
    
    wire[63:0] g7[3:0];
    FullAdder F3(g6[0],g6[1],g6[2],g7[0],g7[1]);
    FullAdder F4(g6[3],g6[4],g6[5],g7[2],g7[3]);

    //? g7[3] & p[63] are left
    wire[63:0] g8[1:0];
    FullAdder F5(g7[0],g7[1],g7[2],g8[0],g8[1]);

    wire[63:0] g9[1:0];
    FullAdder F6(g8[0],g8[1],g7[3],g9[0],g9[1]);

    wire[63:0] g10[1:0];
    FullAdder F7(g9[0],g9[1],p[63],g10[0],g10[1]);

    // assign out = g10[1] + g10[0];

       always @(posedge clk) begin
    if (rst)  out <= 64'b0;
    else out <=  g10[1] + g10[0] ;
    end
endmodule
