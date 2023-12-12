module CarryBypassAdder_TB;

  // Parameters
  parameter NUM_BITS = 32;
  parameter NUM_STAGES = 4;

  // Inputs
  reg signed [NUM_BITS-1:0] A, B;
  reg Cin;

  // Outputs
  wire [NUM_BITS-1:0] Sum;
  wire Cout;

  // Instantiate the CarryBypassAdder module
  CarryBypassAdder #(NUM_BITS, NUM_STAGES) UUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  // Clock generation
  reg clk = 0;
  always #5 clk = ~clk;

  // Testbench stimulus
  initial begin

    // Test 1
    A = $signed(32'd10);
    B = $signed(32'd20);
    Cin = 0;
    #10;
    $display("Test 1: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 2
    A = $signed(32'd10);
    B = $signed(32'd20);
    Cin = 1;
    #10;
    $display("Test 2: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 3
    A = $signed(32'd15);
    B = $signed(32'd45);
    Cin = 0;
    #10;
    $display("Test 3: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 4 Negative
    A = $signed(-10);
    B = $signed(-20);
    Cin = 0;
    #10;
    $display("Test 4: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 5 Negative
    A = $signed(-10);
    B = $signed(-20);
    Cin = 1;
    #10;
    $display("Test 5: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);
    // Test 6 Overflow
    A = 64'd4294967296;
    B = $signed(10);
    Cin = 0;
    #10;

    $display("Test 6: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 7 Overflow
    A = $signed(-2147483647);
    B = $signed(2147483647);
    Cin = 1;

    #10;
    $display("Test 7: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 8
    A = $signed(14958);
    B = $signed(-14958);
    Cin = 0;
    #10;

    $display("Test 8: A = %d, B = %d, Cin = %b, Sum = %d, Cout = %b", A, B, Cin, Sum, Cout);

    // Test 9

    A = $signed(14958);
    B = $signed(-14958);
    Cin = 1;
    #10;

    // End simulation
    $finish;
  end

endmodule
