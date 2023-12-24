`timescale 1ns/1ns
module BoothMultiplier_TB;

  // Parameters
  parameter N = 32;
  integer success_count = 0;
  integer fail_count = 0;
  // Inputs
  reg clk = 0;
  reg oClk = 0;
  reg rst = 0;
  reg oRst = 0;
  reg signed [N-1:0] M = 0;  // Example multiplier
  reg signed [N-1:0] Q = 0;  // Example multiplicand
  reg signed [N-1:0] prev = 0;  // Example multiplicand
  // Outputs
  wire signed [2*N-1:0] P;  
  integer iter_count = 0;

  // Instantiate the BoothMultiplier module
  BoothMultiplier UUT (
    .clk(clk),
    .oClk(oClk),
    .rst(rst),
    .oRst(oRst),
    .M(M),
    .Q(Q),
    .P(P)
  );
  // Clock generation
  always #3 clk = ~clk;
  always #160 oClk = ~oClk; 

  initial begin
    oRst = 1;
    rst = 1;
    #1 oRst = 0;
    #1 rst = 0;
  end

  always @(posedge oClk) begin
    // Load new values into M and Q every iteration
    case (iter_count)
      0: begin
        M = 32'b00000000000000000000000000001010;
        Q = -32'b00000000000000000000000010010110;
      end
      1: begin
        M = 32'b00000000000000000000000000001010;
        Q = 32'b00000000000000000000000000001010;
      end
      2: begin
        M = -32'b00000000000000000000000000001010;
        Q = -32'b00000000000000000000000010010110;
      end
      3: begin
        M = -32'b00000000000000000000000010010110;
        Q = 32'b00000000000000000000000010010110;
      end
      4: begin
        M = 0;
        Q = 32'b00000000000000000000000010010110;
      end
      5: begin
        M = 1;
        Q = 32'b00000000000000000000000010010110;
      end
      6: begin
        M = 32'b00000000000000000000000000001010;
        Q = 32'b00000000000000000000000000010110;
      end
      7: begin
        M = 32'b00000000000000000000000000001010;
        Q = 32'b00000000000000000000000000000100;
      end
      // Add more cases as needed
    endcase
    prev <= M*Q;
    rst = 1;
    #1 rst = 0;
    if (prev === M*Q) begin
      $display("TestCase %d: success", iter_count + 1);
      success_count = success_count + 1;
    end
    else begin
      $display("TestCase %d: failed with input %d and %d and Output %d", iter_count + 1, M, Q, prev);
      fail_count = fail_count + 1;
    end
    // Increment the iteration counter
    iter_count = iter_count + 1;

    if (iter_count == 8) begin
      $display("TestBench: success_count = %d", success_count);
      $display("TestBench: fail_count = %d", fail_count);
      $finish;
    end
  end

endmodule
