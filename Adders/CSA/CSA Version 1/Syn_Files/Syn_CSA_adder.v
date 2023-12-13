

module CSA_ADDER ( sum, cout, a, b, cin );
  output [31:0] sum;
  input [31:0] a;
  input [31:0] b;
  input cin;
  output cout;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43;
  wire   [31:0] sum0;
  wire   [7:0] cout0;
  wire   [31:0] sum1;
  wire   [7:0] cout1;
  wire   [7:0] c;

  RCA4 rca0 ( .sum(sum0[3:0]), .cout(cout0[0]), .a(a[3:0]), .b(b[3:0]), 
        .cin(cin) );
  RCA4 rca1 ( .sum(sum1[3:0]), .cout(cout1[0]), .a(a[3:0]), .b(b[3:0]), 
        .cin(1'b1) );
  RCA4 \carrygen[1].rca0  ( .sum(sum0[7:4]), .cout(cout0[1]), .a(a[7:4]), 
        .b(b[7:4]), .cin(cout0[0]) );
  RCA4 \carrygen[1].rca1  ( .sum(sum1[7:4]), .cout(cout1[1]), .a(a[7:4]), 
        .b(b[7:4]), .cin(cout1[0]) );
  RCA4 \carrygen[2].rca0  ( .sum(sum0[11:8]), .cout(cout0[2]), .a(a[11:8]), 
        .b(b[11:8]), .cin(cout0[1]) );
  RCA4 \carrygen[2].rca1  ( .sum(sum1[11:8]), .cout(cout1[2]), .a(a[11:8]), 
        .b(b[11:8]), .cin(cout1[1]) );
  RCA4 \carrygen[3].rca0  ( .sum(sum0[15:12]), .cout(cout0[3]), .a(a[15:12]), .b(b[15:12]), .cin(cout0[2]) );
  RCA4 \carrygen[3].rca1  ( .sum(sum1[15:12]), .cout(cout1[3]), .a(a[15:12]), 
        .b(b[15:12]), .cin(cout1[2]) );
  RCA4 \carrygen[4].rca0  ( .sum(sum0[19:16]), .cout(cout0[4]), .a(a[19:16]), 
        .b(b[19:16]), .cin(cout0[3]) );
  RCA4 \carrygen[4].rca1  ( .sum(sum1[19:16]), .cout(cout1[4]), .a(a[19:16]), 
        .b(b[19:16]), .cin(cout1[3]) );
  RCA4 \carrygen[5].rca0  ( .sum(sum0[23:20]), .cout(cout0[5]), .a(a[23:20]), 
        .b(b[23:20]), .cin(cout0[4]) );
  RCA4 \carrygen[5].rca1  ( .sum(sum1[23:20]), .cout(cout1[5]), .a(a[23:20]), 
        .b(b[23:20]), .cin(cout1[4]) );
  RCA4 \carrygen[6].rca0  ( .sum(sum0[27:24]), .cout(cout0[6]), .a(a[27:24]), 
        .b(b[27:24]), .cin(cout0[5]) );
  RCA4 \carrygen[6].rca1  ( .sum(sum1[27:24]), .cout(cout1[6]), .a(a[27:24]), 
        .b(b[27:24]), .cin(cout1[5]) );
  RCA4 \carrygen[7].rca0  ( .sum(sum0[31:28]), .cout(cout0[7]), .a(a[31:28]), 
        .b(b[31:28]), .cin(cout0[6]) );
  RCA4 \carrygen[7].rca1  ( .sum(sum1[31:28]), .cout(cout1[7]), .a(a[31:28]), 
        .b(b[31:28]), .cin(cout1[6]) );
  MUX2 \sumsel[0].mux  ( .out(sum[0]), .sel(c[0]), .in0(sum0[0]), .in1(
        sum1[0]) );
  MUX2  \sumsel[1].mux  ( .out(sum[1]), .sel(c[0]), .in0(sum0[1]), .in1(
        sum1[1]) );
  MUX2  \sumsel[2].mux  ( .out(sum[2]), .sel(c[0]), .in0(sum0[2]), .in1(
        sum1[2]) );
  MUX2  \sumsel[3].mux  ( .out(sum[3]), .sel(c[0]), .in0(sum0[3]), .in1(
        sum1[3]) );
  MUX2  \sumsel[4].mux  ( .out(sum[4]), .sel(c[1]), .in0(sum0[4]), .in1(
        sum1[4]) );
  MUX2  \sumsel[5].mux  ( .out(sum[5]), .sel(c[1]), .in0(sum0[5]), .in1(
        sum1[5]) );
  MUX2  \sumsel[6].mux  ( .out(sum[6]), .sel(c[1]), .in0(sum0[6]), .in1(
        sum1[6]) );
  MUX2  \sumsel[7].mux  ( .out(sum[7]), .sel(c[1]), .in0(sum0[7]), .in1(
        sum1[7]) );
  MUX2  \sumsel[8].mux  ( .out(sum[8]), .sel(c[2]), .in0(sum0[8]), .in1(
        sum1[8]) );
  MUX2  \sumsel[9].mux  ( .out(sum[9]), .sel(c[2]), .in0(sum0[9]), .in1(
        sum1[9]) );
  MUX2  \sumsel[10].mux  ( .out(sum[10]), .sel(c[2]), .in0(sum0[10]), .in1(
        sum1[10]) );
  MUX2  \sumsel[11].mux  ( .out(sum[11]), .sel(c[2]), .in0(sum0[11]), .in1(
        sum1[11]) );
  MUX2  \sumsel[12].mux  ( .out(sum[12]), .sel(c[3]), .in0(sum0[12]), .in1(
        sum1[12]) );
  MUX2  \sumsel[13].mux  ( .out(sum[13]), .sel(c[3]), .in0(sum0[13]), .in1(
        sum1[13]) );
  MUX2  \sumsel[14].mux  ( .out(sum[14]), .sel(c[3]), .in0(sum0[14]), .in1(
        sum1[14]) );
  MUX2  \sumsel[15].mux  ( .out(sum[15]), .sel(c[3]), .in0(sum0[15]), .in1(
        sum1[15]) );
  MUX2  \sumsel[16].mux  ( .out(sum[16]), .sel(c[4]), .in0(sum0[16]), .in1(
        sum1[16]) );
  MUX2  \sumsel[17].mux  ( .out(sum[17]), .sel(c[4]), .in0(sum0[17]), .in1(
        sum1[17]) );
  MUX2  \sumsel[18].mux  ( .out(sum[18]), .sel(c[4]), .in0(sum0[18]), .in1(
        sum1[18]) );
  MUX2  \sumsel[19].mux  ( .out(sum[19]), .sel(c[4]), .in0(sum0[19]), .in1(
        sum1[19]) );
  MUX2  \sumsel[20].mux  ( .out(sum[20]), .sel(c[5]), .in0(sum0[20]), .in1(
        sum1[20]) );
  MUX2  \sumsel[21].mux  ( .out(sum[21]), .sel(c[5]), .in0(sum0[21]), .in1(
        sum1[21]) );
  MUX2  \sumsel[22].mux  ( .out(sum[22]), .sel(c[5]), .in0(sum0[22]), .in1(
        sum1[22]) );
  MUX2 \sumsel[23].mux  ( .out(sum[23]), .sel(c[5]), .in0(sum0[23]), .in1(
        sum1[23]) );
  MUX2 \sumsel[24].mux  ( .out(sum[24]), .sel(c[6]), .in0(sum0[24]), .in1(
        sum1[24]) );
  MUX2 \sumsel[25].mux  ( .out(sum[25]), .sel(c[6]), .in0(sum0[25]), .in1(
        sum1[25]) );
  MUX2 \sumsel[26].mux  ( .out(sum[26]), .sel(c[6]), .in0(sum0[26]), .in1(
        sum1[26]) );
  MUX2 \sumsel[27].mux  ( .out(sum[27]), .sel(c[6]), .in0(sum0[27]), .in1(
        sum1[27]) );
  MUX2 \sumsel[28].mux  ( .out(sum[28]), .sel(c[7]), .in0(sum0[28]), .in1(
        sum1[28]) );
  MUX2 \sumsel[29].mux  ( .out(sum[29]), .sel(c[7]), .in0(sum0[29]), .in1(
        sum1[29]) );
  MUX2 \sumsel[30].mux  ( .out(sum[30]), .sel(c[7]), .in0(sum0[30]), .in1(
        sum1[30]) );
  MUX2 \sumsel[31].mux  ( .out(sum[31]), .sel(c[7]), .in0(sum0[31]), .in1(
        sum1[31]) );
  AO21X1 U36 ( .IN1(cout0[7]), .IN2(n26), .IN3(n27), .Q(cout) );
  NOR2X0 U37 ( .IN1(n28), .IN2(n29), .QN(c[7]) );
  XOR2X1 U38 ( .IN1(cout1[7]), .IN2(cin), .Q(n29) );
  XNOR2X1 U39 ( .IN1(n27), .IN2(cout0[7]), .Q(n28) );
  AND2X1 U40 ( .IN1(cout1[7]), .IN2(cin), .Q(n27) );
  MUX21X1 U41 ( .IN1(n30), .IN2(n31), .S(cout1[6]), .Q(c[6]) );
  NOR2X0 U42 ( .IN1(cout0[6]), .IN2(n26), .QN(n31) );
  AND2X1 U43 ( .IN1(n26), .IN2(cout0[6]), .Q(n30) );
  MUX21X1 U44 ( .IN1(n32), .IN2(n33), .S(cout1[5]), .Q(c[5]) );
  NOR2X0 U45 ( .IN1(cout0[5]), .IN2(n26), .QN(n33) );
  AND2X1 U46 ( .IN1(n26), .IN2(cout0[5]), .Q(n32) );
  MUX21X1 U47 ( .IN1(n34), .IN2(n35), .S(cout1[4]), .Q(c[4]) );
  NOR2X0 U48 ( .IN1(cout0[4]), .IN2(n26), .QN(n35) );
  AND2X1 U49 ( .IN1(n26), .IN2(cout0[4]), .Q(n34) );
  MUX21X1 U50 ( .IN1(n36), .IN2(n37), .S(cout1[3]), .Q(c[3]) );
  NOR2X0 U51 ( .IN1(cout0[3]), .IN2(n26), .QN(n37) );
  AND2X1 U52 ( .IN1(n26), .IN2(cout0[3]), .Q(n36) );
  MUX21X1 U53 ( .IN1(n38), .IN2(n39), .S(cout1[2]), .Q(c[2]) );
  NOR2X0 U54 ( .IN1(cout0[2]), .IN2(n26), .QN(n39) );
  AND2X1 U55 ( .IN1(n26), .IN2(cout0[2]), .Q(n38) );
  MUX21X1 U56 ( .IN1(n40), .IN2(n41), .S(cout1[1]), .Q(c[1]) );
  NOR2X0 U57 ( .IN1(cout0[1]), .IN2(n26), .QN(n41) );
  AND2X1 U58 ( .IN1(n26), .IN2(cout0[1]), .Q(n40) );
  MUX21X1 U59 ( .IN1(n42), .IN2(n43), .S(cout1[0]), .Q(c[0]) );
  NOR2X0 U60 ( .IN1(cout0[0]), .IN2(n26), .QN(n43) );
  AND2X1 U61 ( .IN1(n26), .IN2(cout0[0]), .Q(n42) );
  INVX0 U62 ( .IN1(cin), .QN(n26) );
endmodule





module MUX2 ( out, sel, in0, in1 );
  input sel, in0, in1;
  output out;


  MUX21X1 U3 ( .IN1(in0), .IN2(in1), .S(sel), .Q(out) );
endmodule


module RCA4 ( sum, cout, a, b, cin );
  output [3:0] sum;
  input [3:0] a;
  input [3:0] b;
  input cin;
  output cout;
  wire   n3, n4, n5, n6, n7, n8, n9;

  XOR3X1 U3 ( .IN1(b[3]), .IN2(a[3]), .IN3(n3), .Q(sum[3]) );
  XOR3X1 U4 ( .IN1(b[2]), .IN2(a[2]), .IN3(n4), .Q(sum[2]) );
  XOR3X1 U5 ( .IN1(b[1]), .IN2(a[1]), .IN3(n5), .Q(sum[1]) );
  XOR3X1 U6 ( .IN1(cin), .IN2(b[0]), .IN3(a[0]), .Q(sum[0]) );
  AO22X1 U7 ( .IN1(a[3]), .IN2(n3), .IN3(b[3]), .IN4(n6), .Q(cout) );
  OR2X1 U8 ( .IN1(n3), .IN2(a[3]), .Q(n6) );
  AO22X1 U9 ( .IN1(a[2]), .IN2(n4), .IN3(b[2]), .IN4(n7), .Q(n3) );
  OR2X1 U10 ( .IN1(n4), .IN2(a[2]), .Q(n7) );
  AO22X1 U11 ( .IN1(a[1]), .IN2(n5), .IN3(b[1]), .IN4(n8), .Q(n4) );
  OR2X1 U12 ( .IN1(n5), .IN2(a[1]), .Q(n8) );
  AO22X1 U13 ( .IN1(b[0]), .IN2(a[0]), .IN3(cin), .IN4(n9), .Q(n5) );
  OR2X1 U14 ( .IN1(b[0]), .IN2(a[0]), .Q  (n9) );
endmodule

