module MUX #(
    parameter DATA_WIDTH = 1
)
(
    input [DATA_WIDTH - 1:0] IN0,
    input [DATA_WIDTH - 1:0] IN1,
    input [ $clog2(DATA_WIDTH) - 1 : 0 ] select, // Logarithm of DATA_WIDTH

    output [DATA_WIDTH - 1:0] OUT
);
    assign OUT = select ? IN1 : IN0;

endmodule
