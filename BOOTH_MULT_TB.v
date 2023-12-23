module BoothMultiplier_TB;

  // Parameters
  parameter N = 32;

  // Inputs
  reg clk = 0;
  reg oClk = 0;
  reg rst = 0;
  reg oRst = 0;
  reg signed [N-1:0] M = 0;  // Example multiplier
  reg signed [N-1:0] Q = 0;  // Example multiplicand
  // Outputs
  wire signed [2*N-1:0] P;
  integer iter_count = 0;

  // Instantiate the BoothMultiplier module
  BoothMultiplier #(N) UUT (
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
        M = 32'd1;
        Q = 32'd2;
      end
      1: begin
        M = 32'd5;
        Q = 32'd7;
      end
      2: begin
        M = 32'd3;
        Q = 32'd10;
      end
      3: begin
        M = 32'd12;
        Q = 32'd5;
      end
      4: begin
        M = 32'd7;
        Q = 32'd7;
      end
      // Add more cases as needed
    endcase
    rst = 1;
    #1 rst = 0;
    // Increment the iteration counter
    iter_count = iter_count + 1;
  end

endmodule
