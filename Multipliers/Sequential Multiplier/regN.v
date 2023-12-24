module regN #(
    parameter N = 32
) (
    clk,
    reset,
    inp,
    out
);
  input clk, reset;
  output reg [N-1:0] out;
  input [N-1:0] inp;
  always @(posedge clk) begin
    if (reset) out <= 1'b0;
    else out <= inp;
  end
endmodule