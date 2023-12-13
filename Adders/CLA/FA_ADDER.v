/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 19:25:49 2023
/////////////////////////////////////////////////////////////


module FA_1bit ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2;

  XOR2X1 U4 ( .IN1(a), .IN2(n2), .Q(sum) );
  AO22X1 U5 ( .IN1(b), .IN2(cin), .IN3(a), .IN4(n2), .Q(cout) );
  XOR2X1 U6 ( .IN1(b), .IN2(cin), .Q(n2) );
endmodule

