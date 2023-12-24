module tree_multiplier_pre_tb;
  reg clk = 0;
  reg rst = 1;
  reg signed [31:0] A;
  reg signed [31:0] B;
  
  wire signed [63:0] P;

  WallaceTreeMultiplier dut (
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .out(P)
  );

  integer success_count = 0;
  integer fail_count = 0;
  always #5 clk = ~clk;
  initial begin
    #1; 
    rst = 0;
    // Test Case 1: Multiplication of positive and negative number
    A = 32'b00000000000000000000000000001010; // 10
    B = -32'b00000000000000000000000010010110; // -150
    #10;    

    // Test Case 2: Multiplication of positive and positive number
    A = 32'b00000000000000000000000000001010; // 10
    B = 32'b00000000000000000000000000001010; // 10
    #10;
    if (P === -1500) begin
      $display("TestCase 1: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 1: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 3: Multiplication of negative and negative number
    A = -32'b00000000000000000000000000001010; // -10
    B = -32'b00000000000000000000000010010110; // -150
    #10;
    if (P === 100) begin
      $display("TestCase 2: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 2: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 4: Multiplication of negative and positive number
    A = -32'b00000000000000000000000010010110; // -150
    B = 32'b00000000000000000000000010010110; // 150
    #10;
    if (P === 1500) begin
      $display("TestCase 3: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 3: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 5: Multiplication by zero
    A = 0; // Zero value for A
    B = 32'b00000000000000000000000010010110; // 150
    #10;
    if (P === -22500) begin
      $display("TestCase 4: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 4: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 6: Multiplication by 1
    A = 1; // Value 1 for A
    B = 32'b00000000000000000000000010010110; // 150
    #10;
    if (P === 0) begin
      $display("TestCase 5: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 5: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 7: Additional random test case 1
    A = 32'b00000000000000000000000000001010; // 10
    B = 32'b00000000000000000000000000010110; // 22
    #10;
    if (P === 150) begin
      $display("TestCase 6: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 6: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    // Test Case 8: Additional random test case 2
    A = 32'b00000000000000000000000000000010; // 2
    B = 32'b00000000000000000000000000000100; // 4
    #10;
    if (P === 220) begin
      $display("TestCase 7: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 7: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end
    #10;
    if (P === 8) begin
      $display("TestCase 8: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase 8: failed with input %d and %d and Output %d", A, B, P);
      fail_count = fail_count + 1;
    end


    // Reporting total success and failure test cases
    $display("Total Success Test Cases: %0d", success_count);
    $display("Total Failed Test Cases: %0d", fail_count);

    $finish;
    end
endmodule
