
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:09:14 2023
/////////////////////////////////////////////////////////////


module FullAdder ( A, B, Cin, Sum, Cout, propagate );
  input A, B, Cin;
  output Sum, Cout, propagate;


  XOR2X1 U4 ( .IN1(Cin), .IN2(propagate), .Q(Sum) );
  AO22X1 U5 ( .IN1(A), .IN2(B), .IN3(Cin), .IN4(propagate), .Q(Cout) );
  XOR2X1 U6 ( .IN1(A), .IN2(B), .Q(propagate) );
endmodule