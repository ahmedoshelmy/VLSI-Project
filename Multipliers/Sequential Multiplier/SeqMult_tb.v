module A_SeqMult_TB;
  parameter N = 32;
  reg clk = 0;
  reg internalClk = 0;
  reg [N-1:0] multiplicand;
  reg [N-1:0] multiplier;
  reg reset = 0;
  reg en = 1;
  wire [2*N-1:0] product;

  SeqMult mult (
    clk,
    internalClk,
        reset,
     multiplicand,
    multiplier,
    product
  );
  always begin
    #32 clk = ~clk;
  end
   always begin
    #1 internalClk = ~internalClk;
  end


  initial begin

    // +ve * +ve
    multiplicand = 32'd7;
    multiplier = 32'd2;  //result = 14
    assign reset = 1;
    #500 ;
    assign reset = 0;
    #500;

      if (product != 64'd14)
        $display(
            "TestCase#1: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#1: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // -ve * +ve

    multiplicand = -32'd7;
    multiplier = 32'd3;  //result = -21
    assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != -64'd21)
        $display(
            "TestCase#2: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#2: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // 0 * -ve

    multiplicand = 32'd0;
    multiplier = -32'd60;  //result = 0
    assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;
      if (product != 64'd0)
        $display(
            "TestCase#3: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#3: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // +ve * -ve
    multiplicand = 32'd20;
    multiplier   = -32'd10;  //result = -200
    assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != -64'd200)
        $display(
            "TestCase#4: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#4: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // -ve * 0

    multiplicand = -32'd80;
    multiplier = 32'd0;  //result = 0
    assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != 64'd0)
        $display(
            "TestCase#5: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#5: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // -ve * -ve

    multiplicand = -32'd2;
    multiplier = -32'd2;  //result = 2
    assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != 64'd4)
        $display(
            "TestCase#6: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#6: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // 0 * +ve

    multiplicand = 32'd0;
    multiplier = 32'd3;  //result = 0
   assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;
      if (product != 64'd0)
        $display(
            "TestCase#7: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#7: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // +ve * 0

    multiplicand = 32'd5;
    multiplier = 32'd0;  //result = 0
   assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;
      if (product != 64'd0)
        $display(
            "TestCase#8: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#8: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // -ve * +ve

    multiplicand = -32'd19;
    multiplier = 32'd3;  //result = -57
      assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != -64'd57)
        $display(
            "TestCase#9: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#9: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

    // +ve * -ve

    multiplicand = 32'd2;
    multiplier = -32'd125;  //result = -250 
      assign reset = 1;
    #10 ;
    assign reset = 0;
    #500;

      if (product != -64'd250)
        $display(
            "TestCase#10: failed with input %d and %d and Output %d",
            multiplicand,
            multiplier,
            product
        );
      else
        $display(
            "TestCase#10: success input %d and %d and Output %d", multiplicand, multiplier, product
        );

  end
endmodule
