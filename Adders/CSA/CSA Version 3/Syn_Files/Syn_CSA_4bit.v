/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Wed Dec 13 17:45:12 2023
/////////////////////////////////////////////////////////////


module Adder_SYN_4 ( A, B, Cin, Cout, S );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   \C[0] , n14, n15, n16, n17, n18, n19;
  wire   [7:1] C0;
  wire   [31:4] S0;
  wire   [7:1] C1;
  wire   [31:4] S1;

  RCA_N U0_RCA ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .Cout(\C[0] ), .S(S[3:0]) );
  RCA_N  \stages_count[1].genblk1.U_RCA_C0  ( .A(A[7:4]), .B(B[7:4]), .Cin(
        1'b0), .Cout(C0[1]), .S(S0[7:4]) );
  RCA_N  \stages_count[1].genblk1.U_RCA_C1  ( .A(A[7:4]), .B(B[7:4]), .Cin(
        1'b1), .Cout(C1[1]), .S(S1[7:4]) );
  RCA_N  \stages_count[2].genblk1.U_RCA_C0  ( .A(A[11:8]), .B(B[11:8]), 
        .Cin(1'b0), .Cout(C0[2]), .S(S0[11:8]) );
  RCA_N  \stages_count[2].genblk1.U_RCA_C1  ( .A(A[11:8]), .B(B[11:8]), 
        .Cin(1'b1), .Cout(C1[2]), .S(S1[11:8]) );
  RCA_N  \stages_count[3].genblk1.U_RCA_C0  ( .A(A[15:12]), .B(B[15:12]), 
        .Cin(1'b0), .Cout(C0[3]), .S(S0[15:12]) );
  RCA_N \stages_count[3].genblk1.U_RCA_C1  ( .A(A[15:12]), .B(B[15:12]), 
        .Cin(1'b1), .Cout(C1[3]), .S(S1[15:12]) );
  RCA_N \stages_count[4].genblk1.U_RCA_C0  ( .A(A[19:16]), .B(B[19:16]), 
        .Cin(1'b0), .Cout(C0[4]), .S(S0[19:16]) );
  RCA_N \stages_count[4].genblk1.U_RCA_C1  ( .A(A[19:16]), .B(B[19:16]), 
        .Cin(1'b1), .Cout(C1[4]), .S(S1[19:16]) );
  RCA_N \stages_count[5].genblk1.U_RCA_C0  ( .A(A[23:20]), .B(B[23:20]), 
        .Cin(1'b0), .Cout(C0[5]), .S(S0[23:20]) );
  RCA_N \stages_count[5].genblk1.U_RCA_C1  ( .A(A[23:20]), .B(B[23:20]), 
        .Cin(1'b1), .Cout(C1[5]), .S(S1[23:20]) );
  RCA_N \stages_count[6].genblk1.U_RCA_C0  ( .A(A[27:24]), .B(B[27:24]), 
        .Cin(1'b0), .Cout(C0[6]), .S(S0[27:24]) );
  RCA_N \stages_count[6].genblk1.U_RCA_C1  ( .A(A[27:24]), .B(B[27:24]), 
        .Cin(1'b1), .Cout(C1[6]), .S(S1[27:24]) );
  RCA_N \stages_count[7].genblk1.U_final_RCA_C0  ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b0), .Cout(C0[7]), .S(S0[31:28]) );
  RCA_N \stages_count[7].genblk1.U_final_RCA_C1  ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b1), .Cout(C1[7]), .S(S1[31:28]) );
  MUX21X1 U45 ( .IN1(S0[9]), .IN2(S1[9]), .S(n14), .Q(S[9]) );
  MUX21X1 U46 ( .IN1(S0[8]), .IN2(S1[8]), .S(n14), .Q(S[8]) );
  MUX21X1 U47 ( .IN1(S0[7]), .IN2(S1[7]), .S(\C[0] ), .Q(S[7]) );
  MUX21X1 U48 ( .IN1(S0[6]), .IN2(S1[6]), .S(\C[0] ), .Q(S[6]) );
  MUX21X1 U49 ( .IN1(S0[5]), .IN2(S1[5]), .S(\C[0] ), .Q(S[5]) );
  MUX21X1 U50 ( .IN1(S0[4]), .IN2(S1[4]), .S(\C[0] ), .Q(S[4]) );
  MUX21X1 U51 ( .IN1(S0[31]), .IN2(S1[31]), .S(n15), .Q(S[31]) );
  MUX21X1 U52 ( .IN1(S0[30]), .IN2(S1[30]), .S(n15), .Q(S[30]) );
  MUX21X1 U53 ( .IN1(S0[29]), .IN2(S1[29]), .S(n15), .Q(S[29]) );
  MUX21X1 U54 ( .IN1(S0[28]), .IN2(S1[28]), .S(n15), .Q(S[28]) );
  MUX21X1 U55 ( .IN1(S0[27]), .IN2(S1[27]), .S(n16), .Q(S[27]) );
  MUX21X1 U56 ( .IN1(S0[26]), .IN2(S1[26]), .S(n16), .Q(S[26]) );
  MUX21X1 U57 ( .IN1(S0[25]), .IN2(S1[25]), .S(n16), .Q(S[25]) );
  MUX21X1 U58 ( .IN1(S0[24]), .IN2(S1[24]), .S(n16), .Q(S[24]) );
  MUX21X1 U59 ( .IN1(S0[23]), .IN2(S1[23]), .S(n17), .Q(S[23]) );
  MUX21X1 U60 ( .IN1(S0[22]), .IN2(S1[22]), .S(n17), .Q(S[22]) );
  MUX21X1 U61 ( .IN1(S0[21]), .IN2(S1[21]), .S(n17), .Q(S[21]) );
  MUX21X1 U62 ( .IN1(S0[20]), .IN2(S1[20]), .S(n17), .Q(S[20]) );
  MUX21X1 U63 ( .IN1(S0[19]), .IN2(S1[19]), .S(n18), .Q(S[19]) );
  MUX21X1 U64 ( .IN1(S0[18]), .IN2(S1[18]), .S(n18), .Q(S[18]) );
  MUX21X1 U65 ( .IN1(S0[17]), .IN2(S1[17]), .S(n18), .Q(S[17]) );
  MUX21X1 U66 ( .IN1(S0[16]), .IN2(S1[16]), .S(n18), .Q(S[16]) );
  MUX21X1 U67 ( .IN1(S0[15]), .IN2(S1[15]), .S(n19), .Q(S[15]) );
  MUX21X1 U68 ( .IN1(S0[14]), .IN2(S1[14]), .S(n19), .Q(S[14]) );
  MUX21X1 U69 ( .IN1(S0[13]), .IN2(S1[13]), .S(n19), .Q(S[13]) );
  MUX21X1 U70 ( .IN1(S0[12]), .IN2(S1[12]), .S(n19), .Q(S[12]) );
  MUX21X1 U71 ( .IN1(S0[11]), .IN2(S1[11]), .S(n14), .Q(S[11]) );
  MUX21X1 U72 ( .IN1(S0[10]), .IN2(S1[10]), .S(n14), .Q(S[10]) );
  MUX21X1 U73 ( .IN1(C0[7]), .IN2(C1[7]), .S(n15), .Q(Cout) );
  MUX21X1 U74 ( .IN1(C0[6]), .IN2(C1[6]), .S(n16), .Q(n15) );
  MUX21X1 U75 ( .IN1(C0[5]), .IN2(C1[5]), .S(n17), .Q(n16) );
  MUX21X1 U76 ( .IN1(C0[4]), .IN2(C1[4]), .S(n18), .Q(n17) );
  MUX21X1 U77 ( .IN1(C0[3]), .IN2(C1[3]), .S(n19), .Q(n18) );
  MUX21X1 U78 ( .IN1(C0[2]), .IN2(C1[2]), .S(n14), .Q(n19) );
  MUX21X1 U79 ( .IN1(C0[1]), .IN2(C1[1]), .S(\C[0] ), .Q(n14) );
endmodule

module RCA_N ( A, B, Cin, Cout, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR3X1 U13 ( .IN1(B[3]), .IN2(A[3]), .IN3(n8), .Q(S[3]) );
  XOR3X1 U14 ( .IN1(B[2]), .IN2(A[2]), .IN3(n9), .Q(S[2]) );
  XOR3X1 U15 ( .IN1(B[1]), .IN2(A[1]), .IN3(n10), .Q(S[1]) );
  XOR3X1 U16 ( .IN1(Cin), .IN2(B[0]), .IN3(A[0]), .Q(S[0]) );
  AO22X1 U17 ( .IN1(A[3]), .IN2(n8), .IN3(B[3]), .IN4(n11), .Q(Cout) );
  OR2X1 U18 ( .IN1(n8), .IN2(A[3]), .Q(n11) );
  AO22X1 U19 ( .IN1(A[2]), .IN2(n9), .IN3(B[2]), .IN4(n12), .Q(n8) );
  OR2X1 U20 ( .IN1(n9), .IN2(A[2]), .Q(n12) );
  AO22X1 U21 ( .IN1(A[1]), .IN2(n10), .IN3(B[1]), .IN4(n13), .Q(n9) );
  OR2X1 U22 ( .IN1(n10), .IN2(A[1]), .Q(n13) );
  AO22X1 U23 ( .IN1(B[0]), .IN2(A[0]), .IN3(Cin), .IN4(n14), .Q(n10) );
  OR2X1 U24 ( .IN1(B[0]), .IN2(A[0]), .Q(n14) );
endmodule
