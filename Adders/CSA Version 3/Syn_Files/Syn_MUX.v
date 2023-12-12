/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:15:16 2023
/////////////////////////////////////////////////////////////


module MUX ( IN0, IN1, select, OUT );
  input [0:0] IN0;
  input [0:0] IN1;
  output [0:0] OUT;
  input select;
  wire   N0, N1, N2;

  SELECT_OP C11 ( .DATA1(IN1[0]), .DATA2(IN0[0]), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(OUT[0]) );
  GTECH_BUF B_0 ( .A(select), .Z(N0) );
  GTECH_BUF B_1 ( .A(N2), .Z(N1) );
  GTECH_NOT I_0 ( .A(select), .Z(N2) );
endmodule

