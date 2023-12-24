
module BoothMultiplier_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356;

  DELLN2X2 U3 ( .INP(n328), .Z(n22) );
  AND2X1 U4 ( .IN1(A[16]), .IN2(n254), .Q(n17) );
  DELLN1X2 U5 ( .INP(n268), .Z(n14) );
  NBUFFX2 U6 ( .INP(n238), .Z(n71) );
  NBUFFX2 U7 ( .INP(n211), .Z(n27) );
  AND2X1 U8 ( .IN1(A[0]), .IN2(n355), .Q(n100) );
  INVX0 U9 ( .INP(A[31]), .ZN(n13) );
  AND2X1 U10 ( .IN1(B[2]), .IN2(n42), .Q(n1) );
  NAND2X1 U11 ( .IN1(n217), .IN2(n36), .QN(n2) );
  NAND2X1 U12 ( .IN1(n187), .IN2(n182), .QN(n3) );
  NAND2X0 U13 ( .IN1(n72), .IN2(n73), .QN(n4) );
  OR2X1 U14 ( .IN1(n4), .IN2(n5), .Q(n10) );
  OR2X1 U15 ( .IN1(n2), .IN2(n54), .Q(n5) );
  NAND2X0 U16 ( .IN1(n161), .IN2(n9), .QN(n6) );
  NAND2X0 U17 ( .IN1(n6), .IN2(n7), .QN(n144) );
  OR2X1 U18 ( .IN1(n8), .IN2(n31), .Q(n7) );
  INVX0 U19 ( .INP(n29), .ZN(n8) );
  AND2X1 U20 ( .IN1(n160), .IN2(n29), .Q(n9) );
  NAND2X0 U21 ( .IN1(n10), .IN2(n11), .QN(n47) );
  OR2X1 U22 ( .IN1(n12), .IN2(n38), .Q(n11) );
  INVX0 U23 ( .INP(n36), .ZN(n12) );
  XOR3X1 U24 ( .IN1(n13), .IN2(B[31]), .IN3(n142), .Q(DIFF[31]) );
  NAND2X0 U25 ( .IN1(n47), .IN2(n48), .QN(n15) );
  OR2X1 U26 ( .IN1(n15), .IN2(n16), .Q(n39) );
  OR2X1 U27 ( .IN1(n3), .IN2(n59), .Q(n16) );
  NAND2X0 U28 ( .IN1(n82), .IN2(n21), .QN(n18) );
  AND2X1 U29 ( .IN1(n18), .IN2(n19), .Q(n72) );
  OR2X1 U30 ( .IN1(n20), .IN2(n244), .Q(n19) );
  INVX0 U31 ( .INP(n75), .ZN(n20) );
  AND2X1 U32 ( .IN1(n83), .IN2(n75), .Q(n21) );
  NAND2X0 U33 ( .IN1(n26), .IN2(n268), .QN(n23) );
  AND2X1 U34 ( .IN1(n23), .IN2(n24), .Q(n82) );
  OR2X1 U35 ( .IN1(n25), .IN2(n266), .Q(n24) );
  INVX0 U36 ( .INP(n85), .ZN(n25) );
  AND2X1 U37 ( .IN1(n267), .IN2(n85), .Q(n26) );
  NAND2X0 U38 ( .IN1(n160), .IN2(n161), .QN(n28) );
  OR2X1 U39 ( .IN1(n30), .IN2(n149), .Q(n29) );
  INVX0 U40 ( .INP(n145), .ZN(n30) );
  AND2X1 U41 ( .IN1(n151), .IN2(n145), .Q(n31) );
  NAND2X0 U42 ( .IN1(n176), .IN2(n35), .QN(n32) );
  AND2X1 U43 ( .IN1(n33), .IN2(n32), .Q(n43) );
  OR2X1 U44 ( .IN1(n34), .IN2(n174), .Q(n33) );
  INVX0 U45 ( .INP(n46), .ZN(n34) );
  AND2X1 U46 ( .IN1(n177), .IN2(n46), .Q(n35) );
  OR2X1 U47 ( .IN1(n37), .IN2(n209), .Q(n36) );
  INVX0 U48 ( .INP(n50), .ZN(n37) );
  AND2X1 U49 ( .IN1(n212), .IN2(n50), .Q(n38) );
  NAND2X0 U50 ( .IN1(n52), .IN2(n132), .QN(n322) );
  NAND2X0 U51 ( .IN1(n55), .IN2(n108), .QN(n302) );
  NAND2X0 U52 ( .IN1(n55), .IN2(n52), .QN(n279) );
  AND2X1 U53 ( .IN1(n39), .IN2(n40), .Q(n176) );
  OR2X1 U54 ( .IN1(n102), .IN2(n183), .Q(n40) );
  NAND2X0 U55 ( .IN1(n315), .IN2(n304), .QN(n314) );
  NAND2X0 U56 ( .IN1(n306), .IN2(n304), .QN(n317) );
  NAND2X0 U57 ( .IN1(A[13]), .IN2(n294), .QN(n263) );
  NAND2X0 U58 ( .IN1(A[14]), .IN2(n288), .QN(n259) );
  NAND2X0 U59 ( .IN1(B[14]), .IN2(n287), .QN(n262) );
  NAND2X0 U60 ( .IN1(B[17]), .IN2(n248), .QN(n246) );
  NAND2X0 U61 ( .IN1(A[10]), .IN2(n319), .QN(n306) );
  NAND2X0 U62 ( .IN1(B[13]), .IN2(n293), .QN(n266) );
  NAND2X0 U63 ( .IN1(A[12]), .IN2(n300), .QN(n267) );
  NAND2X0 U64 ( .IN1(B[7]), .IN2(n341), .QN(n114) );
  NAND2X0 U65 ( .IN1(B[11]), .IN2(n313), .QN(n303) );
  NAND2X0 U66 ( .IN1(A[11]), .IN2(n312), .QN(n305) );
  NAND2X0 U67 ( .IN1(B[3]), .IN2(n330), .QN(n137) );
  NAND2X0 U68 ( .IN1(A[7]), .IN2(n350), .QN(n115) );
  NAND2X0 U69 ( .IN1(B[12]), .IN2(n299), .QN(n270) );
  NAND2X0 U70 ( .IN1(A[5]), .IN2(n347), .QN(n123) );
  NAND2X0 U71 ( .IN1(n337), .IN2(B[2]), .QN(n41) );
  INVX0 U72 ( .INP(A[2]), .ZN(n42) );
  AND2X1 U73 ( .IN1(n43), .IN2(n44), .Q(n161) );
  OR2X1 U74 ( .IN1(n45), .IN2(n166), .Q(n44) );
  INVX0 U75 ( .INP(n162), .ZN(n45) );
  AND2X1 U76 ( .IN1(n169), .IN2(n162), .Q(n46) );
  NAND2X0 U77 ( .IN1(n47), .IN2(n48), .QN(n58) );
  OR2X1 U78 ( .IN1(n49), .IN2(n201), .Q(n48) );
  INVX0 U79 ( .INP(n70), .ZN(n49) );
  AND2X1 U80 ( .IN1(n204), .IN2(n70), .Q(n50) );
  INVX0 U81 ( .INP(n71), .ZN(n240) );
  INVX0 U82 ( .INP(n296), .ZN(n297) );
  NAND2X1 U83 ( .IN1(n301), .IN2(n302), .QN(n296) );
  INVX0 U84 ( .INP(n276), .ZN(n301) );
  INVX0 U85 ( .INP(n107), .ZN(n103) );
  INVX0 U86 ( .INP(n225), .ZN(n232) );
  INVX0 U87 ( .INP(n315), .ZN(n316) );
  INVX0 U88 ( .INP(n284), .ZN(n285) );
  INVX0 U89 ( .INP(n290), .ZN(n291) );
  AND2X1 U90 ( .IN1(n91), .IN2(n92), .Q(n51) );
  INVX0 U91 ( .INP(n125), .ZN(n127) );
  INVX0 U92 ( .INP(n141), .ZN(n154) );
  AND4X1 U93 ( .IN1(n114), .IN2(n119), .IN3(n126), .IN4(n131), .Q(n52) );
  NOR2X0 U94 ( .IN1(n53), .IN2(n54), .QN(n218) );
  NAND2X0 U95 ( .IN1(n72), .IN2(n73), .QN(n53) );
  NOR2X0 U96 ( .IN1(n76), .IN2(n223), .QN(n54) );
  AND4X1 U97 ( .IN1(n303), .IN2(n304), .IN3(n106), .IN4(n112), .Q(n55) );
  OR2X1 U98 ( .IN1(n97), .IN2(n114), .Q(n96) );
  INVX0 U99 ( .INP(n159), .ZN(n229) );
  INVX0 U100 ( .INP(n129), .ZN(n134) );
  NAND2X0 U101 ( .IN1(n323), .IN2(n324), .QN(n278) );
  NOR2X0 U102 ( .IN1(n229), .IN2(n327), .QN(n323) );
  INVX0 U103 ( .INP(n231), .ZN(n327) );
  OR2X1 U104 ( .IN1(n80), .IN2(n303), .Q(n79) );
  INVX0 U105 ( .INP(n310), .ZN(n110) );
  NAND2X0 U106 ( .IN1(n88), .IN2(n56), .QN(n86) );
  NAND2X0 U107 ( .IN1(n259), .IN2(n89), .QN(n56) );
  INVX0 U108 ( .INP(n139), .ZN(n334) );
  NAND2X0 U109 ( .IN1(n94), .IN2(n57), .QN(n92) );
  NAND2X0 U110 ( .IN1(n255), .IN2(n250), .QN(n57) );
  NOR2X0 U111 ( .IN1(n58), .IN2(n59), .QN(n188) );
  NOR2X0 U112 ( .IN1(n69), .IN2(n193), .QN(n59) );
  NAND2X0 U113 ( .IN1(n89), .IN2(n60), .QN(n88) );
  NAND2X1 U114 ( .IN1(n93), .IN2(n246), .QN(n60) );
  INVX0 U115 ( .INP(n137), .ZN(n326) );
  NAND2X0 U116 ( .IN1(n112), .IN2(n108), .QN(n321) );
  NAND2X0 U117 ( .IN1(n101), .IN2(n278), .QN(n132) );
  AND2X1 U118 ( .IN1(n138), .IN2(n22), .Q(n101) );
  NAND2X0 U119 ( .IN1(n105), .IN2(n320), .QN(n315) );
  NAND2X0 U120 ( .IN1(n106), .IN2(n107), .QN(n320) );
  AND2X1 U121 ( .IN1(n258), .IN2(n94), .Q(n93) );
  INVX0 U122 ( .INP(n116), .ZN(n121) );
  NAND2X1 U123 ( .IN1(n267), .IN2(n295), .QN(n290) );
  NAND2X1 U124 ( .IN1(n296), .IN2(n270), .QN(n295) );
  NAND2X1 U125 ( .IN1(n263), .IN2(n289), .QN(n284) );
  NAND2X1 U126 ( .IN1(n290), .IN2(n266), .QN(n289) );
  AND2X1 U127 ( .IN1(n223), .IN2(n224), .Q(n61) );
  AND2X1 U128 ( .IN1(n193), .IN2(n194), .Q(n62) );
  AND2X1 U129 ( .IN1(n187), .IN2(n188), .Q(n63) );
  NAND2X1 U130 ( .IN1(n306), .IN2(n314), .QN(n311) );
  NAND2X0 U131 ( .IN1(n259), .IN2(n283), .QN(n280) );
  NAND2X0 U132 ( .IN1(n284), .IN2(n262), .QN(n283) );
  NAND2X0 U133 ( .IN1(n129), .IN2(n130), .QN(n125) );
  NAND2X0 U134 ( .IN1(n131), .IN2(n132), .QN(n130) );
  NAND2X1 U135 ( .IN1(n123), .IN2(n124), .QN(n118) );
  NAND2X0 U136 ( .IN1(n125), .IN2(n126), .QN(n124) );
  NAND2X0 U137 ( .IN1(n156), .IN2(n157), .QN(n141) );
  NAND2X0 U138 ( .IN1(n158), .IN2(n159), .QN(n157) );
  NAND2X1 U139 ( .IN1(n230), .IN2(n327), .QN(n158) );
  NAND2X0 U140 ( .IN1(n116), .IN2(n117), .QN(n113) );
  NAND2X0 U141 ( .IN1(n118), .IN2(n119), .QN(n117) );
  AND2X1 U142 ( .IN1(n255), .IN2(n256), .Q(n64) );
  INVX0 U143 ( .INP(n100), .ZN(n230) );
  INVX0 U144 ( .INP(n112), .ZN(n111) );
  NAND2X0 U145 ( .IN1(n123), .IN2(n126), .QN(n128) );
  NOR2X0 U146 ( .IN1(n134), .IN2(n135), .QN(n133) );
  INVX0 U147 ( .INP(n131), .ZN(n135) );
  NOR2X0 U148 ( .IN1(n228), .IN2(n229), .QN(n227) );
  INVX0 U149 ( .INP(n156), .ZN(n228) );
  NAND2X0 U150 ( .IN1(n105), .IN2(n106), .QN(n104) );
  NAND2X1 U151 ( .IN1(n259), .IN2(n262), .QN(n286) );
  NAND2X1 U152 ( .IN1(n267), .IN2(n270), .QN(n298) );
  NAND2X1 U153 ( .IN1(n263), .IN2(n266), .QN(n292) );
  AND2X1 U154 ( .IN1(n255), .IN2(n258), .Q(n65) );
  NAND2X1 U155 ( .IN1(n244), .IN2(n246), .QN(n247) );
  NAND2X1 U156 ( .IN1(n217), .IN2(n219), .QN(n220) );
  NAND2X1 U157 ( .IN1(n187), .IN2(n189), .QN(n190) );
  AND2X1 U158 ( .IN1(n114), .IN2(n115), .Q(n66) );
  AND2X1 U159 ( .IN1(n303), .IN2(n305), .Q(n67) );
  NAND2X1 U160 ( .IN1(n236), .IN2(n239), .QN(n241) );
  NAND2X1 U161 ( .IN1(n223), .IN2(n226), .QN(n233) );
  NAND2X1 U162 ( .IN1(n193), .IN2(n196), .QN(n198) );
  NAND2X1 U163 ( .IN1(n182), .IN2(n183), .QN(n184) );
  NAND2X1 U164 ( .IN1(n209), .IN2(n212), .QN(n214) );
  NAND2X1 U165 ( .IN1(n201), .IN2(n204), .QN(n206) );
  NAND2X1 U166 ( .IN1(n174), .IN2(n177), .QN(n179) );
  NAND2X1 U167 ( .IN1(n166), .IN2(n169), .QN(n171) );
  AND2X1 U168 ( .IN1(n137), .IN2(n138), .Q(n68) );
  INVX0 U169 ( .INP(A[5]), .ZN(n345) );
  INVX0 U170 ( .INP(A[8]), .ZN(n351) );
  INVX0 U171 ( .INP(A[1]), .ZN(n333) );
  INVX0 U172 ( .INP(A[9]), .ZN(n353) );
  INVX0 U173 ( .INP(B[15]), .ZN(n282) );
  NAND2X1 U174 ( .IN1(A[28]), .IN2(n165), .QN(n160) );
  INVX0 U175 ( .INP(B[28]), .ZN(n165) );
  NAND2X1 U176 ( .IN1(A[29]), .IN2(n153), .QN(n149) );
  INVX0 U177 ( .INP(B[29]), .ZN(n153) );
  INVX0 U178 ( .INP(A[16]), .ZN(n253) );
  NAND2X1 U179 ( .IN1(A[30]), .IN2(n148), .QN(n143) );
  INVX0 U180 ( .INP(B[30]), .ZN(n148) );
  NAND2X1 U181 ( .IN1(B[10]), .IN2(n318), .QN(n304) );
  INVX0 U182 ( .INP(A[10]), .ZN(n318) );
  INVX0 U183 ( .INP(A[3]), .ZN(n330) );
  INVX0 U184 ( .INP(A[7]), .ZN(n341) );
  INVX0 U185 ( .INP(A[11]), .ZN(n313) );
  INVX0 U186 ( .INP(B[3]), .ZN(n339) );
  INVX0 U187 ( .INP(A[0]), .ZN(n356) );
  INVX0 U188 ( .INP(A[4]), .ZN(n340) );
  INVX0 U189 ( .INP(B[14]), .ZN(n288) );
  INVX0 U190 ( .INP(B[13]), .ZN(n294) );
  INVX0 U191 ( .INP(A[14]), .ZN(n287) );
  INVX0 U192 ( .INP(A[12]), .ZN(n299) );
  INVX0 U193 ( .INP(B[10]), .ZN(n319) );
  INVX0 U194 ( .INP(A[13]), .ZN(n293) );
  INVX0 U195 ( .INP(B[12]), .ZN(n300) );
  XOR3X1 U196 ( .IN1(n147), .IN2(B[30]), .IN3(n146), .Q(DIFF[30]) );
  XOR3X1 U197 ( .IN1(n152), .IN2(B[29]), .IN3(n28), .Q(DIFF[29]) );
  XOR3X1 U198 ( .IN1(n164), .IN2(B[28]), .IN3(n163), .Q(DIFF[28]) );
  NAND2X1 U199 ( .IN1(A[18]), .IN2(n243), .QN(n236) );
  INVX0 U200 ( .INP(B[18]), .ZN(n243) );
  NAND2X1 U201 ( .IN1(A[19]), .IN2(n235), .QN(n223) );
  INVX0 U202 ( .INP(B[19]), .ZN(n235) );
  INVX0 U203 ( .INP(B[7]), .ZN(n350) );
  INVX0 U204 ( .INP(B[11]), .ZN(n312) );
  INVX0 U205 ( .INP(A[17]), .ZN(n248) );
  NAND2X1 U206 ( .IN1(B[20]), .IN2(n221), .QN(n219) );
  INVX0 U207 ( .INP(A[20]), .ZN(n221) );
  NAND2X1 U208 ( .IN1(B[19]), .IN2(n234), .QN(n226) );
  INVX0 U209 ( .INP(A[19]), .ZN(n234) );
  NAND2X1 U210 ( .IN1(B[18]), .IN2(n242), .QN(n239) );
  INVX0 U211 ( .INP(A[18]), .ZN(n242) );
  NAND2X1 U212 ( .IN1(A[20]), .IN2(n222), .QN(n217) );
  INVX0 U213 ( .INP(B[20]), .ZN(n222) );
  NAND2X1 U214 ( .IN1(A[21]), .IN2(n216), .QN(n209) );
  INVX0 U215 ( .INP(B[21]), .ZN(n216) );
  NAND2X0 U216 ( .IN1(A[17]), .IN2(n249), .QN(n244) );
  INVX0 U217 ( .INP(B[17]), .ZN(n249) );
  NAND2X1 U218 ( .IN1(B[21]), .IN2(n215), .QN(n212) );
  INVX0 U219 ( .INP(A[21]), .ZN(n215) );
  NAND2X1 U220 ( .IN1(B[22]), .IN2(n207), .QN(n204) );
  INVX0 U221 ( .INP(A[22]), .ZN(n207) );
  NAND2X0 U222 ( .IN1(B[15]), .IN2(n281), .QN(n258) );
  INVX0 U223 ( .INP(A[15]), .ZN(n281) );
  INVX0 U224 ( .INP(B[9]), .ZN(n354) );
  NAND2X1 U225 ( .IN1(A[23]), .IN2(n200), .QN(n193) );
  INVX0 U226 ( .INP(B[23]), .ZN(n200) );
  NAND2X1 U227 ( .IN1(B[24]), .IN2(n191), .QN(n189) );
  INVX0 U228 ( .INP(A[24]), .ZN(n191) );
  NAND2X1 U229 ( .IN1(A[24]), .IN2(n192), .QN(n187) );
  INVX0 U230 ( .INP(B[24]), .ZN(n192) );
  NAND2X1 U231 ( .IN1(B[23]), .IN2(n199), .QN(n196) );
  INVX0 U232 ( .INP(A[23]), .ZN(n199) );
  NAND2X1 U233 ( .IN1(B[25]), .IN2(n185), .QN(n183) );
  INVX0 U234 ( .INP(A[25]), .ZN(n185) );
  NAND2X0 U235 ( .IN1(n231), .IN2(n230), .QN(DIFF[0]) );
  NAND2X1 U236 ( .IN1(A[25]), .IN2(n186), .QN(n182) );
  INVX0 U237 ( .INP(B[25]), .ZN(n186) );
  NAND2X1 U238 ( .IN1(A[22]), .IN2(n208), .QN(n201) );
  INVX0 U239 ( .INP(B[22]), .ZN(n208) );
  NAND2X1 U240 ( .IN1(A[26]), .IN2(n181), .QN(n174) );
  INVX0 U241 ( .INP(B[26]), .ZN(n181) );
  NAND2X1 U242 ( .IN1(A[27]), .IN2(n173), .QN(n166) );
  INVX0 U243 ( .INP(B[27]), .ZN(n173) );
  NAND2X1 U244 ( .IN1(B[26]), .IN2(n180), .QN(n177) );
  INVX0 U245 ( .INP(A[26]), .ZN(n180) );
  NAND2X1 U246 ( .IN1(B[27]), .IN2(n172), .QN(n169) );
  INVX0 U247 ( .INP(A[27]), .ZN(n172) );
  INVX0 U248 ( .INP(A[28]), .ZN(n164) );
  INVX0 U249 ( .INP(A[29]), .ZN(n152) );
  INVX0 U250 ( .INP(A[30]), .ZN(n147) );
  NAND2X1 U251 ( .IN1(B[30]), .IN2(n147), .QN(n145) );
  NAND2X1 U252 ( .IN1(B[28]), .IN2(n164), .QN(n162) );
  NAND2X1 U253 ( .IN1(B[29]), .IN2(n152), .QN(n151) );
  INVX0 U254 ( .INP(n203), .ZN(n205) );
  NAND2X0 U255 ( .IN1(n209), .IN2(n210), .QN(n203) );
  INVX0 U256 ( .INP(n168), .ZN(n170) );
  INVX0 U257 ( .INP(n195), .ZN(n197) );
  INVX0 U258 ( .INP(n189), .ZN(n69) );
  AND2X1 U259 ( .IN1(n196), .IN2(n189), .Q(n70) );
  OR2X1 U260 ( .IN1(n74), .IN2(n236), .Q(n73) );
  INVX0 U261 ( .INP(n77), .ZN(n74) );
  AND2X1 U262 ( .IN1(n239), .IN2(n77), .Q(n75) );
  INVX0 U263 ( .INP(n219), .ZN(n76) );
  AND2X1 U264 ( .IN1(n226), .IN2(n219), .Q(n77) );
  NAND2X0 U265 ( .IN1(n139), .IN2(n140), .QN(n136) );
  NAND2X0 U266 ( .IN1(A[4]), .IN2(n344), .QN(n129) );
  NAND2X0 U267 ( .IN1(n307), .IN2(n81), .QN(n78) );
  AND2X1 U268 ( .IN1(n78), .IN2(n79), .Q(n276) );
  INVX0 U269 ( .INP(n305), .ZN(n80) );
  AND2X1 U270 ( .IN1(n306), .IN2(n305), .Q(n81) );
  NAND2X0 U271 ( .IN1(A[16]), .IN2(n254), .QN(n250) );
  NAND2X0 U272 ( .IN1(A[15]), .IN2(n282), .QN(n255) );
  NAND2X0 U273 ( .IN1(n250), .IN2(n251), .QN(n252) );
  INVX0 U274 ( .INP(n176), .ZN(n178) );
  INVX0 U275 ( .INP(B[16]), .ZN(n254) );
  NAND2X0 U276 ( .IN1(B[16]), .IN2(n253), .QN(n251) );
  NAND2X0 U277 ( .IN1(n83), .IN2(n82), .QN(n245) );
  OR2X1 U278 ( .IN1(n84), .IN2(n87), .Q(n83) );
  INVX0 U279 ( .INP(n86), .ZN(n84) );
  AND2X1 U280 ( .IN1(n86), .IN2(n263), .Q(n85) );
  AND2X1 U281 ( .IN1(n262), .IN2(n88), .Q(n87) );
  OR2X1 U282 ( .IN1(n90), .IN2(n92), .Q(n89) );
  INVX0 U283 ( .INP(n246), .ZN(n90) );
  NAND2X0 U284 ( .IN1(n257), .IN2(n93), .QN(n91) );
  INVX0 U285 ( .INP(B[6]), .ZN(n349) );
  NAND2X0 U286 ( .IN1(B[6]), .IN2(n348), .QN(n119) );
  NAND2X1 U287 ( .IN1(A[9]), .IN2(n354), .QN(n105) );
  OR2X1 U288 ( .IN1(n17), .IN2(n251), .Q(n94) );
  NAND2X0 U289 ( .IN1(n342), .IN2(n98), .QN(n95) );
  NAND2X0 U290 ( .IN1(n95), .IN2(n96), .QN(n99) );
  INVX0 U291 ( .INP(n115), .ZN(n97) );
  AND2X1 U292 ( .IN1(n343), .IN2(n115), .Q(n98) );
  NAND2X0 U293 ( .IN1(A[1]), .IN2(n336), .QN(n156) );
  NAND2X0 U294 ( .IN1(n338), .IN2(A[2]), .QN(n139) );
  NOR2X0 U295 ( .IN1(n325), .IN2(n326), .QN(n324) );
  INVX0 U296 ( .INP(n41), .ZN(n325) );
  INVX0 U297 ( .INP(B[5]), .ZN(n347) );
  NAND2X0 U298 ( .IN1(B[5]), .IN2(n345), .QN(n126) );
  INVX0 U299 ( .INP(B[4]), .ZN(n344) );
  NAND2X1 U300 ( .IN1(B[4]), .IN2(n340), .QN(n131) );
  INVX0 U301 ( .INP(B[1]), .ZN(n336) );
  NAND2X0 U302 ( .IN1(B[1]), .IN2(n333), .QN(n159) );
  NOR2X0 U303 ( .IN1(n276), .IN2(n277), .QN(n271) );
  NOR2X0 U304 ( .IN1(n278), .IN2(n279), .QN(n277) );
  NAND2X0 U305 ( .IN1(A[3]), .IN2(n339), .QN(n138) );
  NAND2X0 U306 ( .IN1(n138), .IN2(n328), .QN(n275) );
  INVX0 U307 ( .INP(B[2]), .ZN(n338) );
  INVX0 U308 ( .INP(A[6]), .ZN(n348) );
  NAND2X0 U309 ( .IN1(n270), .IN2(n269), .QN(n268) );
  NAND2X0 U310 ( .IN1(n271), .IN2(n272), .QN(n269) );
  NAND2X0 U311 ( .IN1(B[8]), .IN2(n351), .QN(n112) );
  NOR2X0 U312 ( .IN1(n121), .IN2(n122), .QN(n120) );
  NAND2X0 U313 ( .IN1(n99), .IN2(n322), .QN(n108) );
  NAND2X0 U314 ( .IN1(n55), .IN2(n273), .QN(n272) );
  NAND2X0 U315 ( .IN1(n308), .IN2(n304), .QN(n307) );
  NAND2X1 U316 ( .IN1(B[9]), .IN2(n353), .QN(n106) );
  INVX0 U317 ( .INP(n182), .ZN(n102) );
  NAND2X0 U318 ( .IN1(n105), .IN2(n309), .QN(n308) );
  NAND2X0 U319 ( .IN1(n52), .IN2(n275), .QN(n274) );
  NAND2X0 U320 ( .IN1(n274), .IN2(n99), .QN(n273) );
  NAND2X0 U321 ( .IN1(n174), .IN2(n175), .QN(n168) );
  NOR2X0 U322 ( .IN1(n110), .IN2(n111), .QN(n109) );
  NAND2X0 U323 ( .IN1(n310), .IN2(n321), .QN(n107) );
  NAND2X0 U324 ( .IN1(n110), .IN2(n106), .QN(n309) );
  INVX0 U325 ( .INP(n27), .ZN(n213) );
  INVX0 U326 ( .INP(B[0]), .ZN(n355) );
  NAND2X1 U327 ( .IN1(B[0]), .IN2(n356), .QN(n231) );
  NAND2X0 U328 ( .IN1(n217), .IN2(n218), .QN(n211) );
  NAND2X0 U329 ( .IN1(A[8]), .IN2(n352), .QN(n310) );
  NAND2X0 U330 ( .IN1(n41), .IN2(n139), .QN(n155) );
  NAND2X0 U331 ( .IN1(n141), .IN2(n41), .QN(n140) );
  NAND2X0 U332 ( .IN1(n329), .IN2(n137), .QN(n328) );
  NAND3X1 U333 ( .IN1(n41), .IN2(n100), .IN3(n159), .QN(n332) );
  INVX0 U334 ( .INP(B[8]), .ZN(n352) );
  NAND2X0 U335 ( .IN1(n166), .IN2(n167), .QN(n163) );
  NAND2X0 U336 ( .IN1(n168), .IN2(n169), .QN(n167) );
  NAND2X0 U337 ( .IN1(n245), .IN2(n244), .QN(n238) );
  NOR2X0 U338 ( .IN1(n121), .IN2(n346), .QN(n342) );
  NAND2X0 U339 ( .IN1(n201), .IN2(n202), .QN(n195) );
  NAND2X0 U340 ( .IN1(n331), .IN2(n332), .QN(n329) );
  NOR2X0 U341 ( .IN1(n122), .IN2(n123), .QN(n346) );
  NAND2X0 U342 ( .IN1(n203), .IN2(n204), .QN(n202) );
  INVX0 U343 ( .INP(n119), .ZN(n122) );
  NAND2X0 U344 ( .IN1(n143), .IN2(n144), .QN(n142) );
  NAND2X0 U345 ( .IN1(n149), .IN2(n150), .QN(n146) );
  NAND2X0 U346 ( .IN1(A[6]), .IN2(n349), .QN(n116) );
  NAND2X0 U347 ( .IN1(n257), .IN2(n258), .QN(n256) );
  NAND2X0 U348 ( .IN1(n176), .IN2(n177), .QN(n175) );
  NAND2X0 U349 ( .IN1(n27), .IN2(n212), .QN(n210) );
  NOR2X0 U350 ( .IN1(n335), .IN2(n334), .QN(n331) );
  NOR2X0 U351 ( .IN1(n1), .IN2(n156), .QN(n335) );
  NAND2X0 U352 ( .IN1(n151), .IN2(n28), .QN(n150) );
  NAND2X0 U353 ( .IN1(n259), .IN2(n260), .QN(n257) );
  NAND2X0 U354 ( .IN1(n195), .IN2(n196), .QN(n194) );
  NAND2X0 U355 ( .IN1(n236), .IN2(n237), .QN(n225) );
  NAND2X0 U356 ( .IN1(n71), .IN2(n239), .QN(n237) );
  NAND2X0 U357 ( .IN1(n225), .IN2(n226), .QN(n224) );
  NAND2X0 U358 ( .IN1(n265), .IN2(n266), .QN(n264) );
  NAND2X0 U359 ( .IN1(n14), .IN2(n267), .QN(n265) );
  NAND2X0 U360 ( .IN1(n261), .IN2(n262), .QN(n260) );
  NAND2X0 U361 ( .IN1(n263), .IN2(n264), .QN(n261) );
  INVX0 U362 ( .INP(A[2]), .ZN(n337) );
  XOR2X1 U363 ( .IN1(n103), .IN2(n104), .Q(DIFF[9]) );
  XOR2X1 U364 ( .IN1(n108), .IN2(n109), .Q(DIFF[8]) );
  XOR2X1 U365 ( .IN1(n113), .IN2(n66), .Q(DIFF[7]) );
  XOR2X1 U366 ( .IN1(n118), .IN2(n120), .Q(DIFF[6]) );
  XOR2X1 U367 ( .IN1(n127), .IN2(n128), .Q(DIFF[5]) );
  XOR2X1 U368 ( .IN1(n132), .IN2(n133), .Q(DIFF[4]) );
  XOR2X1 U369 ( .IN1(n136), .IN2(n68), .Q(DIFF[3]) );
  XOR2X1 U370 ( .IN1(n154), .IN2(n155), .Q(DIFF[2]) );
  XOR2X1 U371 ( .IN1(n170), .IN2(n171), .Q(DIFF[27]) );
  XOR2X1 U372 ( .IN1(n178), .IN2(n179), .Q(DIFF[26]) );
  XOR2X1 U373 ( .IN1(n63), .IN2(n184), .Q(DIFF[25]) );
  XOR2X1 U374 ( .IN1(n62), .IN2(n190), .Q(DIFF[24]) );
  XOR2X1 U375 ( .IN1(n197), .IN2(n198), .Q(DIFF[23]) );
  XOR2X1 U376 ( .IN1(n205), .IN2(n206), .Q(DIFF[22]) );
  XOR2X1 U377 ( .IN1(n213), .IN2(n214), .Q(DIFF[21]) );
  XOR2X1 U378 ( .IN1(n61), .IN2(n220), .Q(DIFF[20]) );
  XOR2X1 U379 ( .IN1(n158), .IN2(n227), .Q(DIFF[1]) );
  XOR2X1 U380 ( .IN1(n232), .IN2(n233), .Q(DIFF[19]) );
  XOR2X1 U381 ( .IN1(n240), .IN2(n241), .Q(DIFF[18]) );
  XOR2X1 U382 ( .IN1(n51), .IN2(n247), .Q(DIFF[17]) );
  XOR2X1 U383 ( .IN1(n64), .IN2(n252), .Q(DIFF[16]) );
  XOR2X1 U384 ( .IN1(n280), .IN2(n65), .Q(DIFF[15]) );
  XOR2X1 U385 ( .IN1(n285), .IN2(n286), .Q(DIFF[14]) );
  XOR2X1 U386 ( .IN1(n291), .IN2(n292), .Q(DIFF[13]) );
  XOR2X1 U387 ( .IN1(n297), .IN2(n298), .Q(DIFF[12]) );
  XOR2X1 U388 ( .IN1(n311), .IN2(n67), .Q(DIFF[11]) );
  XOR2X1 U389 ( .IN1(n316), .IN2(n317), .Q(DIFF[10]) );
  NAND3X0 U390 ( .IN1(n119), .IN2(n126), .IN3(n134), .QN(n343) );
endmodule


module BoothMultiplier_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289;

  NAND3X0 U2 ( .IN1(n114), .IN2(n121), .IN3(n129), .QN(n288) );
  AND2X1 U3 ( .IN1(n173), .IN2(n174), .Q(n1) );
  AND2X1 U4 ( .IN1(n205), .IN2(n206), .Q(n2) );
  NAND2X1 U5 ( .IN1(n165), .IN2(n162), .QN(n3) );
  NOR2X0 U6 ( .IN1(n3), .IN2(n60), .QN(n4) );
  AND2X1 U7 ( .IN1(n203), .IN2(n202), .Q(SUM[0]) );
  NAND2X1 U8 ( .IN1(n230), .IN2(n9), .QN(n6) );
  NAND2X0 U9 ( .IN1(n6), .IN2(n7), .QN(n26) );
  OR2X1 U10 ( .IN1(n8), .IN2(n20), .Q(n7) );
  INVX0 U11 ( .INP(n18), .ZN(n8) );
  AND2X1 U12 ( .IN1(n229), .IN2(n18), .Q(n9) );
  NAND2X0 U13 ( .IN1(n14), .IN2(n13), .QN(n10) );
  NAND2X0 U14 ( .IN1(n10), .IN2(n11), .QN(n159) );
  OR2X1 U15 ( .IN1(n12), .IN2(n21), .Q(n11) );
  INVX0 U16 ( .INP(n54), .ZN(n12) );
  AND2X1 U17 ( .IN1(n15), .IN2(n54), .Q(n13) );
  NAND2X0 U18 ( .IN1(n199), .IN2(n17), .QN(n14) );
  NAND2X0 U19 ( .IN1(n14), .IN2(n15), .QN(n69) );
  OR2X1 U20 ( .IN1(n16), .IN2(n53), .Q(n15) );
  INVX0 U21 ( .INP(n51), .ZN(n16) );
  AND2X1 U22 ( .IN1(n77), .IN2(n51), .Q(n17) );
  OR2X1 U23 ( .IN1(n19), .IN2(n227), .Q(n18) );
  INVX0 U24 ( .INP(n29), .ZN(n19) );
  AND2X1 U25 ( .IN1(n228), .IN2(n29), .Q(n20) );
  AND2X1 U26 ( .IN1(n70), .IN2(n4), .Q(n21) );
  NAND2X0 U27 ( .IN1(n157), .IN2(n25), .QN(n22) );
  AND2X1 U28 ( .IN1(n22), .IN2(n23), .Q(n142) );
  OR2X1 U29 ( .IN1(n24), .IN2(n146), .Q(n23) );
  INVX0 U30 ( .INP(n145), .ZN(n24) );
  AND2X1 U31 ( .IN1(n156), .IN2(n145), .Q(n25) );
  AND2X1 U32 ( .IN1(n26), .IN2(n27), .Q(n93) );
  OR2X1 U33 ( .IN1(n28), .IN2(n225), .Q(n27) );
  INVX0 U34 ( .INP(n96), .ZN(n28) );
  AND2X1 U35 ( .IN1(n226), .IN2(n96), .Q(n29) );
  NAND2X0 U36 ( .IN1(n199), .IN2(n77), .QN(n30) );
  NAND2X1 U37 ( .IN1(n175), .IN2(n34), .QN(n31) );
  AND2X1 U38 ( .IN1(n31), .IN2(n32), .Q(n170) );
  OR2X1 U39 ( .IN1(n33), .IN2(n173), .Q(n32) );
  INVX0 U40 ( .INP(n171), .ZN(n33) );
  AND2X1 U41 ( .IN1(n176), .IN2(n171), .Q(n34) );
  NAND2X0 U42 ( .IN1(n207), .IN2(n38), .QN(n35) );
  AND2X1 U43 ( .IN1(n35), .IN2(n36), .Q(n199) );
  OR2X1 U44 ( .IN1(n37), .IN2(n205), .Q(n36) );
  INVX0 U45 ( .INP(n200), .ZN(n37) );
  AND2X1 U46 ( .IN1(n208), .IN2(n200), .Q(n38) );
  NAND2X0 U47 ( .IN1(n159), .IN2(n42), .QN(n39) );
  AND2X1 U48 ( .IN1(n39), .IN2(n40), .Q(n47) );
  OR2X1 U49 ( .IN1(n41), .IN2(n156), .Q(n40) );
  INVX0 U50 ( .INP(n50), .ZN(n41) );
  AND2X1 U51 ( .IN1(n158), .IN2(n50), .Q(n42) );
  NAND2X0 U52 ( .IN1(n221), .IN2(n46), .QN(n43) );
  AND2X1 U53 ( .IN1(n44), .IN2(n43), .Q(n88) );
  OR2X1 U54 ( .IN1(n45), .IN2(n217), .Q(n44) );
  INVX0 U55 ( .INP(n91), .ZN(n45) );
  AND2X1 U56 ( .IN1(n220), .IN2(n91), .Q(n46) );
  AND2X1 U57 ( .IN1(n47), .IN2(n48), .Q(n140) );
  OR2X1 U58 ( .IN1(n49), .IN2(n145), .Q(n48) );
  INVX0 U59 ( .INP(n141), .ZN(n49) );
  AND2X1 U60 ( .IN1(n146), .IN2(n141), .Q(n50) );
  OR2X1 U61 ( .IN1(n52), .IN2(n179), .Q(n51) );
  INVX0 U62 ( .INP(n72), .ZN(n52) );
  AND2X1 U63 ( .IN1(n75), .IN2(n72), .Q(n53) );
  NAND2X0 U64 ( .IN1(n249), .IN2(n250), .QN(n233) );
  NOR2X0 U65 ( .IN1(n130), .IN2(n124), .QN(n283) );
  NAND2X0 U66 ( .IN1(n246), .IN2(n228), .QN(n245) );
  OR2X1 U67 ( .IN1(n92), .IN2(n163), .Q(n54) );
  NAND2X0 U68 ( .IN1(n252), .IN2(n102), .QN(n273) );
  NAND2X0 U69 ( .IN1(n259), .IN2(n268), .QN(n265) );
  NAND2X0 U70 ( .IN1(n269), .IN2(n262), .QN(n268) );
  NAND2X0 U71 ( .IN1(n251), .IN2(n97), .QN(n272) );
  NAND2X0 U72 ( .IN1(n120), .IN2(n121), .QN(n119) );
  NAND2X0 U73 ( .IN1(n127), .IN2(n235), .QN(n126) );
  NAND2X0 U74 ( .IN1(n280), .IN2(n155), .QN(n154) );
  NAND2X0 U75 ( .IN1(n227), .IN2(n228), .QN(n248) );
  NAND2X0 U76 ( .IN1(B[14]), .IN2(A[14]), .QN(n223) );
  NAND2X0 U77 ( .IN1(B[13]), .IN2(A[13]), .QN(n225) );
  NAND2X0 U78 ( .IN1(B[12]), .IN2(A[12]), .QN(n227) );
  NAND2X0 U79 ( .IN1(B[17]), .IN2(A[17]), .QN(n211) );
  INVX0 U80 ( .INP(n233), .ZN(n234) );
  INVX0 U81 ( .INP(n246), .ZN(n247) );
  AND2X1 U82 ( .IN1(n282), .IN2(n283), .Q(n55) );
  NOR2X0 U83 ( .IN1(n105), .IN2(n100), .QN(n250) );
  NOR2X0 U84 ( .IN1(n253), .IN2(n254), .QN(n249) );
  NAND2X0 U85 ( .IN1(n55), .IN2(n235), .QN(n274) );
  OR2X1 U86 ( .IN1(n232), .IN2(n56), .Q(n246) );
  AND2X1 U87 ( .IN1(n234), .IN2(n102), .Q(n56) );
  AND2X1 U88 ( .IN1(n81), .IN2(n82), .Q(n57) );
  INVX0 U89 ( .INP(n194), .ZN(n196) );
  INVX0 U90 ( .INP(n188), .ZN(n190) );
  INVX0 U91 ( .INP(n242), .ZN(n243) );
  INVX0 U92 ( .INP(n238), .ZN(n239) );
  NOR2X0 U93 ( .IN1(n151), .IN2(n152), .QN(n150) );
  NOR2X0 U94 ( .IN1(n104), .IN2(n105), .QN(n103) );
  NOR2X0 U95 ( .IN1(n129), .IN2(n130), .QN(n128) );
  NAND3X0 U96 ( .IN1(n155), .IN2(n137), .IN3(n280), .QN(n279) );
  INVX0 U97 ( .INP(n264), .ZN(n104) );
  INVX0 U98 ( .INP(n125), .ZN(n129) );
  AND2X1 U99 ( .IN1(n110), .IN2(n285), .Q(n58) );
  NAND2X0 U100 ( .IN1(n255), .IN2(n256), .QN(n232) );
  INVX0 U101 ( .INP(n121), .ZN(n124) );
  INVX0 U102 ( .INP(n251), .ZN(n100) );
  INVX0 U103 ( .INP(n111), .ZN(n116) );
  INVX0 U104 ( .INP(n262), .ZN(n253) );
  INVX0 U105 ( .INP(n258), .ZN(n254) );
  INVX0 U106 ( .INP(n137), .ZN(n152) );
  INVX0 U107 ( .INP(n202), .ZN(n280) );
  NOR2X0 U108 ( .IN1(n59), .IN2(n60), .QN(n166) );
  NAND2X0 U109 ( .IN1(n69), .IN2(n70), .QN(n59) );
  NOR2X0 U110 ( .IN1(n73), .IN2(n169), .QN(n60) );
  AND2X1 U111 ( .IN1(n165), .IN2(n166), .Q(n61) );
  NAND2X0 U112 ( .IN1(n264), .IN2(n273), .QN(n97) );
  NAND2X0 U113 ( .IN1(n101), .IN2(n272), .QN(n269) );
  INVX0 U114 ( .INP(n134), .ZN(n151) );
  AND2X1 U115 ( .IN1(n169), .IN2(n170), .Q(n62) );
  AND2X1 U116 ( .IN1(n186), .IN2(n187), .Q(n63) );
  NAND2X0 U117 ( .IN1(n125), .IN2(n126), .QN(n120) );
  NAND2X0 U118 ( .IN1(n118), .IN2(n119), .QN(n113) );
  INVX0 U119 ( .INP(n127), .ZN(n130) );
  INVX0 U120 ( .INP(n252), .ZN(n105) );
  NAND2X1 U121 ( .IN1(n225), .IN2(n241), .QN(n238) );
  NAND2X1 U122 ( .IN1(n242), .IN2(n226), .QN(n241) );
  NAND2X0 U123 ( .IN1(n111), .IN2(n112), .QN(n106) );
  INVX0 U124 ( .INP(n284), .ZN(n109) );
  AND2X1 U125 ( .IN1(n214), .IN2(n215), .Q(n64) );
  NAND2X1 U126 ( .IN1(n227), .IN2(n245), .QN(n242) );
  NAND2X1 U127 ( .IN1(n84), .IN2(n65), .QN(n82) );
  NAND2X1 U128 ( .IN1(n192), .IN2(n85), .QN(n65) );
  NAND2X1 U129 ( .IN1(n223), .IN2(n237), .QN(n236) );
  NAND2X1 U130 ( .IN1(n238), .IN2(n224), .QN(n237) );
  NAND2X1 U131 ( .IN1(n85), .IN2(n66), .QN(n84) );
  NAND2X1 U132 ( .IN1(n189), .IN2(n86), .QN(n66) );
  NAND2X1 U133 ( .IN1(n86), .IN2(n67), .QN(n85) );
  NAND2X1 U134 ( .IN1(n186), .IN2(n183), .QN(n67) );
  NAND2X0 U135 ( .IN1(n153), .IN2(n154), .QN(n136) );
  NOR2X0 U136 ( .IN1(n123), .IN2(n124), .QN(n122) );
  INVX0 U137 ( .INP(n118), .ZN(n123) );
  AND2X1 U138 ( .IN1(n153), .IN2(n155), .Q(n201) );
  NOR2X0 U139 ( .IN1(n99), .IN2(n100), .QN(n98) );
  INVX0 U140 ( .INP(n101), .ZN(n99) );
  NAND2X0 U141 ( .IN1(n134), .IN2(n135), .QN(n131) );
  NAND2X1 U142 ( .IN1(n214), .IN2(n217), .QN(n219) );
  NOR2X0 U143 ( .IN1(n271), .IN2(n253), .QN(n270) );
  INVX0 U144 ( .INP(n259), .ZN(n271) );
  NOR2X0 U145 ( .IN1(n267), .IN2(n254), .QN(n266) );
  INVX0 U146 ( .INP(n255), .ZN(n267) );
  AND2X1 U147 ( .IN1(n133), .IN2(n275), .Q(n132) );
  NOR2X0 U148 ( .IN1(n108), .IN2(n109), .QN(n107) );
  INVX0 U149 ( .INP(n110), .ZN(n108) );
  NAND2X1 U150 ( .IN1(n223), .IN2(n224), .QN(n240) );
  NAND2X1 U151 ( .IN1(n225), .IN2(n226), .QN(n244) );
  NAND2X1 U152 ( .IN1(n179), .IN2(n181), .QN(n182) );
  NAND2X1 U153 ( .IN1(n165), .IN2(n167), .QN(n168) );
  NAND2X1 U154 ( .IN1(n192), .IN2(n195), .QN(n197) );
  NAND2X1 U155 ( .IN1(n186), .IN2(n189), .QN(n191) );
  NAND2X1 U156 ( .IN1(n173), .IN2(n176), .QN(n178) );
  NAND2X1 U157 ( .IN1(n169), .IN2(n171), .QN(n172) );
  NAND2X1 U158 ( .IN1(n211), .IN2(n212), .QN(n213) );
  NAND2X1 U159 ( .IN1(n183), .IN2(n184), .QN(n185) );
  NAND2X1 U160 ( .IN1(n162), .IN2(n163), .QN(n164) );
  NAND2X1 U161 ( .IN1(n205), .IN2(n208), .QN(n210) );
  NAND2X1 U162 ( .IN1(n198), .IN2(n200), .QN(n204) );
  AND2X1 U163 ( .IN1(n220), .IN2(n222), .Q(n68) );
  NAND2X1 U164 ( .IN1(B[29]), .IN2(A[29]), .QN(n145) );
  NAND2X1 U165 ( .IN1(n148), .IN2(n149), .QN(n146) );
  NAND2X1 U166 ( .IN1(B[28]), .IN2(A[28]), .QN(n156) );
  NAND2X1 U167 ( .IN1(n160), .IN2(n161), .QN(n158) );
  NAND2X1 U168 ( .IN1(B[30]), .IN2(A[30]), .QN(n139) );
  NAND2X1 U169 ( .IN1(n143), .IN2(n144), .QN(n141) );
  OR2X1 U170 ( .IN1(B[6]), .IN2(A[6]), .Q(n114) );
  OR2X1 U171 ( .IN1(B[10]), .IN2(A[10]), .Q(n262) );
  OR2X1 U172 ( .IN1(B[5]), .IN2(A[5]), .Q(n121) );
  OR2X1 U173 ( .IN1(B[9]), .IN2(A[9]), .Q(n251) );
  OR2X1 U174 ( .IN1(B[1]), .IN2(A[1]), .Q(n155) );
  OR2X1 U175 ( .IN1(B[2]), .IN2(A[2]), .Q(n137) );
  OR2X1 U176 ( .IN1(B[11]), .IN2(A[11]), .Q(n258) );
  NAND2X0 U177 ( .IN1(B[10]), .IN2(A[10]), .QN(n259) );
  OR2X1 U178 ( .IN1(B[14]), .IN2(A[14]), .Q(n224) );
  OR2X1 U179 ( .IN1(B[12]), .IN2(A[12]), .Q(n228) );
  XOR3X1 U180 ( .IN1(B[30]), .IN2(A[30]), .IN3(n142), .Q(SUM[30]) );
  XOR3X1 U181 ( .IN1(B[29]), .IN2(A[29]), .IN3(n147), .Q(SUM[29]) );
  XOR3X1 U182 ( .IN1(B[28]), .IN2(A[28]), .IN3(n159), .Q(SUM[28]) );
  NAND2X1 U183 ( .IN1(B[22]), .IN2(A[22]), .QN(n183) );
  NAND2X0 U184 ( .IN1(B[11]), .IN2(A[11]), .QN(n255) );
  NAND2X1 U185 ( .IN1(B[21]), .IN2(A[21]), .QN(n186) );
  NAND2X1 U186 ( .IN1(B[20]), .IN2(A[20]), .QN(n192) );
  NAND2X0 U187 ( .IN1(B[15]), .IN2(A[15]), .QN(n220) );
  OR2X1 U188 ( .IN1(B[15]), .IN2(A[15]), .Q(n222) );
  OR2X1 U189 ( .IN1(B[21]), .IN2(A[21]), .Q(n189) );
  OR2X1 U190 ( .IN1(B[8]), .IN2(A[8]), .Q(n252) );
  OR2X1 U191 ( .IN1(B[4]), .IN2(A[4]), .Q(n127) );
  NAND2X0 U192 ( .IN1(B[3]), .IN2(A[3]), .QN(n133) );
  OR2X1 U193 ( .IN1(B[22]), .IN2(A[22]), .Q(n184) );
  NAND2X0 U194 ( .IN1(B[7]), .IN2(A[7]), .QN(n110) );
  OR2X1 U195 ( .IN1(B[7]), .IN2(A[7]), .Q(n284) );
  OR2X1 U196 ( .IN1(B[13]), .IN2(A[13]), .Q(n226) );
  OR2X1 U197 ( .IN1(B[17]), .IN2(A[17]), .Q(n212) );
  OR2X1 U198 ( .IN1(B[18]), .IN2(A[18]), .Q(n208) );
  OR2X1 U199 ( .IN1(B[23]), .IN2(A[23]), .Q(n181) );
  OR2X1 U200 ( .IN1(B[20]), .IN2(A[20]), .Q(n195) );
  OR2X1 U201 ( .IN1(B[16]), .IN2(A[16]), .Q(n217) );
  OR2X1 U202 ( .IN1(B[3]), .IN2(A[3]), .Q(n275) );
  NAND2X1 U203 ( .IN1(B[24]), .IN2(A[24]), .QN(n173) );
  NAND2X1 U204 ( .IN1(B[25]), .IN2(A[25]), .QN(n169) );
  NAND2X1 U205 ( .IN1(B[27]), .IN2(A[27]), .QN(n162) );
  NAND2X1 U206 ( .IN1(B[19]), .IN2(A[19]), .QN(n198) );
  NAND2X1 U207 ( .IN1(B[26]), .IN2(A[26]), .QN(n165) );
  NAND2X1 U208 ( .IN1(B[18]), .IN2(A[18]), .QN(n205) );
  NAND2X1 U209 ( .IN1(B[23]), .IN2(A[23]), .QN(n179) );
  OR2X1 U210 ( .IN1(B[26]), .IN2(A[26]), .Q(n167) );
  OR2X1 U211 ( .IN1(B[27]), .IN2(A[27]), .Q(n163) );
  OR2X1 U212 ( .IN1(B[19]), .IN2(A[19]), .Q(n200) );
  OR2X1 U213 ( .IN1(B[25]), .IN2(A[25]), .Q(n171) );
  OR2X1 U214 ( .IN1(B[24]), .IN2(A[24]), .Q(n176) );
  INVX0 U215 ( .INP(B[30]), .ZN(n143) );
  INVX0 U216 ( .INP(B[28]), .ZN(n160) );
  INVX0 U217 ( .INP(B[29]), .ZN(n148) );
  OR2X1 U218 ( .IN1(B[0]), .IN2(A[0]), .Q(n203) );
  INVX0 U219 ( .INP(A[30]), .ZN(n144) );
  INVX0 U220 ( .INP(A[28]), .ZN(n161) );
  INVX0 U221 ( .INP(A[29]), .ZN(n149) );
  INVX0 U222 ( .INP(n216), .ZN(n218) );
  INVX0 U223 ( .INP(n175), .ZN(n177) );
  OR2X1 U224 ( .IN1(n71), .IN2(n173), .Q(n70) );
  INVX0 U225 ( .INP(n74), .ZN(n71) );
  AND2X1 U226 ( .IN1(n176), .IN2(n74), .Q(n72) );
  INVX0 U227 ( .INP(n167), .ZN(n73) );
  AND2X1 U228 ( .IN1(n171), .IN2(n167), .Q(n74) );
  NAND2X0 U229 ( .IN1(B[16]), .IN2(A[16]), .QN(n214) );
  NAND2X0 U230 ( .IN1(n30), .IN2(n75), .QN(n180) );
  OR2X1 U231 ( .IN1(n76), .IN2(n80), .Q(n75) );
  INVX0 U232 ( .INP(n78), .ZN(n76) );
  AND2X1 U233 ( .IN1(n198), .IN2(n78), .Q(n77) );
  OR2X1 U234 ( .IN1(n79), .IN2(n82), .Q(n78) );
  INVX0 U235 ( .INP(n181), .ZN(n79) );
  AND2X1 U236 ( .IN1(n83), .IN2(n181), .Q(n80) );
  NAND2X0 U237 ( .IN1(n194), .IN2(n83), .QN(n81) );
  AND2X1 U238 ( .IN1(n195), .IN2(n84), .Q(n83) );
  OR2X1 U239 ( .IN1(n87), .IN2(n184), .Q(n86) );
  INVX0 U240 ( .INP(n183), .ZN(n87) );
  NAND2X0 U241 ( .IN1(n257), .IN2(n258), .QN(n256) );
  NAND2X0 U242 ( .IN1(n113), .IN2(n114), .QN(n112) );
  NAND2X0 U243 ( .IN1(n58), .IN2(n274), .QN(n102) );
  INVX0 U244 ( .INP(n114), .ZN(n117) );
  NOR2X0 U245 ( .IN1(n152), .IN2(n153), .QN(n281) );
  NAND2X1 U246 ( .IN1(n133), .IN2(n276), .QN(n235) );
  NAND2X0 U247 ( .IN1(B[5]), .IN2(A[5]), .QN(n118) );
  NAND2X0 U248 ( .IN1(B[4]), .IN2(A[4]), .QN(n125) );
  NAND2X0 U249 ( .IN1(B[1]), .IN2(A[1]), .QN(n153) );
  AND2X1 U250 ( .IN1(n88), .IN2(n89), .Q(n207) );
  OR2X1 U251 ( .IN1(n90), .IN2(n212), .Q(n89) );
  INVX0 U252 ( .INP(n211), .ZN(n90) );
  AND2X1 U253 ( .IN1(n214), .IN2(n211), .Q(n91) );
  NAND2X0 U254 ( .IN1(n277), .IN2(n275), .QN(n276) );
  NAND2X0 U255 ( .IN1(n261), .IN2(n262), .QN(n260) );
  NAND2X0 U256 ( .IN1(n259), .IN2(n260), .QN(n257) );
  INVX0 U257 ( .INP(n162), .ZN(n92) );
  AND2X1 U258 ( .IN1(n93), .IN2(n94), .Q(n221) );
  OR2X1 U259 ( .IN1(n95), .IN2(n223), .Q(n94) );
  INVX0 U260 ( .INP(n222), .ZN(n95) );
  AND2X1 U261 ( .IN1(n224), .IN2(n222), .Q(n96) );
  NOR2X0 U262 ( .IN1(n58), .IN2(n233), .QN(n231) );
  NAND2X0 U263 ( .IN1(n278), .IN2(n279), .QN(n277) );
  NOR2X0 U264 ( .IN1(n151), .IN2(n281), .QN(n278) );
  NAND2X0 U265 ( .IN1(n179), .IN2(n180), .QN(n175) );
  INVX0 U266 ( .INP(n207), .ZN(n209) );
  NAND2X0 U267 ( .IN1(n101), .IN2(n263), .QN(n261) );
  NAND2X0 U268 ( .IN1(B[9]), .IN2(A[9]), .QN(n101) );
  NAND2X0 U269 ( .IN1(n136), .IN2(n137), .QN(n135) );
  NAND2X0 U270 ( .IN1(n188), .IN2(n189), .QN(n187) );
  NAND2X0 U271 ( .IN1(B[2]), .IN2(A[2]), .QN(n134) );
  NAND2X1 U272 ( .IN1(B[0]), .IN2(A[0]), .QN(n202) );
  NAND2X0 U273 ( .IN1(n192), .IN2(n193), .QN(n188) );
  NAND2X0 U274 ( .IN1(n216), .IN2(n217), .QN(n215) );
  NAND2X0 U275 ( .IN1(n220), .IN2(n221), .QN(n216) );
  NAND2X0 U276 ( .IN1(n139), .IN2(n140), .QN(n138) );
  NAND2X0 U277 ( .IN1(n104), .IN2(n251), .QN(n263) );
  NAND2X0 U278 ( .IN1(B[8]), .IN2(A[8]), .QN(n264) );
  NAND2X0 U279 ( .IN1(n194), .IN2(n195), .QN(n193) );
  NAND2X0 U280 ( .IN1(n286), .IN2(n284), .QN(n285) );
  NAND2X0 U281 ( .IN1(n198), .IN2(n199), .QN(n194) );
  NAND2X0 U282 ( .IN1(n287), .IN2(n288), .QN(n286) );
  NAND2X0 U283 ( .IN1(n175), .IN2(n176), .QN(n174) );
  NAND2X0 U284 ( .IN1(n156), .IN2(n157), .QN(n147) );
  NOR2X0 U285 ( .IN1(n289), .IN2(n116), .QN(n287) );
  NOR2X0 U286 ( .IN1(n116), .IN2(n117), .QN(n115) );
  NAND2X0 U287 ( .IN1(n158), .IN2(n159), .QN(n157) );
  NAND2X0 U288 ( .IN1(n207), .IN2(n208), .QN(n206) );
  NOR2X0 U289 ( .IN1(n117), .IN2(n109), .QN(n282) );
  NOR2X0 U290 ( .IN1(n117), .IN2(n118), .QN(n289) );
  NAND2X0 U291 ( .IN1(B[6]), .IN2(A[6]), .QN(n111) );
  NOR2X0 U292 ( .IN1(n231), .IN2(n232), .QN(n230) );
  XOR2X1 U293 ( .IN1(n97), .IN2(n98), .Q(SUM[9]) );
  XOR2X1 U294 ( .IN1(n102), .IN2(n103), .Q(SUM[8]) );
  XOR2X1 U295 ( .IN1(n106), .IN2(n107), .Q(SUM[7]) );
  XOR2X1 U296 ( .IN1(n113), .IN2(n115), .Q(SUM[6]) );
  XOR2X1 U297 ( .IN1(n120), .IN2(n122), .Q(SUM[5]) );
  XOR2X1 U298 ( .IN1(n235), .IN2(n128), .Q(SUM[4]) );
  XOR2X1 U299 ( .IN1(n131), .IN2(n132), .Q(SUM[3]) );
  XOR3X1 U300 ( .IN1(B[31]), .IN2(A[31]), .IN3(n138), .Q(SUM[31]) );
  XOR2X1 U301 ( .IN1(n136), .IN2(n150), .Q(SUM[2]) );
  XOR2X1 U302 ( .IN1(n61), .IN2(n164), .Q(SUM[27]) );
  XOR2X1 U303 ( .IN1(n62), .IN2(n168), .Q(SUM[26]) );
  XOR2X1 U304 ( .IN1(n1), .IN2(n172), .Q(SUM[25]) );
  XOR2X1 U305 ( .IN1(n177), .IN2(n178), .Q(SUM[24]) );
  XOR2X1 U306 ( .IN1(n57), .IN2(n182), .Q(SUM[23]) );
  XOR2X1 U307 ( .IN1(n63), .IN2(n185), .Q(SUM[22]) );
  XOR2X1 U308 ( .IN1(n190), .IN2(n191), .Q(SUM[21]) );
  XOR2X1 U309 ( .IN1(n196), .IN2(n197), .Q(SUM[20]) );
  XOR2X1 U310 ( .IN1(n280), .IN2(n201), .Q(SUM[1]) );
  XOR2X1 U311 ( .IN1(n2), .IN2(n204), .Q(SUM[19]) );
  XOR2X1 U312 ( .IN1(n209), .IN2(n210), .Q(SUM[18]) );
  XOR2X1 U313 ( .IN1(n64), .IN2(n213), .Q(SUM[17]) );
  XOR2X1 U314 ( .IN1(n218), .IN2(n219), .Q(SUM[16]) );
  NAND3X0 U315 ( .IN1(n55), .IN2(n234), .IN3(n235), .QN(n229) );
  XOR2X1 U316 ( .IN1(n236), .IN2(n68), .Q(SUM[15]) );
  XOR2X1 U317 ( .IN1(n239), .IN2(n240), .Q(SUM[14]) );
  XOR2X1 U318 ( .IN1(n243), .IN2(n244), .Q(SUM[13]) );
  XOR2X1 U319 ( .IN1(n247), .IN2(n248), .Q(SUM[12]) );
  XOR2X1 U320 ( .IN1(n265), .IN2(n266), .Q(SUM[11]) );
  XOR2X1 U321 ( .IN1(n269), .IN2(n270), .Q(SUM[10]) );
endmodule


module BoothMultiplier ( clk, oClk, rst, oRst, M, Q, P );
  input [31:0] M;
  input [31:0] Q;
  output [63:0] P;
  input clk, oClk, rst, oRst;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N67, N110, N111, N112, N113, N114, n8, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394;
  wire   [31:0] Acc;
  wire   [5:0] count;
  wire   [31:0] M_reg;
  wire   [64:33] case_add;
  wire   [64:33] case_sub;

  DFFX1 \P_reg[6]  ( .D(N12), .CLK(oClk), .Q(P[6]) );
  DFFX1 \P_reg[5]  ( .D(N11), .CLK(oClk), .Q(P[5]) );
  DFFX1 \P_reg[4]  ( .D(N10), .CLK(oClk), .Q(P[4]) );
  DFFX1 \P_reg[32]  ( .D(N38), .CLK(oClk), .Q(P[32]) );
  DFFX1 \P_reg[33]  ( .D(N39), .CLK(oClk), .Q(P[33]) );
  DFFX1 \P_reg[34]  ( .D(N40), .CLK(oClk), .Q(P[34]) );
  DFFX1 \P_reg[35]  ( .D(N41), .CLK(oClk), .Q(P[35]) );
  DFFX1 \P_reg[36]  ( .D(N42), .CLK(oClk), .Q(P[36]) );
  DFFX1 \P_reg[37]  ( .D(N43), .CLK(oClk), .Q(P[37]) );
  DFFX1 \P_reg[38]  ( .D(N44), .CLK(oClk), .Q(P[38]) );
  DFFX1 \P_reg[39]  ( .D(N45), .CLK(oClk), .Q(P[39]) );
  DFFX1 \P_reg[40]  ( .D(N46), .CLK(oClk), .Q(P[40]) );
  DFFX1 \P_reg[41]  ( .D(N47), .CLK(oClk), .Q(P[41]) );
  DFFX1 \P_reg[42]  ( .D(N48), .CLK(oClk), .Q(P[42]) );
  DFFX1 \P_reg[43]  ( .D(N49), .CLK(oClk), .Q(P[43]) );
  DFFX1 \P_reg[44]  ( .D(N50), .CLK(oClk), .Q(P[44]) );
  DFFX1 \P_reg[45]  ( .D(N51), .CLK(oClk), .Q(P[45]) );
  DFFX1 \P_reg[46]  ( .D(N52), .CLK(oClk), .Q(P[46]) );
  DFFX1 \P_reg[47]  ( .D(N53), .CLK(oClk), .Q(P[47]) );
  DFFX1 \P_reg[48]  ( .D(N54), .CLK(oClk), .Q(P[48]) );
  DFFX1 \P_reg[49]  ( .D(N55), .CLK(oClk), .Q(P[49]) );
  DFFX1 \P_reg[50]  ( .D(N56), .CLK(oClk), .Q(P[50]) );
  DFFX1 \P_reg[51]  ( .D(N57), .CLK(oClk), .Q(P[51]) );
  DFFX1 \P_reg[52]  ( .D(N58), .CLK(oClk), .Q(P[52]) );
  DFFX1 \P_reg[53]  ( .D(N59), .CLK(oClk), .Q(P[53]) );
  DFFX1 \P_reg[54]  ( .D(N60), .CLK(oClk), .Q(P[54]) );
  DFFX1 \P_reg[55]  ( .D(N61), .CLK(oClk), .Q(P[55]) );
  DFFX1 \P_reg[56]  ( .D(N62), .CLK(oClk), .Q(P[56]) );
  DFFX1 \P_reg[57]  ( .D(N63), .CLK(oClk), .Q(P[57]) );
  DFFX1 \P_reg[58]  ( .D(N64), .CLK(oClk), .Q(P[58]) );
  DFFX1 \P_reg[59]  ( .D(N65), .CLK(oClk), .Q(P[59]) );
  DFFX1 \P_reg[60]  ( .D(N66), .CLK(oClk), .Q(P[60]) );
  DFFX1 \P_reg[61]  ( .D(N67), .CLK(oClk), .Q(P[61]) );
  DFFX1 \P_reg[63]  ( .D(n318), .CLK(oClk), .Q(P[63]) );
  DFFX1 \P_reg[62]  ( .D(n318), .CLK(oClk), .Q(P[62]) );
  DFFX1 \P_reg[0]  ( .D(N6), .CLK(oClk), .Q(P[0]) );
  DFFX1 \P_reg[1]  ( .D(N7), .CLK(oClk), .Q(P[1]) );
  DFFX1 \P_reg[2]  ( .D(N8), .CLK(oClk), .Q(P[2]) );
  DFFX1 \P_reg[3]  ( .D(N9), .CLK(oClk), .Q(P[3]) );
  DFFX1 \P_reg[7]  ( .D(N13), .CLK(oClk), .Q(P[7]) );
  DFFX1 \P_reg[8]  ( .D(N14), .CLK(oClk), .Q(P[8]) );
  DFFX1 \P_reg[9]  ( .D(N15), .CLK(oClk), .Q(P[9]) );
  DFFX1 \P_reg[10]  ( .D(N16), .CLK(oClk), .Q(P[10]) );
  DFFX1 \P_reg[11]  ( .D(N17), .CLK(oClk), .Q(P[11]) );
  DFFX1 \P_reg[12]  ( .D(N18), .CLK(oClk), .Q(P[12]) );
  DFFX1 \P_reg[13]  ( .D(N19), .CLK(oClk), .Q(P[13]) );
  DFFX1 \P_reg[14]  ( .D(N20), .CLK(oClk), .Q(P[14]) );
  DFFX1 \P_reg[15]  ( .D(N21), .CLK(oClk), .Q(P[15]) );
  DFFX1 \P_reg[16]  ( .D(N22), .CLK(oClk), .Q(P[16]) );
  DFFX1 \P_reg[17]  ( .D(N23), .CLK(oClk), .Q(P[17]) );
  DFFX1 \P_reg[18]  ( .D(N24), .CLK(oClk), .Q(P[18]) );
  DFFX1 \P_reg[19]  ( .D(N25), .CLK(oClk), .Q(P[19]) );
  DFFX1 \P_reg[20]  ( .D(N26), .CLK(oClk), .Q(P[20]) );
  DFFX1 \P_reg[21]  ( .D(N27), .CLK(oClk), .Q(P[21]) );
  DFFX1 \P_reg[22]  ( .D(N28), .CLK(oClk), .Q(P[22]) );
  DFFX1 \P_reg[23]  ( .D(N29), .CLK(oClk), .Q(P[23]) );
  DFFX1 \P_reg[24]  ( .D(N30), .CLK(oClk), .Q(P[24]) );
  DFFX1 \P_reg[25]  ( .D(N31), .CLK(oClk), .Q(P[25]) );
  DFFX1 \P_reg[26]  ( .D(N32), .CLK(oClk), .Q(P[26]) );
  DFFX1 \P_reg[27]  ( .D(N33), .CLK(oClk), .Q(P[27]) );
  DFFX1 \P_reg[28]  ( .D(N34), .CLK(oClk), .Q(P[28]) );
  DFFX1 \P_reg[29]  ( .D(N35), .CLK(oClk), .Q(P[29]) );
  DFFX1 \P_reg[30]  ( .D(N36), .CLK(oClk), .Q(P[30]) );
  DFFX1 \P_reg[31]  ( .D(N37), .CLK(oClk), .Q(P[31]) );
  DFFX1 \M_reg_reg[31]  ( .D(n280), .CLK(clk), .Q(M_reg[31]) );
  DFFX1 \M_reg_reg[30]  ( .D(n279), .CLK(clk), .Q(M_reg[30]) );
  DFFX1 \M_reg_reg[29]  ( .D(n278), .CLK(clk), .Q(M_reg[29]) );
  DFFX1 \M_reg_reg[28]  ( .D(n277), .CLK(clk), .Q(M_reg[28]) );
  DFFX1 \M_reg_reg[27]  ( .D(n276), .CLK(clk), .Q(M_reg[27]) );
  DFFX1 \M_reg_reg[26]  ( .D(n275), .CLK(clk), .Q(M_reg[26]) );
  DFFX1 \M_reg_reg[25]  ( .D(n274), .CLK(clk), .Q(M_reg[25]) );
  DFFX1 \M_reg_reg[24]  ( .D(n273), .CLK(clk), .Q(M_reg[24]) );
  DFFX1 \M_reg_reg[23]  ( .D(n272), .CLK(clk), .Q(M_reg[23]) );
  DFFX1 \M_reg_reg[22]  ( .D(n271), .CLK(clk), .Q(M_reg[22]) );
  DFFX1 \M_reg_reg[21]  ( .D(n270), .CLK(clk), .Q(M_reg[21]) );
  DFFX1 \M_reg_reg[20]  ( .D(n269), .CLK(clk), .Q(M_reg[20]) );
  DFFX1 \M_reg_reg[19]  ( .D(n268), .CLK(clk), .Q(M_reg[19]) );
  DFFX1 \M_reg_reg[18]  ( .D(n267), .CLK(clk), .Q(M_reg[18]) );
  DFFX1 \M_reg_reg[17]  ( .D(n266), .CLK(clk), .Q(M_reg[17]) );
  DFFX1 \M_reg_reg[15]  ( .D(n264), .CLK(clk), .Q(M_reg[15]) );
  DFFX1 \M_reg_reg[14]  ( .D(n263), .CLK(clk), .Q(M_reg[14]) );
  DFFX1 \M_reg_reg[13]  ( .D(n262), .CLK(clk), .Q(M_reg[13]) );
  DFFX1 \M_reg_reg[12]  ( .D(n261), .CLK(clk), .Q(M_reg[12]) );
  DFFX1 \M_reg_reg[11]  ( .D(n260), .CLK(clk), .Q(M_reg[11]) );
  DFFX1 \M_reg_reg[10]  ( .D(n259), .CLK(clk), .Q(M_reg[10]) );
  DFFX1 \M_reg_reg[9]  ( .D(n258), .CLK(clk), .Q(M_reg[9]) );
  DFFX1 \M_reg_reg[8]  ( .D(n257), .CLK(clk), .Q(M_reg[8]) );
  DFFX1 \M_reg_reg[7]  ( .D(n256), .CLK(clk), .Q(M_reg[7]) );
  DFFX1 \M_reg_reg[6]  ( .D(n255), .CLK(clk), .Q(M_reg[6]) );
  DFFX1 \M_reg_reg[5]  ( .D(n254), .CLK(clk), .Q(M_reg[5]) );
  DFFX1 \M_reg_reg[4]  ( .D(n253), .CLK(clk), .Q(M_reg[4]) );
  DFFX1 \M_reg_reg[3]  ( .D(n252), .CLK(clk), .Q(M_reg[3]) );
  DFFX1 \M_reg_reg[2]  ( .D(n251), .CLK(clk), .Q(M_reg[2]) );
  DFFX1 \M_reg_reg[1]  ( .D(n250), .CLK(clk), .Q(M_reg[1]) );
  DFFX1 \M_reg_reg[0]  ( .D(n249), .CLK(clk), .Q(M_reg[0]), .QN(n323) );
  DFFX1 \count_reg[0]  ( .D(n248), .CLK(clk), .Q(count[0]), .QN(n315) );
  DFFX1 \count_reg[5]  ( .D(n247), .CLK(clk), .Q(count[5]) );
  DFFX1 \count_reg[4]  ( .D(n246), .CLK(clk), .Q(count[4]) );
  DFFX1 \count_reg[3]  ( .D(n245), .CLK(clk), .Q(count[3]) );
  DFFX1 \count_reg[2]  ( .D(n244), .CLK(clk), .Q(count[2]), .QN(n298) );
  DFFX1 \count_reg[1]  ( .D(n243), .CLK(clk), .Q(count[1]) );
  DFFX1 \Acc_reg[0]  ( .D(n242), .CLK(clk), .Q(Acc[0]), .QN(n177) );
  DFFX1 \Q_reg_reg[31]  ( .D(n241), .CLK(clk), .Q(n314), .QN(n173) );
  DFFX1 \Q_reg_reg[30]  ( .D(n240), .CLK(clk), .Q(n293), .QN(n172) );
  DFFX1 \Q_reg_reg[29]  ( .D(n239), .CLK(clk), .Q(n308), .QN(n171) );
  DFFX1 \Q_reg_reg[28]  ( .D(n238), .CLK(clk), .Q(n292), .QN(n170) );
  DFFX1 \Q_reg_reg[27]  ( .D(n237), .CLK(clk), .Q(n307), .QN(n169) );
  DFFX1 \Q_reg_reg[26]  ( .D(n236), .CLK(clk), .Q(n291), .QN(n168) );
  DFFX1 \Q_reg_reg[25]  ( .D(n235), .CLK(clk), .Q(n306), .QN(n167) );
  DFFX1 \Q_reg_reg[24]  ( .D(n234), .CLK(clk), .Q(n290), .QN(n166) );
  DFFX1 \Q_reg_reg[23]  ( .D(n233), .CLK(clk), .Q(n305), .QN(n165) );
  DFFX1 \Q_reg_reg[22]  ( .D(n232), .CLK(clk), .Q(n289), .QN(n164) );
  DFFX1 \Q_reg_reg[21]  ( .D(n231), .CLK(clk), .Q(n304), .QN(n163) );
  DFFX1 \Q_reg_reg[20]  ( .D(n230), .CLK(clk), .Q(n288), .QN(n162) );
  DFFX1 \Q_reg_reg[19]  ( .D(n229), .CLK(clk), .Q(n303), .QN(n161) );
  DFFX1 \Q_reg_reg[18]  ( .D(n228), .CLK(clk), .Q(n287), .QN(n160) );
  DFFX1 \Q_reg_reg[17]  ( .D(n227), .CLK(clk), .Q(n302), .QN(n159) );
  DFFX1 \Q_reg_reg[16]  ( .D(n226), .CLK(clk), .Q(n286), .QN(n158) );
  DFFX1 \Q_reg_reg[15]  ( .D(n225), .CLK(clk), .Q(n301), .QN(n157) );
  DFFX1 \Q_reg_reg[14]  ( .D(n224), .CLK(clk), .Q(n285), .QN(n156) );
  DFFX1 \Q_reg_reg[13]  ( .D(n223), .CLK(clk), .Q(n300), .QN(n155) );
  DFFX1 \Q_reg_reg[12]  ( .D(n222), .CLK(clk), .Q(n284), .QN(n154) );
  DFFX1 \Q_reg_reg[11]  ( .D(n221), .CLK(clk), .Q(n282), .QN(n153) );
  DFFX1 \Q_reg_reg[10]  ( .D(n220), .CLK(clk), .Q(n313), .QN(n152) );
  DFFX1 \Q_reg_reg[9]  ( .D(n219), .CLK(clk), .Q(n297), .QN(n151) );
  DFFX1 \Q_reg_reg[8]  ( .D(n218), .CLK(clk), .Q(n312), .QN(n150) );
  DFFX1 \Q_reg_reg[7]  ( .D(n217), .CLK(clk), .Q(n296), .QN(n149) );
  DFFX1 \Q_reg_reg[6]  ( .D(n216), .CLK(clk), .Q(n311), .QN(n148) );
  DFFX1 \Q_reg_reg[5]  ( .D(n215), .CLK(clk), .Q(n295), .QN(n147) );
  DFFX1 \Q_reg_reg[4]  ( .D(n214), .CLK(clk), .Q(n310), .QN(n146) );
  DFFX1 \Q_reg_reg[3]  ( .D(n213), .CLK(clk), .Q(n294), .QN(n145) );
  DFFX1 \Q_reg_reg[2]  ( .D(n212), .CLK(clk), .Q(n309), .QN(n144) );
  DFFX1 \Q_reg_reg[1]  ( .D(n211), .CLK(clk), .Q(n283), .QN(n143) );
  DFFX1 \Q_reg_reg[0]  ( .D(n210), .CLK(clk), .Q(n281), .QN(n175) );
  DFFX1 Q_prev_reg ( .D(n209), .CLK(clk), .Q(n174), .QN(n299) );
  DFFX1 \Acc_reg[31]  ( .D(n208), .CLK(clk), .Q(Acc[31]), .QN(n142) );
  DFFX1 \Acc_reg[30]  ( .D(n207), .CLK(clk), .Q(Acc[30]), .QN(n141) );
  DFFX1 \Acc_reg[29]  ( .D(n206), .CLK(clk), .Q(Acc[29]), .QN(n140) );
  DFFX1 \Acc_reg[28]  ( .D(n205), .CLK(clk), .Q(Acc[28]), .QN(n139) );
  DFFX1 \Acc_reg[27]  ( .D(n204), .CLK(clk), .Q(Acc[27]), .QN(n138) );
  DFFX1 \Acc_reg[26]  ( .D(n203), .CLK(clk), .Q(Acc[26]), .QN(n137) );
  DFFX1 \Acc_reg[25]  ( .D(n202), .CLK(clk), .Q(Acc[25]), .QN(n136) );
  DFFX1 \Acc_reg[24]  ( .D(n201), .CLK(clk), .Q(Acc[24]), .QN(n135) );
  DFFX1 \Acc_reg[23]  ( .D(n200), .CLK(clk), .Q(Acc[23]), .QN(n134) );
  DFFX1 \Acc_reg[22]  ( .D(n199), .CLK(clk), .Q(Acc[22]), .QN(n133) );
  DFFX1 \Acc_reg[21]  ( .D(n198), .CLK(clk), .Q(Acc[21]), .QN(n132) );
  DFFX1 \Acc_reg[20]  ( .D(n197), .CLK(clk), .Q(Acc[20]), .QN(n131) );
  DFFX1 \Acc_reg[19]  ( .D(n196), .CLK(clk), .Q(Acc[19]), .QN(n130) );
  DFFX1 \Acc_reg[18]  ( .D(n195), .CLK(clk), .Q(Acc[18]), .QN(n129) );
  DFFX1 \Acc_reg[17]  ( .D(n194), .CLK(clk), .Q(Acc[17]), .QN(n128) );
  DFFX1 \Acc_reg[16]  ( .D(n193), .CLK(clk), .Q(Acc[16]), .QN(n127) );
  DFFX1 \Acc_reg[15]  ( .D(n192), .CLK(clk), .Q(Acc[15]), .QN(n126) );
  DFFX1 \Acc_reg[14]  ( .D(n191), .CLK(clk), .Q(Acc[14]), .QN(n125) );
  DFFX1 \Acc_reg[13]  ( .D(n190), .CLK(clk), .Q(Acc[13]), .QN(n124) );
  DFFX1 \Acc_reg[12]  ( .D(n189), .CLK(clk), .Q(Acc[12]), .QN(n123) );
  DFFX1 \Acc_reg[11]  ( .D(n188), .CLK(clk), .Q(Acc[11]), .QN(n122) );
  DFFX1 \Acc_reg[10]  ( .D(n187), .CLK(clk), .Q(Acc[10]), .QN(n121) );
  DFFX1 \Acc_reg[9]  ( .D(n186), .CLK(clk), .Q(Acc[9]), .QN(n120) );
  DFFX1 \Acc_reg[8]  ( .D(n185), .CLK(clk), .Q(Acc[8]), .QN(n119) );
  DFFX1 \Acc_reg[7]  ( .D(n184), .CLK(clk), .Q(Acc[7]), .QN(n118) );
  DFFX1 \Acc_reg[6]  ( .D(n183), .CLK(clk), .Q(Acc[6]), .QN(n117) );
  DFFX1 \Acc_reg[5]  ( .D(n182), .CLK(clk), .Q(Acc[5]), .QN(n116) );
  DFFX1 \Acc_reg[4]  ( .D(n181), .CLK(clk), .Q(Acc[4]), .QN(n115) );
  DFFX1 \Acc_reg[3]  ( .D(n180), .CLK(clk), .Q(Acc[3]), .QN(n114) );
  DFFX1 \Acc_reg[2]  ( .D(n179), .CLK(clk), .Q(Acc[2]), .QN(n113) );
  DFFX1 \Acc_reg[1]  ( .D(n178), .CLK(clk), .Q(Acc[1]), .QN(n176) );
  AO22X1 U3 ( .IN1(n336), .IN2(count[5]), .IN3(N114), .IN4(n339), .Q(n247) );
  AO221X1 U4 ( .IN1(N113), .IN2(n394), .IN3(n336), .IN4(count[4]), .IN5(n346), 
        .Q(n246) );
  AO221X1 U5 ( .IN1(N112), .IN2(n394), .IN3(n336), .IN4(count[3]), .IN5(n346), 
        .Q(n245) );
  AO221X1 U6 ( .IN1(N111), .IN2(n394), .IN3(n336), .IN4(count[2]), .IN5(n346), 
        .Q(n244) );
  AO221X1 U10 ( .IN1(N110), .IN2(n394), .IN3(n336), .IN4(count[1]), .IN5(n346), 
        .Q(n243) );
  AO221X1 U11 ( .IN1(n315), .IN2(n394), .IN3(n336), .IN4(count[0]), .IN5(n346), 
        .Q(n248) );
  AO222X1 U12 ( .IN1(n339), .IN2(n313), .IN3(Q[9]), .IN4(n346), .IN5(n336), 
        .IN6(n297), .Q(n219) );
  AO222X1 U13 ( .IN1(n339), .IN2(n297), .IN3(Q[8]), .IN4(n346), .IN5(n335), 
        .IN6(n312), .Q(n218) );
  AO222X1 U15 ( .IN1(n339), .IN2(n312), .IN3(Q[7]), .IN4(n347), .IN5(n335), 
        .IN6(n296), .Q(n217) );
  AO222X1 U17 ( .IN1(n339), .IN2(n296), .IN3(Q[6]), .IN4(n347), .IN5(n335), 
        .IN6(n311), .Q(n216) );
  AO222X1 U19 ( .IN1(n339), .IN2(n311), .IN3(Q[5]), .IN4(n347), .IN5(n335), 
        .IN6(n295), .Q(n215) );
  AO222X1 U21 ( .IN1(n339), .IN2(n295), .IN3(Q[4]), .IN4(n347), .IN5(n335), 
        .IN6(n310), .Q(n214) );
  AO222X1 U23 ( .IN1(n339), .IN2(n310), .IN3(Q[3]), .IN4(n347), .IN5(n335), 
        .IN6(n294), .Q(n213) );
  AO222X1 U27 ( .IN1(n339), .IN2(n314), .IN3(Q[30]), .IN4(n347), .IN5(n335), 
        .IN6(n293), .Q(n240) );
  AO222X1 U29 ( .IN1(n339), .IN2(n294), .IN3(Q[2]), .IN4(n347), .IN5(n335), 
        .IN6(n309), .Q(n212) );
  AO222X1 U31 ( .IN1(n339), .IN2(n293), .IN3(Q[29]), .IN4(n347), .IN5(n335), 
        .IN6(n308), .Q(n239) );
  AO222X1 U33 ( .IN1(n339), .IN2(n308), .IN3(Q[28]), .IN4(n347), .IN5(n336), 
        .IN6(n292), .Q(n238) );
  AO222X1 U35 ( .IN1(n339), .IN2(n292), .IN3(Q[27]), .IN4(n347), .IN5(n335), 
        .IN6(n307), .Q(n237) );
  AO222X1 U37 ( .IN1(n340), .IN2(n307), .IN3(Q[26]), .IN4(n347), .IN5(n335), 
        .IN6(n291), .Q(n236) );
  AO222X1 U39 ( .IN1(n340), .IN2(n291), .IN3(Q[25]), .IN4(n347), .IN5(n335), 
        .IN6(n306), .Q(n235) );
  AO222X1 U41 ( .IN1(n340), .IN2(n306), .IN3(Q[24]), .IN4(n347), .IN5(n335), 
        .IN6(n290), .Q(n234) );
  AO222X1 U43 ( .IN1(n340), .IN2(n290), .IN3(Q[23]), .IN4(n347), .IN5(n335), 
        .IN6(n305), .Q(n233) );
  AO222X1 U45 ( .IN1(n340), .IN2(n305), .IN3(Q[22]), .IN4(n347), .IN5(n335), 
        .IN6(n289), .Q(n232) );
  AO222X1 U47 ( .IN1(n340), .IN2(n289), .IN3(Q[21]), .IN4(n347), .IN5(n334), 
        .IN6(n304), .Q(n231) );
  AO222X1 U49 ( .IN1(n340), .IN2(n304), .IN3(Q[20]), .IN4(n347), .IN5(n334), 
        .IN6(n288), .Q(n230) );
  AO222X1 U51 ( .IN1(n340), .IN2(n309), .IN3(Q[1]), .IN4(n347), .IN5(n334), 
        .IN6(n283), .Q(n211) );
  AO222X1 U53 ( .IN1(n340), .IN2(n288), .IN3(Q[19]), .IN4(n347), .IN5(n334), 
        .IN6(n303), .Q(n229) );
  AO222X1 U55 ( .IN1(n340), .IN2(n303), .IN3(Q[18]), .IN4(n347), .IN5(n334), 
        .IN6(n287), .Q(n228) );
  AO222X1 U57 ( .IN1(n340), .IN2(n287), .IN3(Q[17]), .IN4(n347), .IN5(n334), 
        .IN6(n302), .Q(n227) );
  AO222X1 U59 ( .IN1(n340), .IN2(n302), .IN3(Q[16]), .IN4(n347), .IN5(n334), 
        .IN6(n286), .Q(n226) );
  AO222X1 U61 ( .IN1(n340), .IN2(n286), .IN3(Q[15]), .IN4(n347), .IN5(n334), 
        .IN6(n301), .Q(n225) );
  AO222X1 U63 ( .IN1(n341), .IN2(n301), .IN3(Q[14]), .IN4(n347), .IN5(n335), 
        .IN6(n285), .Q(n224) );
  AO222X1 U65 ( .IN1(n341), .IN2(n285), .IN3(Q[13]), .IN4(n347), .IN5(n334), 
        .IN6(n300), .Q(n223) );
  AO222X1 U67 ( .IN1(n341), .IN2(n300), .IN3(Q[12]), .IN4(n347), .IN5(n334), 
        .IN6(n284), .Q(n222) );
  AO222X1 U69 ( .IN1(n341), .IN2(n284), .IN3(Q[11]), .IN4(n347), .IN5(n334), 
        .IN6(n282), .Q(n221) );
  AO222X1 U71 ( .IN1(n341), .IN2(n282), .IN3(Q[10]), .IN4(n346), .IN5(n334), 
        .IN6(n313), .Q(n220) );
  BoothMultiplier_DW01_sub_1 sub_61 ( .A(Acc), .B(M_reg), .CI(1'b0), .DIFF(
        case_sub) );
  BoothMultiplier_DW01_add_1 add_57 ( .A({Acc[31:3], n379, Acc[1:0]}), .B({
        M_reg[31:1], n324}), .CI(1'b0), .SUM(case_add) );
  DFFX1 \M_reg_reg[16]  ( .D(n265), .CLK(clk), .Q(M_reg[16]) );
  AO222X1 U278 ( .IN1(case_sub[64]), .IN2(n333), .IN3(n328), .IN4(case_add[64]), .IN5(n325), .IN6(n384), .Q(n316) );
  NBUFFX2 U279 ( .INP(n8), .Z(n341) );
  NBUFFX2 U280 ( .INP(n385), .Z(n338) );
  NOR2X0 U281 ( .IN1(n334), .IN2(n347), .QN(n8) );
  INVX0 U282 ( .INP(n394), .ZN(n385) );
  NBUFFX2 U283 ( .INP(n321), .Z(n333) );
  NBUFFX2 U284 ( .INP(n319), .Z(n327) );
  NBUFFX2 U285 ( .INP(n320), .Z(n330) );
  AND2X1 U286 ( .IN1(n394), .IN2(n348), .Q(n317) );
  INVX0 U287 ( .INP(n348), .ZN(n346) );
  INVX0 U288 ( .INP(n348), .ZN(n347) );
  INVX0 U289 ( .INP(n388), .ZN(n392) );
  INVX0 U290 ( .INP(n386), .ZN(n390) );
  INVX0 U291 ( .INP(n387), .ZN(n391) );
  AND2X1 U292 ( .IN1(n384), .IN2(n345), .Q(n318) );
  INVX0 U293 ( .INP(n345), .ZN(n344) );
  INVX0 U294 ( .INP(n345), .ZN(n343) );
  INVX0 U295 ( .INP(n345), .ZN(n342) );
  AND3X1 U296 ( .IN1(n350), .IN2(n348), .IN3(n349), .Q(n319) );
  AND3X1 U297 ( .IN1(n174), .IN2(n175), .IN3(n317), .Q(n320) );
  AND3X1 U298 ( .IN1(n281), .IN2(n299), .IN3(n317), .Q(n321) );
  INVX0 U299 ( .INP(rst), .ZN(n348) );
  NOR2X0 U300 ( .IN1(count[1]), .IN2(n393), .QN(n322) );
  MUX21X1 U301 ( .IN1(M_reg[1]), .IN2(M[1]), .S(n347), .Q(n250) );
  MUX21X1 U302 ( .IN1(M_reg[2]), .IN2(M[2]), .S(n347), .Q(n251) );
  MUX21X1 U303 ( .IN1(M_reg[4]), .IN2(M[4]), .S(rst), .Q(n253) );
  MUX21X1 U304 ( .IN1(M_reg[5]), .IN2(M[5]), .S(rst), .Q(n254) );
  MUX21X1 U305 ( .IN1(M_reg[6]), .IN2(M[6]), .S(rst), .Q(n255) );
  MUX21X1 U306 ( .IN1(M_reg[8]), .IN2(M[8]), .S(rst), .Q(n257) );
  MUX21X1 U307 ( .IN1(M_reg[9]), .IN2(M[9]), .S(rst), .Q(n258) );
  MUX21X1 U308 ( .IN1(M_reg[16]), .IN2(M[16]), .S(rst), .Q(n265) );
  NOR2X0 U309 ( .IN1(n344), .IN2(n124), .QN(N50) );
  NOR2X0 U310 ( .IN1(n344), .IN2(n123), .QN(N49) );
  NOR2X0 U311 ( .IN1(oRst), .IN2(n177), .QN(N37) );
  NOR2X0 U312 ( .IN1(oRst), .IN2(n138), .QN(N64) );
  NOR2X0 U313 ( .IN1(oRst), .IN2(n137), .QN(N63) );
  NOR2X0 U314 ( .IN1(oRst), .IN2(n136), .QN(N62) );
  NOR2X0 U315 ( .IN1(oRst), .IN2(n135), .QN(N61) );
  NOR2X0 U316 ( .IN1(oRst), .IN2(n134), .QN(N60) );
  NOR2X0 U317 ( .IN1(oRst), .IN2(n133), .QN(N59) );
  NOR2X0 U318 ( .IN1(oRst), .IN2(n132), .QN(N58) );
  NOR2X0 U319 ( .IN1(oRst), .IN2(n131), .QN(N57) );
  NOR2X0 U320 ( .IN1(oRst), .IN2(n130), .QN(N56) );
  NOR2X0 U321 ( .IN1(oRst), .IN2(n129), .QN(N55) );
  NOR2X0 U322 ( .IN1(oRst), .IN2(n122), .QN(N48) );
  NOR2X0 U323 ( .IN1(oRst), .IN2(n121), .QN(N47) );
  NOR2X0 U324 ( .IN1(oRst), .IN2(n120), .QN(N46) );
  NOR2X0 U325 ( .IN1(oRst), .IN2(n119), .QN(N45) );
  NOR2X0 U326 ( .IN1(oRst), .IN2(n118), .QN(N44) );
  NOR2X0 U327 ( .IN1(oRst), .IN2(n117), .QN(N43) );
  NOR2X0 U328 ( .IN1(oRst), .IN2(n116), .QN(N42) );
  NOR2X0 U329 ( .IN1(oRst), .IN2(n115), .QN(N41) );
  NOR2X0 U330 ( .IN1(oRst), .IN2(n114), .QN(N40) );
  NOR2X0 U331 ( .IN1(oRst), .IN2(n113), .QN(N39) );
  NOR2X0 U332 ( .IN1(oRst), .IN2(n176), .QN(N38) );
  NOR2X0 U333 ( .IN1(n344), .IN2(n173), .QN(N36) );
  NOR2X0 U334 ( .IN1(n344), .IN2(n172), .QN(N35) );
  NOR2X0 U335 ( .IN1(n344), .IN2(n171), .QN(N34) );
  NOR2X0 U336 ( .IN1(n344), .IN2(n146), .QN(N9) );
  NOR2X0 U337 ( .IN1(n344), .IN2(n145), .QN(N8) );
  NOR2X0 U338 ( .IN1(n344), .IN2(n144), .QN(N7) );
  NOR2X0 U339 ( .IN1(n344), .IN2(n143), .QN(N6) );
  NOR2X0 U340 ( .IN1(n344), .IN2(n128), .QN(N54) );
  NOR2X0 U341 ( .IN1(n344), .IN2(n127), .QN(N53) );
  NOR2X0 U342 ( .IN1(n344), .IN2(n126), .QN(N52) );
  NOR2X0 U343 ( .IN1(n344), .IN2(n125), .QN(N51) );
  NOR2X0 U344 ( .IN1(n343), .IN2(n170), .QN(N33) );
  NOR2X0 U345 ( .IN1(n343), .IN2(n169), .QN(N32) );
  NOR2X0 U346 ( .IN1(n343), .IN2(n168), .QN(N31) );
  NOR2X0 U347 ( .IN1(n343), .IN2(n167), .QN(N30) );
  NOR2X0 U348 ( .IN1(n343), .IN2(n166), .QN(N29) );
  NOR2X0 U349 ( .IN1(n343), .IN2(n165), .QN(N28) );
  NOR2X0 U350 ( .IN1(n343), .IN2(n164), .QN(N27) );
  NOR2X0 U351 ( .IN1(n343), .IN2(n163), .QN(N26) );
  NOR2X0 U352 ( .IN1(n343), .IN2(n162), .QN(N25) );
  NOR2X0 U353 ( .IN1(n343), .IN2(n161), .QN(N24) );
  NOR2X0 U354 ( .IN1(n343), .IN2(n160), .QN(N23) );
  NOR2X0 U355 ( .IN1(n343), .IN2(n159), .QN(N22) );
  NOR2X0 U356 ( .IN1(n342), .IN2(n158), .QN(N21) );
  NOR2X0 U357 ( .IN1(n342), .IN2(n157), .QN(N20) );
  NOR2X0 U358 ( .IN1(n342), .IN2(n156), .QN(N19) );
  NOR2X0 U359 ( .IN1(n342), .IN2(n155), .QN(N18) );
  NOR2X0 U360 ( .IN1(n342), .IN2(n154), .QN(N17) );
  NOR2X0 U361 ( .IN1(n342), .IN2(n153), .QN(N16) );
  NOR2X0 U362 ( .IN1(n342), .IN2(n152), .QN(N15) );
  NOR2X0 U363 ( .IN1(n342), .IN2(n151), .QN(N14) );
  NOR2X0 U364 ( .IN1(n342), .IN2(n150), .QN(N13) );
  NOR2X0 U365 ( .IN1(n342), .IN2(n147), .QN(N10) );
  NOR2X0 U366 ( .IN1(n342), .IN2(n148), .QN(N11) );
  NOR2X0 U367 ( .IN1(n342), .IN2(n149), .QN(N12) );
  NOR2X0 U368 ( .IN1(n343), .IN2(n141), .QN(N67) );
  NOR2X0 U369 ( .IN1(n342), .IN2(n140), .QN(N66) );
  NOR2X0 U370 ( .IN1(n343), .IN2(n139), .QN(N65) );
  INVX0 U371 ( .INP(n142), .ZN(n384) );
  INVX0 U372 ( .INP(n113), .ZN(n379) );
  INVX0 U373 ( .INP(oRst), .ZN(n345) );
  INVX0 U374 ( .INP(n323), .ZN(n324) );
  NBUFFX2 U375 ( .INP(n319), .Z(n325) );
  NBUFFX2 U376 ( .INP(n319), .Z(n326) );
  NBUFFX2 U377 ( .INP(n320), .Z(n328) );
  NBUFFX2 U378 ( .INP(n320), .Z(n329) );
  NBUFFX2 U379 ( .INP(n321), .Z(n331) );
  NBUFFX2 U380 ( .INP(n321), .Z(n332) );
  NBUFFX2 U381 ( .INP(n385), .Z(n334) );
  NBUFFX2 U382 ( .INP(n385), .Z(n335) );
  NBUFFX2 U383 ( .INP(n385), .Z(n336) );
  NBUFFX2 U384 ( .INP(n385), .Z(n337) );
  NBUFFX2 U385 ( .INP(n8), .Z(n339) );
  NBUFFX2 U386 ( .INP(n8), .Z(n340) );
  NAND4X0 U387 ( .IN1(n322), .IN2(n298), .IN3(n315), .IN4(n348), .QN(n394) );
  AO222X1 U388 ( .IN1(n283), .IN2(n341), .IN3(n334), .IN4(n281), .IN5(Q[0]), 
        .IN6(n347), .Q(n210) );
  AO22X1 U389 ( .IN1(n174), .IN2(n336), .IN3(n341), .IN4(n281), .Q(n209) );
  XOR2X1 U390 ( .IN1(n174), .IN2(n175), .Q(n350) );
  NAND3X0 U391 ( .IN1(n298), .IN2(n315), .IN3(n322), .QN(n349) );
  AO222X1 U392 ( .IN1(case_sub[64]), .IN2(n333), .IN3(n328), .IN4(case_add[64]), .IN5(n325), .IN6(n384), .Q(n382) );
  AO21X1 U393 ( .IN1(n336), .IN2(Acc[30]), .IN3(n316), .Q(n207) );
  AO22X1 U394 ( .IN1(n338), .IN2(Acc[29]), .IN3(n325), .IN4(Acc[30]), .Q(n351)
         );
  AO221X1 U395 ( .IN1(case_add[63]), .IN2(n328), .IN3(case_sub[63]), .IN4(n331), .IN5(n351), .Q(n206) );
  AO22X1 U396 ( .IN1(n338), .IN2(Acc[28]), .IN3(n325), .IN4(Acc[29]), .Q(n352)
         );
  AO221X1 U397 ( .IN1(case_add[62]), .IN2(n328), .IN3(case_sub[62]), .IN4(n331), .IN5(n352), .Q(n205) );
  AO22X1 U398 ( .IN1(n338), .IN2(Acc[27]), .IN3(n325), .IN4(Acc[28]), .Q(n353)
         );
  AO221X1 U399 ( .IN1(case_add[61]), .IN2(n328), .IN3(case_sub[61]), .IN4(n331), .IN5(n353), .Q(n204) );
  AO22X1 U400 ( .IN1(n338), .IN2(Acc[26]), .IN3(n325), .IN4(Acc[27]), .Q(n354)
         );
  AO221X1 U401 ( .IN1(case_add[60]), .IN2(n328), .IN3(case_sub[60]), .IN4(n331), .IN5(n354), .Q(n203) );
  AO22X1 U402 ( .IN1(n337), .IN2(Acc[25]), .IN3(n325), .IN4(Acc[26]), .Q(n355)
         );
  AO221X1 U403 ( .IN1(case_add[59]), .IN2(n328), .IN3(case_sub[59]), .IN4(n331), .IN5(n355), .Q(n202) );
  AO22X1 U404 ( .IN1(n337), .IN2(Acc[24]), .IN3(n325), .IN4(Acc[25]), .Q(n356)
         );
  AO221X1 U405 ( .IN1(case_add[58]), .IN2(n328), .IN3(case_sub[58]), .IN4(n331), .IN5(n356), .Q(n201) );
  AO22X1 U406 ( .IN1(n337), .IN2(Acc[23]), .IN3(n325), .IN4(Acc[24]), .Q(n357)
         );
  AO221X1 U407 ( .IN1(case_add[57]), .IN2(n328), .IN3(case_sub[57]), .IN4(n331), .IN5(n357), .Q(n200) );
  AO22X1 U408 ( .IN1(n337), .IN2(Acc[22]), .IN3(n326), .IN4(Acc[23]), .Q(n358)
         );
  AO221X1 U409 ( .IN1(case_add[56]), .IN2(n329), .IN3(case_sub[56]), .IN4(n332), .IN5(n358), .Q(n199) );
  AO22X1 U410 ( .IN1(n337), .IN2(Acc[21]), .IN3(n325), .IN4(Acc[22]), .Q(n359)
         );
  AO221X1 U411 ( .IN1(case_add[55]), .IN2(n328), .IN3(case_sub[55]), .IN4(n331), .IN5(n359), .Q(n198) );
  AO22X1 U412 ( .IN1(n337), .IN2(Acc[20]), .IN3(n325), .IN4(Acc[21]), .Q(n360)
         );
  AO221X1 U413 ( .IN1(case_add[54]), .IN2(n328), .IN3(case_sub[54]), .IN4(n331), .IN5(n360), .Q(n197) );
  AO22X1 U414 ( .IN1(n337), .IN2(Acc[19]), .IN3(n325), .IN4(Acc[20]), .Q(n361)
         );
  AO221X1 U415 ( .IN1(case_add[53]), .IN2(n328), .IN3(case_sub[53]), .IN4(n331), .IN5(n361), .Q(n196) );
  AO22X1 U416 ( .IN1(n337), .IN2(Acc[18]), .IN3(n325), .IN4(Acc[19]), .Q(n362)
         );
  AO221X1 U417 ( .IN1(case_add[52]), .IN2(n328), .IN3(case_sub[52]), .IN4(n331), .IN5(n362), .Q(n195) );
  AO22X1 U418 ( .IN1(n338), .IN2(Acc[17]), .IN3(n326), .IN4(Acc[18]), .Q(n363)
         );
  AO221X1 U419 ( .IN1(case_add[51]), .IN2(n329), .IN3(case_sub[51]), .IN4(n331), .IN5(n363), .Q(n194) );
  AO22X1 U420 ( .IN1(n337), .IN2(Acc[16]), .IN3(n326), .IN4(Acc[17]), .Q(n364)
         );
  AO221X1 U421 ( .IN1(case_add[50]), .IN2(n329), .IN3(case_sub[50]), .IN4(n332), .IN5(n364), .Q(n193) );
  AO22X1 U422 ( .IN1(n337), .IN2(Acc[15]), .IN3(n326), .IN4(Acc[16]), .Q(n365)
         );
  AO221X1 U423 ( .IN1(case_add[49]), .IN2(n329), .IN3(case_sub[49]), .IN4(n332), .IN5(n365), .Q(n192) );
  AO22X1 U424 ( .IN1(n337), .IN2(Acc[14]), .IN3(n326), .IN4(Acc[15]), .Q(n366)
         );
  AO221X1 U425 ( .IN1(case_add[48]), .IN2(n329), .IN3(case_sub[48]), .IN4(n332), .IN5(n366), .Q(n191) );
  AO22X1 U426 ( .IN1(n337), .IN2(Acc[13]), .IN3(n326), .IN4(Acc[14]), .Q(n367)
         );
  AO221X1 U427 ( .IN1(case_add[47]), .IN2(n329), .IN3(case_sub[47]), .IN4(n332), .IN5(n367), .Q(n190) );
  AO22X1 U428 ( .IN1(n337), .IN2(Acc[12]), .IN3(n326), .IN4(Acc[13]), .Q(n368)
         );
  AO221X1 U429 ( .IN1(case_add[46]), .IN2(n329), .IN3(case_sub[46]), .IN4(n332), .IN5(n368), .Q(n189) );
  AO22X1 U430 ( .IN1(n337), .IN2(Acc[11]), .IN3(n326), .IN4(Acc[12]), .Q(n369)
         );
  AO221X1 U431 ( .IN1(case_add[45]), .IN2(n329), .IN3(case_sub[45]), .IN4(n332), .IN5(n369), .Q(n188) );
  AO22X1 U432 ( .IN1(n337), .IN2(Acc[10]), .IN3(n326), .IN4(Acc[11]), .Q(n370)
         );
  AO221X1 U433 ( .IN1(case_add[44]), .IN2(n329), .IN3(case_sub[44]), .IN4(n332), .IN5(n370), .Q(n187) );
  AO22X1 U434 ( .IN1(n337), .IN2(Acc[9]), .IN3(n326), .IN4(Acc[10]), .Q(n371)
         );
  AO221X1 U435 ( .IN1(case_add[43]), .IN2(n329), .IN3(case_sub[43]), .IN4(n332), .IN5(n371), .Q(n186) );
  AO22X1 U436 ( .IN1(n337), .IN2(Acc[8]), .IN3(n326), .IN4(Acc[9]), .Q(n372)
         );
  AO221X1 U437 ( .IN1(case_add[42]), .IN2(n329), .IN3(case_sub[42]), .IN4(n332), .IN5(n372), .Q(n185) );
  AO22X1 U438 ( .IN1(n336), .IN2(Acc[7]), .IN3(n326), .IN4(Acc[8]), .Q(n373)
         );
  AO221X1 U439 ( .IN1(case_add[41]), .IN2(n329), .IN3(case_sub[41]), .IN4(n332), .IN5(n373), .Q(n184) );
  AO22X1 U440 ( .IN1(n337), .IN2(Acc[6]), .IN3(n326), .IN4(Acc[7]), .Q(n374)
         );
  AO221X1 U441 ( .IN1(case_add[40]), .IN2(n329), .IN3(case_sub[40]), .IN4(n332), .IN5(n374), .Q(n183) );
  AO22X1 U442 ( .IN1(n336), .IN2(Acc[5]), .IN3(n326), .IN4(Acc[6]), .Q(n375)
         );
  AO221X1 U443 ( .IN1(case_add[39]), .IN2(n329), .IN3(case_sub[39]), .IN4(n333), .IN5(n375), .Q(n182) );
  AO22X1 U444 ( .IN1(n336), .IN2(Acc[4]), .IN3(n327), .IN4(Acc[5]), .Q(n376)
         );
  AO221X1 U445 ( .IN1(case_add[38]), .IN2(n330), .IN3(case_sub[38]), .IN4(n333), .IN5(n376), .Q(n181) );
  AO22X1 U446 ( .IN1(n336), .IN2(Acc[3]), .IN3(n327), .IN4(Acc[4]), .Q(n377)
         );
  AO221X1 U447 ( .IN1(case_add[37]), .IN2(n330), .IN3(case_sub[37]), .IN4(n333), .IN5(n377), .Q(n180) );
  AO22X1 U448 ( .IN1(n337), .IN2(n379), .IN3(n327), .IN4(Acc[3]), .Q(n378) );
  AO221X1 U449 ( .IN1(case_add[36]), .IN2(n330), .IN3(case_sub[36]), .IN4(n333), .IN5(n378), .Q(n179) );
  AO22X1 U450 ( .IN1(n336), .IN2(Acc[1]), .IN3(n327), .IN4(n379), .Q(n380) );
  AO221X1 U451 ( .IN1(case_add[35]), .IN2(n330), .IN3(case_sub[35]), .IN4(n333), .IN5(n380), .Q(n178) );
  AO22X1 U452 ( .IN1(n336), .IN2(Acc[0]), .IN3(n325), .IN4(Acc[1]), .Q(n381)
         );
  AO221X1 U453 ( .IN1(case_add[34]), .IN2(n328), .IN3(case_sub[34]), .IN4(n333), .IN5(n381), .Q(n242) );
  MUX21X1 U454 ( .IN1(M_reg[31]), .IN2(M[31]), .S(n346), .Q(n280) );
  MUX21X1 U455 ( .IN1(M_reg[30]), .IN2(M[30]), .S(n346), .Q(n279) );
  MUX21X1 U456 ( .IN1(M_reg[29]), .IN2(M[29]), .S(n346), .Q(n278) );
  MUX21X1 U457 ( .IN1(M_reg[28]), .IN2(M[28]), .S(n346), .Q(n277) );
  MUX21X1 U458 ( .IN1(M_reg[27]), .IN2(M[27]), .S(n346), .Q(n276) );
  MUX21X1 U459 ( .IN1(M_reg[26]), .IN2(M[26]), .S(n346), .Q(n275) );
  MUX21X1 U460 ( .IN1(M_reg[25]), .IN2(M[25]), .S(n346), .Q(n274) );
  MUX21X1 U461 ( .IN1(M_reg[24]), .IN2(M[24]), .S(n346), .Q(n273) );
  MUX21X1 U462 ( .IN1(M_reg[23]), .IN2(M[23]), .S(n346), .Q(n272) );
  MUX21X1 U463 ( .IN1(M_reg[22]), .IN2(M[22]), .S(n346), .Q(n271) );
  MUX21X1 U464 ( .IN1(M_reg[21]), .IN2(M[21]), .S(n346), .Q(n270) );
  MUX21X1 U465 ( .IN1(M_reg[20]), .IN2(M[20]), .S(n346), .Q(n269) );
  MUX21X1 U466 ( .IN1(M_reg[19]), .IN2(M[19]), .S(n346), .Q(n268) );
  MUX21X1 U467 ( .IN1(M_reg[18]), .IN2(M[18]), .S(n346), .Q(n267) );
  MUX21X1 U468 ( .IN1(M_reg[17]), .IN2(M[17]), .S(rst), .Q(n266) );
  MUX21X1 U469 ( .IN1(M_reg[15]), .IN2(M[15]), .S(rst), .Q(n264) );
  MUX21X1 U470 ( .IN1(M_reg[14]), .IN2(M[14]), .S(rst), .Q(n263) );
  MUX21X1 U471 ( .IN1(M_reg[13]), .IN2(M[13]), .S(rst), .Q(n262) );
  MUX21X1 U472 ( .IN1(M_reg[12]), .IN2(M[12]), .S(rst), .Q(n261) );
  MUX21X1 U473 ( .IN1(M_reg[11]), .IN2(M[11]), .S(rst), .Q(n260) );
  MUX21X1 U474 ( .IN1(M_reg[10]), .IN2(M[10]), .S(rst), .Q(n259) );
  MUX21X1 U475 ( .IN1(M_reg[7]), .IN2(M[7]), .S(rst), .Q(n256) );
  MUX21X1 U476 ( .IN1(M_reg[3]), .IN2(M[3]), .S(rst), .Q(n252) );
  MUX21X1 U477 ( .IN1(n324), .IN2(M[0]), .S(rst), .Q(n249) );
  AO21X1 U478 ( .IN1(n336), .IN2(n384), .IN3(n382), .Q(n208) );
  AO222X1 U479 ( .IN1(case_sub[33]), .IN2(n333), .IN3(case_add[33]), .IN4(n328), .IN5(n325), .IN6(Acc[0]), .Q(n383) );
  AO221X1 U480 ( .IN1(n336), .IN2(n314), .IN3(Q[31]), .IN4(n346), .IN5(n383), 
        .Q(n241) );
  NOR2X0 U481 ( .IN1(count[1]), .IN2(count[0]), .QN(n386) );
  AO21X1 U482 ( .IN1(count[1]), .IN2(count[0]), .IN3(n386), .Q(N110) );
  NOR2X0 U483 ( .IN1(n390), .IN2(count[2]), .QN(n387) );
  AO21X1 U484 ( .IN1(count[2]), .IN2(n390), .IN3(n387), .Q(N111) );
  NOR2X0 U485 ( .IN1(n391), .IN2(count[3]), .QN(n388) );
  AO21X1 U486 ( .IN1(count[3]), .IN2(n391), .IN3(n388), .Q(N112) );
  XNOR2X1 U487 ( .IN1(count[4]), .IN2(n392), .Q(N113) );
  NOR2X0 U488 ( .IN1(count[4]), .IN2(n392), .QN(n389) );
  XOR2X1 U489 ( .IN1(count[5]), .IN2(n389), .Q(N114) );
  OR3X1 U490 ( .IN1(count[5]), .IN2(count[4]), .IN3(count[3]), .Q(n393) );
endmodule

