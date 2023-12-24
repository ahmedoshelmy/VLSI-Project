
`timescale 1ns / 1ps  // Adjust the timescale as needed

module FP_MULTIPLIER_TB;

  // Inputs
  reg clk;
  reg rst;
  reg signed [31:0] A = 32'b01000000010000000000000000000000;
  reg signed [31:0] B = 32'b01000000001000000000000000000000;
  // Counter for success and failure test cases
  reg [7:0] success_count = 8'd0;
  reg [7:0] failure_count = 8'd0;
  // Outputs
  wire signed [31:0] P;

  // Instantiate the unit under test (UUT)
  FP_MULTIPLIER uut (
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .P_reg(P)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial stimulus
  initial begin
    rst = 1;
    #1 rst = 0;  // Deassert reset after 10 clock cycles
    #9
    // Add your stimulus here
    A = 32'b11000000010000000000000000000000;
    B = 32'b01000000001000000000000000000000;
    #10;

    if (P !== 32'b11000000111100000000000000000000) begin
      $display("TestCase#1: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#1: success");
      success_count = success_count + 1;
    end

    
    A = 32'b01000000111100000000000000000000; //  7.5
    B = 32'b01000000010100000000000000000000; // 3.25
    #10;

    if (P !== 32'b01000001110000110000000000000000) begin
      $display("TestCase#2: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#2: success");
      success_count = success_count + 1;
    end

    A = 32'b11000001001110100101111000110101; // -11.648
    B = 32'b01000000011100100011110101110001; // 3.785
    #10;    

    if (P !== 32'b11000010001100000101100111001000) begin
      $display("TestCase#3: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#3: success");
      success_count = success_count + 1;
    end


    A = 32'b01000011010111000110000000000000; // 220.375
    B = 32'b11000010111001000000001110110110; // -114.00725
    #10;    

    if (P !== 32'b11000110110001000100100010110001) begin
      $display("TestCase#4: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#4: success");
      success_count = success_count + 1;
    end


    A = 32'b11000111010111000110000000000000; // 220.375
    B = 32'b11000110111011100000001110110110; // -114.00725
    #10;    

    if (P !== 32'b01001110110011001110010001110001) begin
      $display("TestCase#5: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#5: success");
      success_count = success_count + 1;
    end


    A = 32'b00000000000000000000000000000000; // +0
    B = 32'b10000000000000000000000000000000; // -0
    #10;

    if (P !== 32'b10000000000000000000000000000000) begin
      $display("TestCase#6: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#6: success");
      success_count = success_count + 1;
    end


    A = 32'b01000000111100000000000000000000; // 7.5
    B = 32'b01000000000000000000000000000000; // 0
    #10;

    if (P !== 32'b01000001011100000000000000000000) begin
      $display("TestCase#7: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#7: success");
      success_count = success_count + 1;
    end


    A = 32'b01000000111100000000000000000000; // 7.5
    B = 32'b00111111100000000000000000000000; // 1
    #10;

    if (P !== 32'b01000000111100000000000000000000) begin
      $display("TestCase#8: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#8: success");
      success_count = success_count + 1;
    end


    A = 32'b10111111100000000000000000000000; // 7.5
    B = 32'b00111111100000000000000000000000; // 1
    #10;

    if (P !== 32'b10111111100000000000000000000000) begin
      $display("TestCase#9: failed with input A=%b, B=%b and Output P=%b", A, B, P);
      failure_count = failure_count + 1;
    end else begin
      $display("TestCase#9: success");
      success_count = success_count + 1;
    end


    A = 32'b00111111000000000000000000000000; // 0.5
    B = 32'b01000000000000000000000000000000; // 1
    #10;

    
    A = 32'b00111111000000000000000000000000; // 0.5
    B = 32'b01000000000000000000000000000000; // 1
    #10;

    A = 32'b00111111000000000000000000000000; // 0.5
    B = 32'b00111110100000000000000000000000; // 0.25
    #10;


    A = 32'b00111111000000000000000000000000; // 0.5
    B = 32'b00111100110011001100110011001101; // 0.025
    #10;




    $display("Total Success Cases: %0d", success_count);
    $display("Total Failure Cases: %0d", failure_count);

    $stop; // Stop simulation after all test cases
    

  end

  // Add your assertions or monitors if needed

endmodule
