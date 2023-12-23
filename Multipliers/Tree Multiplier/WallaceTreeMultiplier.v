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
    output wire signed [63:0] out
);
    // Generate the partial products
    wire [63:0] p[63:0];
    wire [63:0] SignedExtendedA , SignedExtendedB;
    assign SignedExtendedA = {{32{A[31]}} , A};
    assign SignedExtendedB = {{32{B[31]}} , B};

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

    assign out = g10[1] + g10[0];
endmodule


module multiplier_tb;
  reg signed [31:0] a;
  reg signed [31:0] b;
  
  wire signed [63:0] out;

  WallaceTreeMultiplier dut (
    .A(a),
    .B(b),
    .out(out)
  );

  integer success_count = 0;
  integer fail_count = 0;
  integer testcase = 1;

  initial begin
    // Test Case 1: Multiplication of positive and negative number
    a = 32'b01010101010101010101010101010101;
    b = -32'b00110011001100110011001100110011;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 2: Multiplication of positive and positive number
    a = 32'b01010101010101010101010101010101;
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 3: Multiplication of negative and negative number
    a = -32'b01010101010101010101010101010101;
    b = -32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 4: Multiplication of negative and positive number
    a = -32'b01010101010101010101010101010101;
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 5: Multiplication by zero
    a = 0; // Zero value for a
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 6: Multiplication by 1
    a = 1; // Value 1 for a
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 7: Additional random test case 1
    a = 32'b11001100110011001100110011001100;
    b = 32'b10101010101010101010101010101010;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Test Case 8: Additional random test case 2
    a = 32'b11110000111100001111000011110000;
    b = 32'b00001111111100000000111111110000;
    testcase = testcase + 1;
    #10;
    if (out === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, out);
      fail_count = fail_count + 1;
    end

    // Reporting total success and failure test cases
    $display("Total Success Test Cases: %0d", success_count);
    $display("Total Failed Test Cases: %0d", fail_count);
    testcase = testcase + 1;
    $stop;
  end
endmodule


