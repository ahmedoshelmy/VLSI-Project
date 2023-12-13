
module multiplier_tb;
  reg signed [31:0] a;
  reg signed [31:0] b;
  
  wire signed [63:0] sum;

  VerilogMultiplier dut (
    .a(a),
    .b(b),
    .sum(sum)
  );

  integer success_count = 0;
  integer fail_count = 0;
  integer testcase = 1;

//   function void check_result (bit [63:0] expected, bit [63:0] actual);
//     if (actual === expected) begin
//       $display("TestCase %0d: success", testcase);
//       success_count = success_count + 1;
//     end
//     else begin
//       $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, actual);
//       fail_count = fail_count + 1;
//     end
//   endfunction

  initial begin
    // Test Case 1: Multiplication of positive and negative number
    a = 32'b01010101010101010101010101010101;
    b = -32'b00110011001100110011001100110011;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end
    // Test Case 2: Multiplication of positive and positive number
    a = 32'b01010101010101010101010101010101;
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 3: Multiplication of negative and negative number
    a = -32'b01010101010101010101010101010101;
    b = -32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 4: Multiplication of negative and positive number
    a = -32'b01010101010101010101010101010101;
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 5: Multiplication by zero
    a = 0; // Zero value for a
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 6: Multiplication by 1
    a = 1; // Value 1 for a
    b = 32'b00110011001100110011001100110011;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 7: Additional random test case 1
    a = 32'b11001100110011001100110011001100;
    b = 32'b10101010101010101010101010101010;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Test Case 8: Additional random test case 2
    a = 32'b11110000111100001111000011110000;
    b = 32'b00001111111100000000111111110000;
    testcase = testcase + 1;
    #10;
    if (sum === a * b) begin
      $display("TestCase %0d: success", testcase);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %0d: failed with input %d and %d and Output %d", testcase, a, b, sum);
      fail_count = fail_count + 1;
    end

    // Reporting total success and failure test cases
    $display("Total Success Test Cases: %0d", success_count);
    $display("Total Failed Test Cases: %0d", fail_count);
    testcase = testcase + 1;
    end
endmodule
