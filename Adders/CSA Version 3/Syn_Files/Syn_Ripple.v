/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:15:16 2023
/////////////////////////////////////////////////////////////


module ripple_carry_adder ( A, B, Cin, P, G, Cout, S );
  input [15:0] A;
  input [15:0] B;
  output [15:0] P;
  output [15:0] G;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [15:1] C;

  full_adder U0_FA ( .A(A[0]), .B(B[0]), .Cin(Cin), .P(P[0]), .G(G[0]), .Cout(
        C[1]), .S(S[0]) );
  full_adder \genblk1[1].U_FA  ( .A(A[1]), .B(B[1]), .Cin(C[1]), .P(P[1]), .G(
        G[1]), .Cout(C[2]), .S(S[1]) );
  full_adder \genblk1[2].U_FA  ( .A(A[2]), .B(B[2]), .Cin(C[2]), .P(P[2]), .G(
        G[2]), .Cout(C[3]), .S(S[2]) );
  full_adder \genblk1[3].U_FA  ( .A(A[3]), .B(B[3]), .Cin(C[3]), .P(P[3]), .G(
        G[3]), .Cout(C[4]), .S(S[3]) );
  full_adder \genblk1[4].U_FA  ( .A(A[4]), .B(B[4]), .Cin(C[4]), .P(P[4]), .G(
        G[4]), .Cout(C[5]), .S(S[4]) );
  full_adder \genblk1[5].U_FA  ( .A(A[5]), .B(B[5]), .Cin(C[5]), .P(P[5]), .G(
        G[5]), .Cout(C[6]), .S(S[5]) );
  full_adder \genblk1[6].U_FA  ( .A(A[6]), .B(B[6]), .Cin(C[6]), .P(P[6]), .G(
        G[6]), .Cout(C[7]), .S(S[6]) );
  full_adder \genblk1[7].U_FA  ( .A(A[7]), .B(B[7]), .Cin(C[7]), .P(P[7]), .G(
        G[7]), .Cout(C[8]), .S(S[7]) );
  full_adder \genblk1[8].U_FA  ( .A(A[8]), .B(B[8]), .Cin(C[8]), .P(P[8]), .G(
        G[8]), .Cout(C[9]), .S(S[8]) );
  full_adder \genblk1[9].U_FA  ( .A(A[9]), .B(B[9]), .Cin(C[9]), .P(P[9]), .G(
        G[9]), .Cout(C[10]), .S(S[9]) );
  full_adder \genblk1[10].U_FA  ( .A(A[10]), .B(B[10]), .Cin(C[10]), .P(P[10]), 
        .G(G[10]), .Cout(C[11]), .S(S[10]) );
  full_adder \genblk1[11].U_FA  ( .A(A[11]), .B(B[11]), .Cin(C[11]), .P(P[11]), 
        .G(G[11]), .Cout(C[12]), .S(S[11]) );
  full_adder \genblk1[12].U_FA  ( .A(A[12]), .B(B[12]), .Cin(C[12]), .P(P[12]), 
        .G(G[12]), .Cout(C[13]), .S(S[12]) );
  full_adder \genblk1[13].U_FA  ( .A(A[13]), .B(B[13]), .Cin(C[13]), .P(P[13]), 
        .G(G[13]), .Cout(C[14]), .S(S[13]) );
  full_adder \genblk1[14].U_FA  ( .A(A[14]), .B(B[14]), .Cin(C[14]), .P(P[14]), 
        .G(G[14]), .Cout(C[15]), .S(S[14]) );
  full_adder \genblk1[15].U_FA  ( .A(A[15]), .B(B[15]), .Cin(C[15]), .P(P[15]), 
        .G(G[15]), .Cout(Cout), .S(S[15]) );
endmodule

