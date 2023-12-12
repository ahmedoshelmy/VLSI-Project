/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:15:16 2023
/////////////////////////////////////////////////////////////


module half_adder ( A, B, Cout, S );
  input A, B;
  output Cout, S;


  AND2X1 C8 ( .A(A), .B(B), .Z(Cout) );
  XOW2 C9 ( .A(A), .B(B), .Z(S) );
endmodule

