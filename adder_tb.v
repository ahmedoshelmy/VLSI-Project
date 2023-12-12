module adder_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg cin;
  wire [31:0] sum;
  wire cout;

  VerilogAdder dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  integer success_count = 0;

  initial begin
    // Test Case 1: Overflow of positive numbers
    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    cin = 1'b0;
    #10;
    if (cout === 1'b1) begin
      $display("TestCase#1: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#1: failed with input %h and %h and Output %h and overflow status %b", a, b, sum, cout);
    end

    // Test Case 2: Overflow of negative numbers
    a = -32'h80000000;
    b = -32'h00000001;
    cin = 1'b1;
    #10;
    if (cout === 1'b1) begin
      $display("TestCase#2: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#2: failed with input %h and %h and Output %h and overflow status %b", a, b, sum, cout);
    end

    // Test Case 3: Addition of positive and negative number
    a = 32'h00000005;
    b = -32'h00000003;
    cin = 1'b0;
    #10;
    if (sum === 32'h00000002) begin
      $display("TestCase#3: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#3: failed with input %h and %h and Output %h and overflow status %b", a, b, sum, cout);
    end

    // Test Case 4: Addition of positive and positive number
    a = 32'h00000007;
    b = 32'h0000000A;
    cin = 1'b0;
    #10;
    if (sum === 32'h00000011) begin
      $display("TestCase#4: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#4: failed with input %h and %h and Output %h and overflow status %b", a, b, sum, cout);
    end

    // Test Case 5: Addition of negative and negative number
    a = -32'h00000004;
    b = -32'h00000008;
    cin = 1'b0;
    #10;
    if (sum === -32'h0000000C) begin
      $display("TestCase#5: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#5: failed with input %h and %h and Output %h and overflow status %b", a, b, sum, cout);
    end

    $display("Total Success Test Cases: %0d", success_count);
    $finish;
  end

endmodule
