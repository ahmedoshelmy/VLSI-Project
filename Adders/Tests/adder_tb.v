`timescale 1 ns / 1 ns

module adder_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg cin;
  wire [31:0] sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa;
  wire cout_verilog, cout_ripple, cout_cbp, cout_cla, cout_csa,
   overflow_cla, overflow_cbp, overflow_ripple, overflow_verilog, overflow_csa;

  VerilogAdder dut1 (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum_verilog),
    .cout(cout_verilog)
  );

  RippleAdder dut2 (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum_ripple),
    .cout(cout_ripple)
  );

  CarryBypassAdderAlt dut3 (
    .A(a),
    .B(b),
    .Cin(cin),
    .Sum(sum_cbp),
    .Cout(cout_cbp)
  );

  CLA_ADDER dut4 (
    .A(a),
    .B(b),
    .cin(cin),
    .S(sum_cla),
    .cout(cout_cla),
    .overflow(overflow_cla)
  );
  CSA_ADDER dut5 (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum_csa),
    .cout(cout_csa)
  );

  assign overflow_verilog = (a[31] && b[31] && ~sum_verilog[31]) || (~a[31] && ~b[31] && sum_verilog[31]);
  assign overflow_ripple = (a[31] && b[31] && ~sum_ripple[31]) || (~a[31] && ~b[31] && sum_ripple[31]);
  assign overflow_cbp = (a[31] && b[31] && ~sum_cbp[31]) || (~a[31] && ~b[31] && sum_cbp[31]);
  assign overflow_csa = (a[31] && b[31] && ~sum_csa[31]) || (~a[31] && ~b[31] && sum_csa[31]);


  integer success_count = 0;

  initial begin
    // Test Case 1: Overflow of positive numbers
    a = 32'h7FFFFFFF;
    b = 32'h00000001;
    cin = 1'b0;
    #10;
    if (overflow_verilog === 1'b1 && overflow_ripple === 1'b1 && overflow_cbp === 1'b1 && overflow_cla === 1'b1 && overflow_csa === 1'b1) begin
      $display("TestCase#1: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#1: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);
    end

    // Test Case 2: Overflow of negative numbers
    a = -32'h80000000;
    b = -32'h00000001;
    cin = 1'b0;
    #10;    
    if (overflow_verilog === 1'b1 && overflow_ripple === 1'b1 && overflow_cbp === 1'b1 && overflow_cla === 1'b1 && overflow_csa === 1'b1) begin
      $display("TestCase#2: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#2: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);
    end

    // Test Case 3: Addition of positive and negative number
    a = 32'h00000005;
    b = -32'h00000003;
    cin = 1'b0;
    #10;
    if (sum_verilog === 32'h00000002 && sum_ripple === 32'h00000002 && sum_cbp === 32'h00000002 && sum_cla === 32'h00000002 && sum_csa === 32'h00000002) begin
      $display("TestCase#3: success");
      success_count = success_count + 1;
    end
    else begin

      $display("TestCase#3: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);

    end

    // Test Case 4: Addition of positive and positive number
    a = 32'h00000007;
    b = 32'h0000000A;
    cin = 1'b0;
    #10;
    if (sum_verilog === 32'h00000011 && sum_ripple === 32'h00000011 && sum_cbp === 32'h00000011 && sum_cla === 32'h00000011 && sum_csa === 32'h00000011) begin
      $display("TestCase#4: success");
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase#4: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);
    end

    // Test Case 5: Addition of negative and negative number
    a = -32'h00000004;
    b = -32'h00000008;
    cin = 1'b0;
    #10;
    if (sum_verilog === -32'h0000000C && sum_ripple === -32'h0000000C && sum_cbp === -32'h0000000C && sum_cla === -32'h0000000C && sum_csa === -32'h0000000C) begin
      $display("TestCase#5: success");
      success_count = success_count + 1;
    end
    else begin

      $display("TestCase#5: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);

    end

    // Test Case 6: Random Case
    a = 32'h0000000A; // 10 in hexadecimal
    b = 32'h0000000F; // 15 in hexadecimal
    cin = 1'b0;
    #10;
    if (sum_verilog === 32'h00000019 && sum_ripple === 32'h00000019 && sum_cbp === 32'h00000019 && sum_cla === 32'h00000019 && sum_csa === 32'h00000019) begin
      $display("TestCase#6: success");
      success_count = success_count + 1;
    end
    else begin

      $display("TestCase#6: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);

    end


    // Test Case 7: Random Case
    a = 32'h00000017; // 23 in hexadecimal
    b = 32'h00000008; // 8 in hexadecimal
    cin = 1'b0;
    #10;
    if (sum_verilog === 32'h0000001F && sum_ripple === 32'h0000001F && sum_cbp === 32'h0000001F && sum_cla === 32'h0000001F && sum_csa === 32'h0000001F) begin
      $display("TestCase#7: success");
      success_count = success_count + 1;
    end
    else begin

      $display("TestCase#7: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);

    end


    // Test Case 8: Random Case
    a = 32'h0000003C; // 60 in hexadecimal
    b = 32'h0000000A; // 10 in hexadecimal
    cin = 1'b0;
    #10;
    if (sum_verilog === 32'h00000046 && sum_ripple === 32'h00000046 && sum_cbp === 32'h00000046 && sum_cla === 32'h00000046 && sum_csa === 32'h00000046) begin
      $display("TestCase#8: success");
      success_count = success_count + 1;
    end
    else begin

      $display("TestCase#8: failed with input %h and %h and Output [V]=>%h, [R]=>%h, [CBP]=>%h, [CLA]=>%h, [CSA]=>%h and overflow status [V] => %b, [R] => %b, [CBP] => %b, [CLA] => %b, [CSA] => %b", a, b, sum_verilog, sum_ripple, sum_cbp, sum_cla, sum_csa, overflow_verilog, overflow_ripple, overflow_cbp, overflow_cla, overflow_csa);

    end




    $display("Total Success Test Cases: %0d", success_count);
    $finish;
  end

endmodule
