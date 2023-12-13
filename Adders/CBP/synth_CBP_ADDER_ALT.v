
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 17:40:10 2023
/////////////////////////////////////////////////////////////


module CarryBypassAdderAlt ( A, B, Cin, Sum, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [31:0] carry_out;
  wire   [31:0] propagate;
  wire   [2:0] carry;

  FullAdder \GEN_STAGE[0].U  ( .A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), 
        .Cout(carry_out[0]), .propagate(propagate[0]) );
  FullAdder \GEN_STAGE[1].U  ( .A(A[1]), .B(B[1]), .Cin(carry_out[0]), 
        .Sum(Sum[1]), .Cout(carry_out[1]), .propagate(propagate[1]) );
  FullAdder \GEN_STAGE[2].U  ( .A(A[2]), .B(B[2]), .Cin(carry_out[1]), 
        .Sum(Sum[2]), .Cout(carry_out[2]), .propagate(propagate[2]) );
  FullAdder \GEN_STAGE[3].U  ( .A(A[3]), .B(B[3]), .Cin(carry_out[2]), 
        .Sum(Sum[3]), .Cout(carry_out[3]), .propagate(propagate[3]) );
  FullAdder \GEN_STAGE[4].U  ( .A(A[4]), .B(B[4]), .Cin(carry_out[3]), 
        .Sum(Sum[4]), .Cout(carry_out[4]), .propagate(propagate[4]) );
  FullAdder \GEN_STAGE[5].U  ( .A(A[5]), .B(B[5]), .Cin(carry_out[4]), 
        .Sum(Sum[5]), .Cout(carry_out[5]), .propagate(propagate[5]) );
  FullAdder \GEN_STAGE[6].U  ( .A(A[6]), .B(B[6]), .Cin(carry_out[5]), 
        .Sum(Sum[6]), .Cout(carry_out[6]), .propagate(propagate[6]) );
  FullAdder \GEN_STAGE[7].U  ( .A(A[7]), .B(B[7]), .Cin(carry_out[6]), 
        .Sum(Sum[7]), .Cout(carry_out[7]), .propagate(propagate[7]) );
  FullAdder \GEN_STAGE[8].U  ( .A(A[8]), .B(B[8]), .Cin(carry[0]), .Sum(
        Sum[8]), .Cout(carry_out[8]), .propagate(propagate[8]) );
  FullAdder \GEN_STAGE[9].U  ( .A(A[9]), .B(B[9]), .Cin(carry_out[8]), 
        .Sum(Sum[9]), .Cout(carry_out[9]), .propagate(propagate[9]) );
  FullAdder \GEN_STAGE[10].U  ( .A(A[10]), .B(B[10]), .Cin(carry_out[9]), 
        .Sum(Sum[10]), .Cout(carry_out[10]), .propagate(propagate[10]) );
  FullAdder \GEN_STAGE[11].U  ( .A(A[11]), .B(B[11]), .Cin(carry_out[10]), 
        .Sum(Sum[11]), .Cout(carry_out[11]), .propagate(propagate[11]) );
  FullAdder \GEN_STAGE[12].U  ( .A(A[12]), .B(B[12]), .Cin(carry_out[11]), 
        .Sum(Sum[12]), .Cout(carry_out[12]), .propagate(propagate[12]) );
  FullAdder \GEN_STAGE[13].U  ( .A(A[13]), .B(B[13]), .Cin(carry_out[12]), 
        .Sum(Sum[13]), .Cout(carry_out[13]), .propagate(propagate[13]) );
  FullAdder \GEN_STAGE[14].U  ( .A(A[14]), .B(B[14]), .Cin(carry_out[13]), 
        .Sum(Sum[14]), .Cout(carry_out[14]), .propagate(propagate[14]) );
  FullAdder \GEN_STAGE[15].U  ( .A(A[15]), .B(B[15]), .Cin(carry_out[14]), 
        .Sum(Sum[15]), .Cout(carry_out[15]), .propagate(propagate[15]) );
  FullAdder \GEN_STAGE[16].U  ( .A(A[16]), .B(B[16]), .Cin(carry[1]), .Sum(
        Sum[16]), .Cout(carry_out[16]), .propagate(propagate[16]) );
  FullAdder \GEN_STAGE[17].U  ( .A(A[17]), .B(B[17]), .Cin(carry_out[16]), 
        .Sum(Sum[17]), .Cout(carry_out[17]), .propagate(propagate[17]) );
  FullAdder \GEN_STAGE[18].U  ( .A(A[18]), .B(B[18]), .Cin(carry_out[17]), 
        .Sum(Sum[18]), .Cout(carry_out[18]), .propagate(propagate[18]) );
  FullAdder \GEN_STAGE[19].U  ( .A(A[19]), .B(B[19]), .Cin(carry_out[18]), 
        .Sum(Sum[19]), .Cout(carry_out[19]), .propagate(propagate[19]) );
  FullAdder \GEN_STAGE[20].U  ( .A(A[20]), .B(B[20]), .Cin(carry_out[19]), 
        .Sum(Sum[20]), .Cout(carry_out[20]), .propagate(propagate[20]) );
  FullAdder \GEN_STAGE[21].U  ( .A(A[21]), .B(B[21]), .Cin(carry_out[20]), 
        .Sum(Sum[21]), .Cout(carry_out[21]), .propagate(propagate[21]) );
  FullAdder \GEN_STAGE[22].U  ( .A(A[22]), .B(B[22]), .Cin(carry_out[21]), 
        .Sum(Sum[22]), .Cout(carry_out[22]), .propagate(propagate[22]) );
  FullAdder \GEN_STAGE[23].U  ( .A(A[23]), .B(B[23]), .Cin(carry_out[22]), 
        .Sum(Sum[23]), .Cout(carry_out[23]), .propagate(propagate[23]) );
  FullAdder \GEN_STAGE[24].U  ( .A(A[24]), .B(B[24]), .Cin(carry[2]), .Sum(
        Sum[24]), .Cout(carry_out[24]), .propagate(propagate[24]) );
  FullAdder \GEN_STAGE[25].U  ( .A(A[25]), .B(B[25]), .Cin(carry_out[24]), 
        .Sum(Sum[25]), .Cout(carry_out[25]), .propagate(propagate[25]) );
  FullAdder \GEN_STAGE[26].U  ( .A(A[26]), .B(B[26]), .Cin(carry_out[25]), 
        .Sum(Sum[26]), .Cout(carry_out[26]), .propagate(propagate[26]) );
  FullAdder \GEN_STAGE[27].U  ( .A(A[27]), .B(B[27]), .Cin(carry_out[26]), 
        .Sum(Sum[27]), .Cout(carry_out[27]), .propagate(propagate[27]) );
  FullAdder \GEN_STAGE[28].U  ( .A(A[28]), .B(B[28]), .Cin(carry_out[27]), 
        .Sum(Sum[28]), .Cout(carry_out[28]), .propagate(propagate[28]) );
  FullAdder \GEN_STAGE[29].U  ( .A(A[29]), .B(B[29]), .Cin(carry_out[28]), 
        .Sum(Sum[29]), .Cout(carry_out[29]), .propagate(propagate[29]) );
  FullAdder \GEN_STAGE[30].U  ( .A(A[30]), .B(B[30]), .Cin(carry_out[29]), 
        .Sum(Sum[30]), .Cout(carry_out[30]), .propagate(propagate[30]) );
  FullAdder \GEN_STAGE[31].U  ( .A(A[31]), .B(B[31]), .Cin(carry_out[30]), 
        .Sum(Sum[31]), .Cout(carry_out[31]), .propagate(propagate[31]) );
  MUX21X1 U21 ( .IN1(carry_out[31]), .IN2(carry[2]), .S(n17), .Q(Cout) );
  NOR2X0 U22 ( .IN1(n18), .IN2(n19), .QN(n17) );
  NAND4X0 U23 ( .IN1(propagate[31]), .IN2(propagate[30]), .IN3(propagate[29]), 
        .IN4(propagate[28]), .QN(n19) );
  NAND4X0 U24 ( .IN1(propagate[27]), .IN2(propagate[26]), .IN3(propagate[25]), 
        .IN4(propagate[24]), .QN(n18) );
  MUX21X1 U25 ( .IN1(carry_out[23]), .IN2(carry[1]), .S(n20), .Q(carry[2]) );
  NOR2X0 U26 ( .IN1(n21), .IN2(n22), .QN(n20) );
  NAND4X0 U27 ( .IN1(propagate[23]), .IN2(propagate[22]), .IN3(propagate[21]), 
        .IN4(propagate[20]), .QN(n22) );
  NAND4X0 U28 ( .IN1(propagate[19]), .IN2(propagate[18]), .IN3(propagate[17]), 
        .IN4(propagate[16]), .QN(n21) );
  MUX21X1 U29 ( .IN1(carry_out[15]), .IN2(carry[0]), .S(n23), .Q(carry[1]) );
  NOR2X0 U30 ( .IN1(n24), .IN2(n25), .QN(n23) );
  NAND4X0 U31 ( .IN1(propagate[9]), .IN2(propagate[8]), .IN3(propagate[15]), 
        .IN4(propagate[14]), .QN(n25) );
  NAND4X0 U32 ( .IN1(propagate[13]), .IN2(propagate[12]), .IN3(propagate[11]), 
        .IN4(propagate[10]), .QN(n24) );
  MUX21X1 U33 ( .IN1(carry_out[7]), .IN2(Cin), .S(n26), .Q(carry[0]) );
  NOR2X0 U34 ( .IN1(n27), .IN2(n28), .QN(n26) );
  NAND4X0 U35 ( .IN1(propagate[7]), .IN2(propagate[6]), .IN3(propagate[5]), 
        .IN4(propagate[4]), .QN(n28) );
  NAND4X0 U36 ( .IN1(propagate[3]), .IN2(propagate[2]), .IN3(propagate[1]), 
        .IN4(propagate[0]), .QN(n27) );
endmodule