
module full_adder ( A, B, Cin, P, G, Cout, S );
  input A, B, Cin;
  output P, G, Cout, S;
  wire   C2;

  half_adder HA_1 ( .A(A), .B(B), .Cout(G), .S(P) );
  half_adder HA_2 ( .A(P), .B(Cin), .Cout(C2), .S(S) );
  OR2X1 U2 ( .IN1(C2), .IN2(G), .Q(Cout) );
endmodule

