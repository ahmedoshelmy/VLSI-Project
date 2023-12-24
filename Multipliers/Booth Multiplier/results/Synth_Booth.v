
module BoothMultiplier_DW01_sub_0 ( A, B, CI, DIFF, CO );
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
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143;
  wire   [32:0] carry;

  FA_X1 U2_27 ( .A(A[27]), .B(n116), .CI(carry[27]), .CO(carry[28]), .S(
        DIFF[27]) );
  FA_X1 U2_22 ( .A(A[22]), .B(n121), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FA_X1 U2_18 ( .A(A[18]), .B(n125), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FA_X1 U2_16 ( .A(A[16]), .B(n127), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA_X1 U2_14 ( .A(A[14]), .B(n129), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA_X1 U2_12 ( .A(A[12]), .B(n131), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n133), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n137), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FA_X1 U2_4 ( .A(A[4]), .B(n139), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  INV_X1 U1 ( .A(B[30]), .ZN(n113) );
  CLKBUF_X1 U2 ( .A(n93), .Z(n1) );
  CLKBUF_X1 U3 ( .A(carry[23]), .Z(n2) );
  CLKBUF_X1 U4 ( .A(carry[13]), .Z(n3) );
  CLKBUF_X1 U5 ( .A(carry[17]), .Z(n4) );
  CLKBUF_X1 U6 ( .A(carry[5]), .Z(n5) );
  NAND3_X1 U7 ( .A1(n76), .A2(n77), .A3(n78), .ZN(n6) );
  NAND3_X1 U8 ( .A1(n76), .A2(n77), .A3(n78), .ZN(n7) );
  NAND3_X1 U9 ( .A1(n19), .A2(n20), .A3(n21), .ZN(n8) );
  NAND3_X1 U10 ( .A1(n19), .A2(n20), .A3(n21), .ZN(n9) );
  CLKBUF_X1 U11 ( .A(carry[28]), .Z(n10) );
  CLKBUF_X1 U12 ( .A(carry[15]), .Z(n11) );
  NAND3_X1 U13 ( .A1(n85), .A2(n86), .A3(n87), .ZN(n12) );
  NAND3_X1 U14 ( .A1(n85), .A2(n86), .A3(n87), .ZN(n13) );
  NAND3_X1 U15 ( .A1(n50), .A2(n51), .A3(n52), .ZN(n14) );
  NAND3_X1 U16 ( .A1(n50), .A2(n51), .A3(n52), .ZN(n15) );
  NAND3_X1 U17 ( .A1(n23), .A2(n24), .A3(n25), .ZN(n16) );
  NAND3_X1 U18 ( .A1(n23), .A2(n24), .A3(n25), .ZN(n17) );
  XOR2_X1 U19 ( .A(A[1]), .B(n142), .Z(n18) );
  XOR2_X1 U20 ( .A(carry[1]), .B(n18), .Z(DIFF[1]) );
  NAND2_X1 U21 ( .A1(carry[1]), .A2(A[1]), .ZN(n19) );
  NAND2_X1 U22 ( .A1(carry[1]), .A2(n142), .ZN(n20) );
  NAND2_X1 U23 ( .A1(A[1]), .A2(n142), .ZN(n21) );
  NAND3_X1 U24 ( .A1(n19), .A2(n20), .A3(n21), .ZN(carry[2]) );
  XOR2_X1 U25 ( .A(A[2]), .B(n141), .Z(n22) );
  XOR2_X1 U26 ( .A(n9), .B(n22), .Z(DIFF[2]) );
  NAND2_X1 U27 ( .A1(n8), .A2(A[2]), .ZN(n23) );
  NAND2_X1 U28 ( .A1(carry[2]), .A2(n141), .ZN(n24) );
  NAND2_X1 U29 ( .A1(A[2]), .A2(n141), .ZN(n25) );
  NAND3_X1 U30 ( .A1(n23), .A2(n24), .A3(n25), .ZN(carry[3]) );
  XNOR2_X1 U31 ( .A(A[31]), .B(n112), .ZN(n26) );
  XOR2_X1 U32 ( .A(A[11]), .B(n132), .Z(n27) );
  XOR2_X1 U33 ( .A(carry[11]), .B(n27), .Z(DIFF[11]) );
  NAND2_X1 U34 ( .A1(carry[11]), .A2(A[11]), .ZN(n28) );
  NAND2_X1 U35 ( .A1(carry[11]), .A2(n132), .ZN(n29) );
  NAND2_X1 U36 ( .A1(A[11]), .A2(n132), .ZN(n30) );
  NAND3_X1 U37 ( .A1(n28), .A2(n29), .A3(n30), .ZN(carry[12]) );
  XOR2_X1 U38 ( .A(A[15]), .B(n128), .Z(n31) );
  XOR2_X1 U39 ( .A(n11), .B(n31), .Z(DIFF[15]) );
  NAND2_X1 U40 ( .A1(carry[15]), .A2(A[15]), .ZN(n32) );
  NAND2_X1 U41 ( .A1(carry[15]), .A2(n128), .ZN(n33) );
  NAND2_X1 U42 ( .A1(A[15]), .A2(n128), .ZN(n34) );
  NAND3_X1 U43 ( .A1(n32), .A2(n33), .A3(n34), .ZN(carry[16]) );
  XOR2_X1 U44 ( .A(A[9]), .B(n134), .Z(n35) );
  XOR2_X1 U45 ( .A(n15), .B(n35), .Z(DIFF[9]) );
  NAND2_X1 U46 ( .A1(n14), .A2(A[9]), .ZN(n36) );
  NAND2_X1 U47 ( .A1(carry[9]), .A2(n134), .ZN(n37) );
  NAND2_X1 U48 ( .A1(A[9]), .A2(n134), .ZN(n38) );
  NAND3_X1 U49 ( .A1(n36), .A2(n37), .A3(n38), .ZN(carry[10]) );
  XOR2_X1 U50 ( .A(A[17]), .B(n126), .Z(n39) );
  XOR2_X1 U51 ( .A(n4), .B(n39), .Z(DIFF[17]) );
  NAND2_X1 U52 ( .A1(carry[17]), .A2(A[17]), .ZN(n40) );
  NAND2_X1 U53 ( .A1(carry[17]), .A2(n126), .ZN(n41) );
  NAND2_X1 U54 ( .A1(A[17]), .A2(n126), .ZN(n42) );
  NAND3_X1 U55 ( .A1(n40), .A2(n41), .A3(n42), .ZN(carry[18]) );
  NAND3_X1 U56 ( .A1(n108), .A2(n109), .A3(n110), .ZN(n43) );
  NAND3_X1 U57 ( .A1(n108), .A2(n109), .A3(n110), .ZN(n44) );
  NAND3_X1 U58 ( .A1(n108), .A2(n109), .A3(n110), .ZN(carry[30]) );
  XOR2_X1 U59 ( .A(A[30]), .B(n113), .Z(n45) );
  XOR2_X1 U60 ( .A(n44), .B(n45), .Z(DIFF[30]) );
  NAND2_X1 U61 ( .A1(n43), .A2(A[30]), .ZN(n46) );
  NAND2_X1 U62 ( .A1(carry[30]), .A2(n113), .ZN(n47) );
  NAND2_X1 U63 ( .A1(A[30]), .A2(n113), .ZN(n48) );
  NAND3_X1 U64 ( .A1(n46), .A2(n47), .A3(n48), .ZN(carry[31]) );
  XOR2_X1 U65 ( .A(A[8]), .B(n135), .Z(n49) );
  XOR2_X1 U66 ( .A(n54), .B(n49), .Z(DIFF[8]) );
  NAND2_X1 U67 ( .A1(n53), .A2(A[8]), .ZN(n50) );
  NAND2_X1 U68 ( .A1(carry[8]), .A2(n135), .ZN(n51) );
  NAND2_X1 U69 ( .A1(A[8]), .A2(n135), .ZN(n52) );
  NAND3_X1 U70 ( .A1(n50), .A2(n51), .A3(n52), .ZN(carry[9]) );
  NAND3_X1 U71 ( .A1(n60), .A2(n61), .A3(n62), .ZN(n53) );
  NAND3_X1 U72 ( .A1(n60), .A2(n61), .A3(n62), .ZN(n54) );
  XOR2_X1 U73 ( .A(A[21]), .B(n122), .Z(n55) );
  XOR2_X1 U74 ( .A(n13), .B(n55), .Z(DIFF[21]) );
  NAND2_X1 U75 ( .A1(n12), .A2(A[21]), .ZN(n56) );
  NAND2_X1 U76 ( .A1(carry[21]), .A2(n122), .ZN(n57) );
  NAND2_X1 U77 ( .A1(A[21]), .A2(n122), .ZN(n58) );
  NAND3_X1 U78 ( .A1(n56), .A2(n57), .A3(n58), .ZN(carry[22]) );
  XOR2_X1 U79 ( .A(A[7]), .B(n136), .Z(n59) );
  XOR2_X1 U80 ( .A(carry[7]), .B(n59), .Z(DIFF[7]) );
  NAND2_X1 U81 ( .A1(carry[7]), .A2(A[7]), .ZN(n60) );
  NAND2_X1 U82 ( .A1(carry[7]), .A2(n136), .ZN(n61) );
  NAND2_X1 U83 ( .A1(A[7]), .A2(n136), .ZN(n62) );
  NAND3_X1 U84 ( .A1(n60), .A2(n61), .A3(n62), .ZN(carry[8]) );
  XOR2_X1 U85 ( .A(A[5]), .B(n138), .Z(n63) );
  XOR2_X1 U86 ( .A(n5), .B(n63), .Z(DIFF[5]) );
  NAND2_X1 U87 ( .A1(carry[5]), .A2(A[5]), .ZN(n64) );
  NAND2_X1 U88 ( .A1(carry[5]), .A2(n138), .ZN(n65) );
  NAND2_X1 U89 ( .A1(A[5]), .A2(n138), .ZN(n66) );
  NAND3_X1 U90 ( .A1(n64), .A2(n65), .A3(n66), .ZN(carry[6]) );
  XOR2_X1 U91 ( .A(A[13]), .B(n130), .Z(n67) );
  XOR2_X1 U92 ( .A(n3), .B(n67), .Z(DIFF[13]) );
  NAND2_X1 U93 ( .A1(carry[13]), .A2(A[13]), .ZN(n68) );
  NAND2_X1 U94 ( .A1(carry[13]), .A2(n130), .ZN(n69) );
  NAND2_X1 U95 ( .A1(A[13]), .A2(n130), .ZN(n70) );
  NAND3_X1 U96 ( .A1(n68), .A2(n69), .A3(n70), .ZN(carry[14]) );
  XOR2_X1 U97 ( .A(A[3]), .B(n140), .Z(n71) );
  XOR2_X1 U98 ( .A(n17), .B(n71), .Z(DIFF[3]) );
  NAND2_X1 U99 ( .A1(n16), .A2(A[3]), .ZN(n72) );
  NAND2_X1 U100 ( .A1(carry[3]), .A2(n140), .ZN(n73) );
  NAND2_X1 U101 ( .A1(A[3]), .A2(n140), .ZN(n74) );
  NAND3_X1 U102 ( .A1(n72), .A2(n73), .A3(n74), .ZN(carry[4]) );
  XNOR2_X1 U103 ( .A(carry[31]), .B(n26), .ZN(DIFF[31]) );
  XOR2_X1 U104 ( .A(A[19]), .B(n124), .Z(n75) );
  XOR2_X1 U105 ( .A(carry[19]), .B(n75), .Z(DIFF[19]) );
  NAND2_X1 U106 ( .A1(carry[19]), .A2(A[19]), .ZN(n76) );
  NAND2_X1 U107 ( .A1(carry[19]), .A2(n124), .ZN(n77) );
  NAND2_X1 U108 ( .A1(A[19]), .A2(n124), .ZN(n78) );
  NAND3_X1 U109 ( .A1(n76), .A2(n77), .A3(n78), .ZN(carry[20]) );
  NAND3_X1 U110 ( .A1(n81), .A2(n82), .A3(n83), .ZN(n79) );
  XOR2_X1 U111 ( .A(A[23]), .B(n120), .Z(n80) );
  XOR2_X1 U112 ( .A(n2), .B(n80), .Z(DIFF[23]) );
  NAND2_X1 U113 ( .A1(carry[23]), .A2(A[23]), .ZN(n81) );
  NAND2_X1 U114 ( .A1(carry[23]), .A2(n120), .ZN(n82) );
  NAND2_X1 U115 ( .A1(A[23]), .A2(n120), .ZN(n83) );
  NAND3_X1 U116 ( .A1(n82), .A2(n81), .A3(n83), .ZN(carry[24]) );
  XOR2_X1 U117 ( .A(A[20]), .B(n123), .Z(n84) );
  XOR2_X1 U118 ( .A(n7), .B(n84), .Z(DIFF[20]) );
  NAND2_X1 U119 ( .A1(n6), .A2(A[20]), .ZN(n85) );
  NAND2_X1 U120 ( .A1(carry[20]), .A2(n123), .ZN(n86) );
  NAND2_X1 U121 ( .A1(A[20]), .A2(n123), .ZN(n87) );
  NAND3_X1 U122 ( .A1(n85), .A2(n86), .A3(n87), .ZN(carry[21]) );
  NAND3_X1 U123 ( .A1(n90), .A2(n91), .A3(n92), .ZN(n88) );
  XOR2_X1 U124 ( .A(A[24]), .B(n119), .Z(n89) );
  XOR2_X1 U125 ( .A(n79), .B(n89), .Z(DIFF[24]) );
  NAND2_X1 U126 ( .A1(n79), .A2(A[24]), .ZN(n90) );
  NAND2_X1 U127 ( .A1(carry[24]), .A2(n119), .ZN(n91) );
  NAND2_X1 U128 ( .A1(A[24]), .A2(n119), .ZN(n92) );
  NAND3_X1 U129 ( .A1(n90), .A2(n91), .A3(n92), .ZN(carry[25]) );
  NAND3_X1 U130 ( .A1(n100), .A2(n101), .A3(n102), .ZN(n93) );
  NAND3_X1 U131 ( .A1(n96), .A2(n97), .A3(n98), .ZN(n94) );
  XOR2_X1 U132 ( .A(A[25]), .B(n118), .Z(n95) );
  XOR2_X1 U133 ( .A(n88), .B(n95), .Z(DIFF[25]) );
  NAND2_X1 U134 ( .A1(n88), .A2(A[25]), .ZN(n96) );
  NAND2_X1 U135 ( .A1(carry[25]), .A2(n118), .ZN(n97) );
  NAND2_X1 U136 ( .A1(A[25]), .A2(n118), .ZN(n98) );
  NAND3_X1 U137 ( .A1(n96), .A2(n97), .A3(n98), .ZN(carry[26]) );
  XOR2_X1 U138 ( .A(A[28]), .B(n115), .Z(n99) );
  XOR2_X1 U139 ( .A(n10), .B(n99), .Z(DIFF[28]) );
  NAND2_X1 U140 ( .A1(carry[28]), .A2(A[28]), .ZN(n100) );
  NAND2_X1 U141 ( .A1(carry[28]), .A2(n115), .ZN(n101) );
  NAND2_X1 U142 ( .A1(A[28]), .A2(n115), .ZN(n102) );
  NAND3_X1 U143 ( .A1(n101), .A2(n100), .A3(n102), .ZN(carry[29]) );
  XOR2_X1 U144 ( .A(A[26]), .B(n117), .Z(n103) );
  XOR2_X1 U145 ( .A(n94), .B(n103), .Z(DIFF[26]) );
  NAND2_X1 U146 ( .A1(n94), .A2(A[26]), .ZN(n104) );
  NAND2_X1 U147 ( .A1(carry[26]), .A2(n117), .ZN(n105) );
  NAND2_X1 U148 ( .A1(A[26]), .A2(n117), .ZN(n106) );
  NAND3_X1 U149 ( .A1(n104), .A2(n105), .A3(n106), .ZN(carry[27]) );
  XOR2_X1 U150 ( .A(A[29]), .B(n114), .Z(n107) );
  XOR2_X1 U151 ( .A(n1), .B(n107), .Z(DIFF[29]) );
  NAND2_X1 U152 ( .A1(n93), .A2(A[29]), .ZN(n108) );
  NAND2_X1 U153 ( .A1(carry[29]), .A2(n114), .ZN(n109) );
  NAND2_X1 U154 ( .A1(A[29]), .A2(n114), .ZN(n110) );
  INV_X1 U155 ( .A(A[0]), .ZN(n111) );
  XNOR2_X1 U156 ( .A(n143), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U157 ( .A(B[31]), .ZN(n112) );
  INV_X1 U158 ( .A(B[26]), .ZN(n117) );
  INV_X1 U159 ( .A(B[27]), .ZN(n116) );
  INV_X1 U160 ( .A(B[29]), .ZN(n114) );
  INV_X1 U161 ( .A(B[28]), .ZN(n115) );
  INV_X1 U162 ( .A(B[19]), .ZN(n124) );
  INV_X1 U163 ( .A(B[20]), .ZN(n123) );
  INV_X1 U164 ( .A(B[21]), .ZN(n122) );
  INV_X1 U165 ( .A(B[22]), .ZN(n121) );
  INV_X1 U166 ( .A(B[23]), .ZN(n120) );
  INV_X1 U167 ( .A(B[24]), .ZN(n119) );
  INV_X1 U168 ( .A(B[25]), .ZN(n118) );
  INV_X1 U169 ( .A(B[18]), .ZN(n125) );
  INV_X1 U170 ( .A(B[17]), .ZN(n126) );
  INV_X1 U171 ( .A(B[16]), .ZN(n127) );
  INV_X1 U172 ( .A(B[2]), .ZN(n141) );
  INV_X1 U173 ( .A(B[3]), .ZN(n140) );
  INV_X1 U174 ( .A(B[4]), .ZN(n139) );
  INV_X1 U175 ( .A(B[5]), .ZN(n138) );
  INV_X1 U176 ( .A(B[6]), .ZN(n137) );
  INV_X1 U177 ( .A(B[7]), .ZN(n136) );
  INV_X1 U178 ( .A(B[8]), .ZN(n135) );
  INV_X1 U179 ( .A(B[9]), .ZN(n134) );
  INV_X1 U180 ( .A(B[10]), .ZN(n133) );
  INV_X1 U181 ( .A(B[11]), .ZN(n132) );
  INV_X1 U182 ( .A(B[12]), .ZN(n131) );
  INV_X1 U183 ( .A(B[13]), .ZN(n130) );
  INV_X1 U184 ( .A(B[14]), .ZN(n129) );
  INV_X1 U185 ( .A(B[15]), .ZN(n128) );
  INV_X1 U186 ( .A(B[1]), .ZN(n142) );
  NAND2_X1 U187 ( .A1(B[0]), .A2(n111), .ZN(carry[1]) );
  INV_X1 U188 ( .A(B[0]), .ZN(n143) );
endmodule


module BoothMultiplier_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92;
  wire   [31:1] carry;

  FA_X1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FA_X1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n92), .CO(carry[2]), .S(SUM[1]) );
  CLKBUF_X1 U1 ( .A(carry[12]), .Z(n1) );
  NAND3_X1 U2 ( .A1(n79), .A2(n80), .A3(n81), .ZN(n2) );
  NAND3_X1 U3 ( .A1(n79), .A2(n80), .A3(n81), .ZN(n3) );
  NAND3_X1 U4 ( .A1(n62), .A2(n63), .A3(n64), .ZN(n4) );
  NAND3_X1 U5 ( .A1(n62), .A2(n63), .A3(n64), .ZN(n5) );
  NAND3_X1 U6 ( .A1(n34), .A2(n35), .A3(n36), .ZN(n6) );
  NAND3_X1 U7 ( .A1(n34), .A2(n35), .A3(n36), .ZN(n7) );
  XNOR2_X1 U8 ( .A(A[31]), .B(B[31]), .ZN(n8) );
  CLKBUF_X1 U9 ( .A(n31), .Z(n9) );
  XOR2_X1 U10 ( .A(A[5]), .B(B[5]), .Z(n10) );
  XOR2_X1 U11 ( .A(n7), .B(n10), .Z(SUM[5]) );
  NAND2_X1 U12 ( .A1(n6), .A2(A[5]), .ZN(n11) );
  NAND2_X1 U13 ( .A1(carry[5]), .A2(B[5]), .ZN(n12) );
  NAND2_X1 U14 ( .A1(A[5]), .A2(B[5]), .ZN(n13) );
  NAND3_X1 U15 ( .A1(n11), .A2(n12), .A3(n13), .ZN(carry[6]) );
  CLKBUF_X1 U16 ( .A(carry[7]), .Z(n14) );
  XOR2_X1 U17 ( .A(A[7]), .B(B[7]), .Z(n15) );
  XOR2_X1 U18 ( .A(n14), .B(n15), .Z(SUM[7]) );
  NAND2_X1 U19 ( .A1(carry[7]), .A2(A[7]), .ZN(n16) );
  NAND2_X1 U20 ( .A1(carry[7]), .A2(B[7]), .ZN(n17) );
  NAND2_X1 U21 ( .A1(A[7]), .A2(B[7]), .ZN(n18) );
  NAND3_X1 U22 ( .A1(n16), .A2(n17), .A3(n18), .ZN(carry[8]) );
  CLKBUF_X1 U23 ( .A(carry[9]), .Z(n19) );
  NAND3_X1 U24 ( .A1(n30), .A2(n31), .A3(n32), .ZN(n20) );
  XOR2_X1 U25 ( .A(A[9]), .B(B[9]), .Z(n21) );
  XOR2_X1 U26 ( .A(n19), .B(n21), .Z(SUM[9]) );
  NAND2_X1 U27 ( .A1(carry[9]), .A2(A[9]), .ZN(n22) );
  NAND2_X1 U28 ( .A1(carry[9]), .A2(B[9]), .ZN(n23) );
  NAND2_X1 U29 ( .A1(A[9]), .A2(B[9]), .ZN(n24) );
  NAND3_X1 U30 ( .A1(n22), .A2(n23), .A3(n24), .ZN(carry[10]) );
  XOR2_X1 U31 ( .A(A[17]), .B(B[17]), .Z(n25) );
  XOR2_X1 U32 ( .A(n5), .B(n25), .Z(SUM[17]) );
  NAND2_X1 U33 ( .A1(n4), .A2(A[17]), .ZN(n26) );
  NAND2_X1 U34 ( .A1(carry[17]), .A2(B[17]), .ZN(n27) );
  NAND2_X1 U35 ( .A1(A[17]), .A2(B[17]), .ZN(n28) );
  NAND3_X1 U36 ( .A1(n26), .A2(n27), .A3(n28), .ZN(carry[18]) );
  XOR2_X1 U37 ( .A(A[3]), .B(B[3]), .Z(n29) );
  XOR2_X1 U38 ( .A(carry[3]), .B(n29), .Z(SUM[3]) );
  NAND2_X1 U39 ( .A1(carry[3]), .A2(A[3]), .ZN(n30) );
  NAND2_X1 U40 ( .A1(carry[3]), .A2(B[3]), .ZN(n31) );
  NAND2_X1 U41 ( .A1(A[3]), .A2(B[3]), .ZN(n32) );
  NAND3_X1 U42 ( .A1(n30), .A2(n9), .A3(n32), .ZN(carry[4]) );
  XOR2_X1 U43 ( .A(A[4]), .B(B[4]), .Z(n33) );
  XOR2_X1 U44 ( .A(carry[4]), .B(n33), .Z(SUM[4]) );
  NAND2_X1 U45 ( .A1(n20), .A2(A[4]), .ZN(n34) );
  NAND2_X1 U46 ( .A1(n20), .A2(B[4]), .ZN(n35) );
  NAND2_X1 U47 ( .A1(A[4]), .A2(B[4]), .ZN(n36) );
  NAND3_X1 U48 ( .A1(n34), .A2(n35), .A3(n36), .ZN(carry[5]) );
  CLKBUF_X1 U49 ( .A(carry[23]), .Z(n37) );
  XOR2_X1 U50 ( .A(A[23]), .B(B[23]), .Z(n38) );
  XOR2_X1 U51 ( .A(n37), .B(n38), .Z(SUM[23]) );
  NAND2_X1 U52 ( .A1(carry[23]), .A2(A[23]), .ZN(n39) );
  NAND2_X1 U53 ( .A1(carry[23]), .A2(B[23]), .ZN(n40) );
  NAND2_X1 U54 ( .A1(A[23]), .A2(B[23]), .ZN(n41) );
  NAND3_X1 U55 ( .A1(n39), .A2(n40), .A3(n41), .ZN(carry[24]) );
  XOR2_X1 U56 ( .A(A[12]), .B(B[12]), .Z(n42) );
  XOR2_X1 U57 ( .A(n1), .B(n42), .Z(SUM[12]) );
  NAND2_X1 U58 ( .A1(carry[12]), .A2(A[12]), .ZN(n43) );
  NAND2_X1 U59 ( .A1(carry[12]), .A2(B[12]), .ZN(n44) );
  NAND2_X1 U60 ( .A1(A[12]), .A2(B[12]), .ZN(n45) );
  NAND3_X1 U61 ( .A1(n43), .A2(n44), .A3(n45), .ZN(carry[13]) );
  CLKBUF_X1 U62 ( .A(carry[19]), .Z(n46) );
  XOR2_X1 U63 ( .A(A[30]), .B(B[30]), .Z(n47) );
  XOR2_X1 U64 ( .A(n3), .B(n47), .Z(SUM[30]) );
  NAND2_X1 U65 ( .A1(n2), .A2(A[30]), .ZN(n48) );
  NAND2_X1 U66 ( .A1(carry[30]), .A2(B[30]), .ZN(n49) );
  NAND2_X1 U67 ( .A1(A[30]), .A2(B[30]), .ZN(n50) );
  NAND3_X1 U68 ( .A1(n48), .A2(n49), .A3(n50), .ZN(carry[31]) );
  XOR2_X1 U69 ( .A(A[19]), .B(B[19]), .Z(n51) );
  XOR2_X1 U70 ( .A(n46), .B(n51), .Z(SUM[19]) );
  NAND2_X1 U71 ( .A1(carry[19]), .A2(A[19]), .ZN(n52) );
  NAND2_X1 U72 ( .A1(carry[19]), .A2(B[19]), .ZN(n53) );
  NAND2_X1 U73 ( .A1(A[19]), .A2(B[19]), .ZN(n54) );
  NAND3_X1 U74 ( .A1(n52), .A2(n53), .A3(n54), .ZN(carry[20]) );
  CLKBUF_X1 U75 ( .A(carry[14]), .Z(n55) );
  XOR2_X1 U76 ( .A(A[14]), .B(B[14]), .Z(n56) );
  XOR2_X1 U77 ( .A(n55), .B(n56), .Z(SUM[14]) );
  NAND2_X1 U78 ( .A1(carry[14]), .A2(A[14]), .ZN(n57) );
  NAND2_X1 U79 ( .A1(carry[14]), .A2(B[14]), .ZN(n58) );
  NAND2_X1 U80 ( .A1(A[14]), .A2(B[14]), .ZN(n59) );
  NAND3_X1 U81 ( .A1(n57), .A2(n58), .A3(n59), .ZN(carry[15]) );
  CLKBUF_X1 U82 ( .A(carry[16]), .Z(n60) );
  XOR2_X1 U83 ( .A(A[16]), .B(B[16]), .Z(n61) );
  XOR2_X1 U84 ( .A(n60), .B(n61), .Z(SUM[16]) );
  NAND2_X1 U85 ( .A1(carry[16]), .A2(A[16]), .ZN(n62) );
  NAND2_X1 U86 ( .A1(carry[16]), .A2(B[16]), .ZN(n63) );
  NAND2_X1 U87 ( .A1(A[16]), .A2(B[16]), .ZN(n64) );
  NAND3_X1 U88 ( .A1(n62), .A2(n63), .A3(n64), .ZN(carry[17]) );
  XNOR2_X1 U89 ( .A(carry[31]), .B(n8), .ZN(SUM[31]) );
  CLKBUF_X1 U90 ( .A(carry[25]), .Z(n65) );
  CLKBUF_X1 U91 ( .A(carry[21]), .Z(n66) );
  XOR2_X1 U92 ( .A(A[21]), .B(B[21]), .Z(n67) );
  XOR2_X1 U93 ( .A(n66), .B(n67), .Z(SUM[21]) );
  NAND2_X1 U94 ( .A1(carry[21]), .A2(A[21]), .ZN(n68) );
  NAND2_X1 U95 ( .A1(carry[21]), .A2(B[21]), .ZN(n69) );
  NAND2_X1 U96 ( .A1(A[21]), .A2(B[21]), .ZN(n70) );
  NAND3_X1 U97 ( .A1(n68), .A2(n69), .A3(n70), .ZN(carry[22]) );
  NAND3_X1 U98 ( .A1(n73), .A2(n74), .A3(n75), .ZN(n71) );
  XOR2_X1 U99 ( .A(A[25]), .B(B[25]), .Z(n72) );
  XOR2_X1 U100 ( .A(n65), .B(n72), .Z(SUM[25]) );
  NAND2_X1 U101 ( .A1(carry[25]), .A2(A[25]), .ZN(n73) );
  NAND2_X1 U102 ( .A1(carry[25]), .A2(B[25]), .ZN(n74) );
  NAND2_X1 U103 ( .A1(A[25]), .A2(B[25]), .ZN(n75) );
  NAND3_X1 U104 ( .A1(n74), .A2(n73), .A3(n75), .ZN(carry[26]) );
  CLKBUF_X1 U105 ( .A(n71), .Z(n76) );
  CLKBUF_X1 U106 ( .A(carry[29]), .Z(n77) );
  XOR2_X1 U107 ( .A(A[29]), .B(B[29]), .Z(n78) );
  XOR2_X1 U108 ( .A(n77), .B(n78), .Z(SUM[29]) );
  NAND2_X1 U109 ( .A1(carry[29]), .A2(A[29]), .ZN(n79) );
  NAND2_X1 U110 ( .A1(carry[29]), .A2(B[29]), .ZN(n80) );
  NAND2_X1 U111 ( .A1(A[29]), .A2(B[29]), .ZN(n81) );
  NAND3_X1 U112 ( .A1(n79), .A2(n80), .A3(n81), .ZN(carry[30]) );
  NAND3_X1 U113 ( .A1(n84), .A2(n85), .A3(n86), .ZN(n82) );
  XOR2_X1 U114 ( .A(A[26]), .B(B[26]), .Z(n83) );
  XOR2_X1 U115 ( .A(n76), .B(n83), .Z(SUM[26]) );
  NAND2_X1 U116 ( .A1(n71), .A2(A[26]), .ZN(n84) );
  NAND2_X1 U117 ( .A1(carry[26]), .A2(B[26]), .ZN(n85) );
  NAND2_X1 U118 ( .A1(A[26]), .A2(B[26]), .ZN(n86) );
  NAND3_X1 U119 ( .A1(n84), .A2(n85), .A3(n86), .ZN(carry[27]) );
  CLKBUF_X1 U120 ( .A(n82), .Z(n87) );
  XOR2_X1 U121 ( .A(A[27]), .B(B[27]), .Z(n88) );
  XOR2_X1 U122 ( .A(n87), .B(n88), .Z(SUM[27]) );
  NAND2_X1 U123 ( .A1(n82), .A2(A[27]), .ZN(n89) );
  NAND2_X1 U124 ( .A1(carry[27]), .A2(B[27]), .ZN(n90) );
  NAND2_X1 U125 ( .A1(A[27]), .A2(B[27]), .ZN(n91) );
  NAND3_X1 U126 ( .A1(n89), .A2(n90), .A3(n91), .ZN(carry[28]) );
  AND2_X1 U127 ( .A1(A[0]), .A2(B[0]), .ZN(n92) );
  XOR2_X1 U128 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module BoothMultiplier ( clk, oClk, rst, oRst, M, Q, P );
  input [31:0] M;
  input [31:0] Q;
  output [63:0] P;
  input clk, oClk, rst, oRst;
  wire   N4, N43, N44, N45, N46, N47, n7, n8, n9, n10, n11, n12, n14, n15, n18,
         n19, n22, n23, n26, n27, n29, n30, n32, n33, n35, n36, n38, n39, n41,
         n42, n44, n45, n46, n48, n49, n50, n52, n53, n56, n57, n59, n60, n62,
         n63, n65, n66, n68, n69, n71, n72, n74, n75, n77, n78, n80, n81, n83,
         n84, n86, n87, n89, n90, n92, n93, n95, n96, n98, n99, n101, n102,
         n104, n105, n107, n108, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n174, n175, n176, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414;
  wire   [31:0] Acc;
  wire   [31:0] Q_reg;
  wire   [5:0] count;
  wire   [31:0] M_reg;
  wire   [64:33] case_add;
  wire   [64:33] case_sub;

  DLH_X1 \M_reg_reg[31]  ( .G(n383), .D(M[31]), .Q(M_reg[31]) );
  DLH_X1 \M_reg_reg[30]  ( .G(n383), .D(M[30]), .Q(M_reg[30]) );
  DLH_X1 \M_reg_reg[29]  ( .G(n383), .D(M[29]), .Q(M_reg[29]) );
  DLH_X1 \M_reg_reg[28]  ( .G(n383), .D(M[28]), .Q(M_reg[28]) );
  DLH_X1 \M_reg_reg[27]  ( .G(n383), .D(M[27]), .Q(M_reg[27]) );
  DLH_X1 \M_reg_reg[26]  ( .G(n383), .D(M[26]), .Q(M_reg[26]) );
  DLH_X1 \M_reg_reg[25]  ( .G(n383), .D(M[25]), .Q(M_reg[25]) );
  DLH_X1 \M_reg_reg[24]  ( .G(n383), .D(M[24]), .Q(M_reg[24]) );
  DLH_X1 \M_reg_reg[23]  ( .G(n383), .D(M[23]), .Q(M_reg[23]) );
  DLH_X1 \M_reg_reg[22]  ( .G(n383), .D(M[22]), .Q(M_reg[22]) );
  DLH_X1 \M_reg_reg[21]  ( .G(n383), .D(M[21]), .Q(M_reg[21]) );
  DLH_X1 \M_reg_reg[20]  ( .G(n383), .D(M[20]), .Q(M_reg[20]) );
  DLH_X1 \M_reg_reg[19]  ( .G(n383), .D(M[19]), .Q(M_reg[19]) );
  DLH_X1 \M_reg_reg[18]  ( .G(n383), .D(M[18]), .Q(M_reg[18]) );
  DLH_X1 \M_reg_reg[17]  ( .G(n383), .D(M[17]), .Q(M_reg[17]) );
  DLH_X1 \M_reg_reg[16]  ( .G(n383), .D(M[16]), .Q(M_reg[16]) );
  DLH_X1 \M_reg_reg[15]  ( .G(n383), .D(M[15]), .Q(M_reg[15]) );
  DLH_X1 \M_reg_reg[14]  ( .G(n383), .D(M[14]), .Q(M_reg[14]) );
  DLH_X1 \M_reg_reg[13]  ( .G(n383), .D(M[13]), .Q(M_reg[13]) );
  DLH_X1 \M_reg_reg[12]  ( .G(n383), .D(M[12]), .Q(M_reg[12]) );
  DLH_X1 \M_reg_reg[11]  ( .G(n383), .D(M[11]), .Q(M_reg[11]) );
  DLH_X1 \M_reg_reg[10]  ( .G(n383), .D(M[10]), .Q(M_reg[10]) );
  DLH_X1 \M_reg_reg[9]  ( .G(n383), .D(M[9]), .Q(M_reg[9]) );
  DLH_X1 \M_reg_reg[8]  ( .G(n382), .D(M[8]), .Q(M_reg[8]) );
  DLH_X1 \M_reg_reg[7]  ( .G(n382), .D(M[7]), .Q(M_reg[7]) );
  DLH_X1 \M_reg_reg[6]  ( .G(n382), .D(M[6]), .Q(M_reg[6]) );
  DLH_X1 \M_reg_reg[5]  ( .G(n382), .D(M[5]), .Q(M_reg[5]) );
  DLH_X1 \M_reg_reg[4]  ( .G(n382), .D(M[4]), .Q(M_reg[4]) );
  DLH_X1 \M_reg_reg[3]  ( .G(n382), .D(M[3]), .Q(M_reg[3]) );
  DLH_X1 \M_reg_reg[2]  ( .G(n382), .D(M[2]), .Q(M_reg[2]) );
  DLH_X1 \M_reg_reg[1]  ( .G(n382), .D(M[1]), .Q(M_reg[1]) );
  DLH_X1 \M_reg_reg[0]  ( .G(n382), .D(M[0]), .Q(M_reg[0]) );
  DFFR_X1 \P_reg[32]  ( .D(Acc[1]), .CK(oClk), .RN(n338), .Q(P[32]) );
  DFFR_X1 \P_reg[63]  ( .D(Acc[31]), .CK(oClk), .RN(n338), .Q(P[63]) );
  DFFR_X1 \P_reg[62]  ( .D(Acc[31]), .CK(oClk), .RN(n338), .Q(P[62]) );
  DFFR_X1 \P_reg[60]  ( .D(Acc[29]), .CK(oClk), .RN(n337), .Q(P[60]) );
  DFFR_X1 \P_reg[59]  ( .D(Acc[28]), .CK(oClk), .RN(n337), .Q(P[59]) );
  DFFR_X1 \P_reg[58]  ( .D(Acc[27]), .CK(oClk), .RN(n337), .Q(P[58]) );
  DFFR_X1 \P_reg[57]  ( .D(Acc[26]), .CK(oClk), .RN(n337), .Q(P[57]) );
  DFFR_X1 \P_reg[56]  ( .D(Acc[25]), .CK(oClk), .RN(n337), .Q(P[56]) );
  DFFR_X1 \P_reg[55]  ( .D(Acc[24]), .CK(oClk), .RN(n337), .Q(P[55]) );
  DFFR_X1 \P_reg[54]  ( .D(Acc[23]), .CK(oClk), .RN(n337), .Q(P[54]) );
  DFFR_X1 \P_reg[53]  ( .D(Acc[22]), .CK(oClk), .RN(n337), .Q(P[53]) );
  DFFR_X1 \P_reg[52]  ( .D(Acc[21]), .CK(oClk), .RN(n337), .Q(P[52]) );
  DFFR_X1 \P_reg[51]  ( .D(Acc[20]), .CK(oClk), .RN(n337), .Q(P[51]) );
  DFFR_X1 \P_reg[50]  ( .D(Acc[19]), .CK(oClk), .RN(n337), .Q(P[50]) );
  DFFR_X1 \P_reg[49]  ( .D(Acc[18]), .CK(oClk), .RN(n336), .Q(P[49]) );
  DFFR_X1 \P_reg[48]  ( .D(Acc[17]), .CK(oClk), .RN(n336), .Q(P[48]) );
  DFFR_X1 \P_reg[47]  ( .D(Acc[16]), .CK(oClk), .RN(n336), .Q(P[47]) );
  DFFR_X1 \P_reg[46]  ( .D(Acc[15]), .CK(oClk), .RN(n336), .Q(P[46]) );
  DFFR_X1 \P_reg[45]  ( .D(Acc[14]), .CK(oClk), .RN(n336), .Q(P[45]) );
  DFFR_X1 \P_reg[44]  ( .D(Acc[13]), .CK(oClk), .RN(n336), .Q(P[44]) );
  DFFR_X1 \P_reg[43]  ( .D(Acc[12]), .CK(oClk), .RN(n336), .Q(P[43]) );
  DFFR_X1 \P_reg[42]  ( .D(Acc[11]), .CK(oClk), .RN(n336), .Q(P[42]) );
  DFFR_X1 \P_reg[41]  ( .D(Acc[10]), .CK(oClk), .RN(n336), .Q(P[41]) );
  DFFR_X1 \P_reg[40]  ( .D(Acc[9]), .CK(oClk), .RN(n336), .Q(P[40]) );
  DFFR_X1 \P_reg[39]  ( .D(Acc[8]), .CK(oClk), .RN(n336), .Q(P[39]) );
  DFFR_X1 \P_reg[38]  ( .D(Acc[7]), .CK(oClk), .RN(n336), .Q(P[38]) );
  DFFR_X1 \P_reg[37]  ( .D(Acc[6]), .CK(oClk), .RN(n335), .Q(P[37]) );
  DFFR_X1 \P_reg[36]  ( .D(Acc[5]), .CK(oClk), .RN(n335), .Q(P[36]) );
  DFFR_X1 \P_reg[35]  ( .D(Acc[4]), .CK(oClk), .RN(n335), .Q(P[35]) );
  DFFR_X1 \P_reg[34]  ( .D(Acc[3]), .CK(oClk), .RN(n335), .Q(P[34]) );
  DFFR_X1 \P_reg[33]  ( .D(Acc[2]), .CK(oClk), .RN(n335), .Q(P[33]) );
  DFFR_X1 \P_reg[30]  ( .D(Q_reg[31]), .CK(oClk), .RN(n335), .Q(P[30]) );
  DFFR_X1 \P_reg[29]  ( .D(Q_reg[30]), .CK(oClk), .RN(n335), .Q(P[29]) );
  DFFR_X1 \P_reg[28]  ( .D(Q_reg[29]), .CK(oClk), .RN(n335), .Q(P[28]) );
  DFFR_X1 \P_reg[27]  ( .D(Q_reg[28]), .CK(oClk), .RN(n335), .Q(P[27]) );
  DFFR_X1 \P_reg[26]  ( .D(Q_reg[27]), .CK(oClk), .RN(n335), .Q(P[26]) );
  DFFR_X1 \P_reg[25]  ( .D(Q_reg[26]), .CK(oClk), .RN(n335), .Q(P[25]) );
  DFFR_X1 \P_reg[24]  ( .D(Q_reg[25]), .CK(oClk), .RN(n335), .Q(P[24]) );
  DFFR_X1 \P_reg[23]  ( .D(Q_reg[24]), .CK(oClk), .RN(n334), .Q(P[23]) );
  DFFR_X1 \P_reg[22]  ( .D(Q_reg[23]), .CK(oClk), .RN(n334), .Q(P[22]) );
  DFFR_X1 \P_reg[21]  ( .D(Q_reg[22]), .CK(oClk), .RN(n334), .Q(P[21]) );
  DFFR_X1 \P_reg[20]  ( .D(Q_reg[21]), .CK(oClk), .RN(n334), .Q(P[20]) );
  DFFR_X1 \P_reg[19]  ( .D(Q_reg[20]), .CK(oClk), .RN(n334), .Q(P[19]) );
  DFFR_X1 \P_reg[18]  ( .D(Q_reg[19]), .CK(oClk), .RN(n334), .Q(P[18]) );
  DFFR_X1 \P_reg[17]  ( .D(Q_reg[18]), .CK(oClk), .RN(n334), .Q(P[17]) );
  DFFR_X1 \P_reg[16]  ( .D(Q_reg[17]), .CK(oClk), .RN(n334), .Q(P[16]) );
  DFFR_X1 \P_reg[15]  ( .D(Q_reg[16]), .CK(oClk), .RN(n334), .Q(P[15]) );
  DFFR_X1 \P_reg[14]  ( .D(Q_reg[15]), .CK(oClk), .RN(n334), .Q(P[14]) );
  DFFR_X1 \P_reg[13]  ( .D(Q_reg[14]), .CK(oClk), .RN(n334), .Q(P[13]) );
  DFFR_X1 \P_reg[12]  ( .D(Q_reg[13]), .CK(oClk), .RN(n334), .Q(P[12]) );
  DFFR_X1 \P_reg[11]  ( .D(Q_reg[12]), .CK(oClk), .RN(n333), .Q(P[11]) );
  DFFR_X1 \P_reg[10]  ( .D(Q_reg[11]), .CK(oClk), .RN(n333), .Q(P[10]) );
  DFFR_X1 \P_reg[9]  ( .D(Q_reg[10]), .CK(oClk), .RN(n333), .Q(P[9]) );
  DFFR_X1 \P_reg[8]  ( .D(Q_reg[9]), .CK(oClk), .RN(n333), .Q(P[8]) );
  DFFR_X1 \P_reg[7]  ( .D(Q_reg[8]), .CK(oClk), .RN(n333), .Q(P[7]) );
  DFFR_X1 \P_reg[6]  ( .D(Q_reg[7]), .CK(oClk), .RN(n333), .Q(P[6]) );
  DFFR_X1 \P_reg[5]  ( .D(Q_reg[6]), .CK(oClk), .RN(n333), .Q(P[5]) );
  DFFR_X1 \P_reg[4]  ( .D(Q_reg[5]), .CK(oClk), .RN(n333), .Q(P[4]) );
  DFFR_X1 \P_reg[3]  ( .D(Q_reg[4]), .CK(oClk), .RN(n333), .Q(P[3]) );
  DFFR_X1 \P_reg[2]  ( .D(Q_reg[3]), .CK(oClk), .RN(n333), .Q(P[2]) );
  DFFR_X1 \P_reg[1]  ( .D(Q_reg[2]), .CK(oClk), .RN(n333), .Q(P[1]) );
  DFFR_X1 \P_reg[0]  ( .D(Q_reg[1]), .CK(oClk), .RN(n333), .Q(P[0]) );
  DFFS_X1 \count_reg[0]  ( .D(n323), .CK(clk), .SN(n403), .Q(count[0]), .QN(
        n187) );
  DFFR_X1 \count_reg[5]  ( .D(n322), .CK(clk), .RN(n390), .Q(count[5]), .QN(
        n186) );
  DFFS_X1 \count_reg[1]  ( .D(n321), .CK(clk), .SN(n403), .Q(count[1]), .QN(
        n185) );
  DFFS_X1 \count_reg[2]  ( .D(n320), .CK(clk), .SN(n402), .Q(count[2]), .QN(
        n184) );
  DFFS_X1 \count_reg[3]  ( .D(n319), .CK(clk), .SN(n403), .Q(count[3]), .QN(
        n183) );
  DFFS_X1 \count_reg[4]  ( .D(n318), .CK(clk), .SN(n402), .Q(count[4]), .QN(
        n182) );
  DFFR_X1 Q_prev_reg ( .D(n316), .CK(clk), .RN(n384), .Q(n179), .QN(n325) );
  DFFR_X1 \Acc_reg[1]  ( .D(n315), .CK(clk), .RN(n391), .Q(Acc[1]) );
  DFFR_X1 \Acc_reg[0]  ( .D(n314), .CK(clk), .RN(n389), .Q(Acc[0]), .QN(n176)
         );
  DFFR_X1 \Acc_reg[29]  ( .D(n311), .CK(clk), .RN(n393), .Q(Acc[29]) );
  DFFR_X1 \Acc_reg[28]  ( .D(n310), .CK(clk), .RN(n386), .Q(Acc[28]) );
  DFFR_X1 \Acc_reg[27]  ( .D(n309), .CK(clk), .RN(n393), .Q(Acc[27]) );
  DFFR_X1 \Acc_reg[26]  ( .D(n308), .CK(clk), .RN(n386), .Q(Acc[26]) );
  DFFR_X1 \Acc_reg[25]  ( .D(n307), .CK(clk), .RN(n392), .Q(Acc[25]) );
  DFFR_X1 \Acc_reg[24]  ( .D(n306), .CK(clk), .RN(n386), .Q(Acc[24]) );
  DFFR_X1 \Acc_reg[23]  ( .D(n305), .CK(clk), .RN(n392), .Q(Acc[23]) );
  DFFR_X1 \Acc_reg[22]  ( .D(n304), .CK(clk), .RN(n387), .Q(Acc[22]) );
  DFFR_X1 \Acc_reg[21]  ( .D(n303), .CK(clk), .RN(n392), .Q(Acc[21]) );
  DFFR_X1 \Acc_reg[20]  ( .D(n302), .CK(clk), .RN(n387), .Q(Acc[20]) );
  DFFR_X1 \Acc_reg[19]  ( .D(n301), .CK(clk), .RN(n387), .Q(Acc[19]) );
  DFFR_X1 \Acc_reg[18]  ( .D(n300), .CK(clk), .RN(n391), .Q(Acc[18]) );
  DFFR_X1 \Acc_reg[17]  ( .D(n299), .CK(clk), .RN(n388), .Q(Acc[17]) );
  DFFR_X1 \Acc_reg[16]  ( .D(n298), .CK(clk), .RN(n391), .Q(Acc[16]) );
  DFFR_X1 \Acc_reg[15]  ( .D(n297), .CK(clk), .RN(n388), .Q(Acc[15]) );
  DFFR_X1 \Acc_reg[14]  ( .D(n296), .CK(clk), .RN(n390), .Q(Acc[14]) );
  DFFR_X1 \Acc_reg[13]  ( .D(n295), .CK(clk), .RN(n388), .Q(Acc[13]) );
  DFFR_X1 \Acc_reg[12]  ( .D(n294), .CK(clk), .RN(n390), .Q(Acc[12]) );
  DFFR_X1 \Acc_reg[11]  ( .D(n293), .CK(clk), .RN(n389), .Q(Acc[11]) );
  DFFR_X1 \Acc_reg[10]  ( .D(n292), .CK(clk), .RN(n389), .Q(Acc[10]) );
  DFFR_X1 \Acc_reg[9]  ( .D(n291), .CK(clk), .RN(n395), .Q(Acc[9]) );
  DFFR_X1 \Acc_reg[8]  ( .D(n290), .CK(clk), .RN(n384), .Q(Acc[8]) );
  DFFR_X1 \Acc_reg[7]  ( .D(n289), .CK(clk), .RN(n394), .Q(Acc[7]) );
  DFFR_X1 \Acc_reg[6]  ( .D(n288), .CK(clk), .RN(n384), .Q(Acc[6]) );
  DFFR_X1 \Acc_reg[5]  ( .D(n287), .CK(clk), .RN(n394), .Q(Acc[5]) );
  DFFR_X1 \Acc_reg[4]  ( .D(n286), .CK(clk), .RN(n385), .Q(Acc[4]) );
  DFFR_X1 \Acc_reg[3]  ( .D(n285), .CK(clk), .RN(n394), .Q(Acc[3]) );
  DFFR_X1 \Acc_reg[2]  ( .D(n284), .CK(clk), .RN(n385), .Q(Acc[2]) );
  XOR2_X1 U247 ( .A(n180), .B(n179), .Z(n46) );
  BoothMultiplier_DW01_sub_0 sub_61 ( .A({Acc[31:1], n329}), .B(M_reg), .CI(
        1'b0), .DIFF(case_sub) );
  BoothMultiplier_DW01_add_0 add_57 ( .A(Acc), .B(M_reg), .CI(1'b0), .SUM(
        case_add) );
  DFFRS_X1 \Q_reg_reg[0]  ( .D(n317), .CK(clk), .RN(n251), .SN(n250), .QN(n180) );
  DFFRS_X1 \Q_reg_reg[31]  ( .D(n283), .CK(clk), .RN(n249), .SN(n248), .Q(
        Q_reg[31]), .QN(n146) );
  DFFRS_X1 \Q_reg_reg[30]  ( .D(n282), .CK(clk), .RN(n247), .SN(n246), .Q(
        Q_reg[30]), .QN(n145) );
  DFFRS_X1 \Q_reg_reg[29]  ( .D(n281), .CK(clk), .RN(n245), .SN(n244), .Q(
        Q_reg[29]), .QN(n144) );
  DFFRS_X1 \Q_reg_reg[28]  ( .D(n280), .CK(clk), .RN(n243), .SN(n242), .Q(
        Q_reg[28]), .QN(n143) );
  DFFRS_X1 \Q_reg_reg[27]  ( .D(n279), .CK(clk), .RN(n241), .SN(n240), .Q(
        Q_reg[27]), .QN(n142) );
  DFFRS_X1 \Q_reg_reg[26]  ( .D(n278), .CK(clk), .RN(n239), .SN(n238), .Q(
        Q_reg[26]), .QN(n141) );
  DFFRS_X1 \Q_reg_reg[25]  ( .D(n277), .CK(clk), .RN(n237), .SN(n236), .Q(
        Q_reg[25]), .QN(n140) );
  DFFRS_X1 \Q_reg_reg[24]  ( .D(n276), .CK(clk), .RN(n235), .SN(n234), .Q(
        Q_reg[24]), .QN(n139) );
  DFFRS_X1 \Q_reg_reg[23]  ( .D(n275), .CK(clk), .RN(n233), .SN(n232), .Q(
        Q_reg[23]), .QN(n138) );
  DFFRS_X1 \Q_reg_reg[22]  ( .D(n274), .CK(clk), .RN(n231), .SN(n230), .Q(
        Q_reg[22]), .QN(n137) );
  DFFRS_X1 \Q_reg_reg[21]  ( .D(n273), .CK(clk), .RN(n229), .SN(n228), .Q(
        Q_reg[21]), .QN(n136) );
  DFFRS_X1 \Q_reg_reg[20]  ( .D(n272), .CK(clk), .RN(n227), .SN(n226), .Q(
        Q_reg[20]), .QN(n135) );
  DFFRS_X1 \Q_reg_reg[19]  ( .D(n271), .CK(clk), .RN(n225), .SN(n224), .Q(
        Q_reg[19]), .QN(n134) );
  DFFRS_X1 \Q_reg_reg[18]  ( .D(n270), .CK(clk), .RN(n223), .SN(n222), .Q(
        Q_reg[18]), .QN(n133) );
  DFFRS_X1 \Q_reg_reg[17]  ( .D(n269), .CK(clk), .RN(n221), .SN(n220), .Q(
        Q_reg[17]), .QN(n132) );
  DFFRS_X1 \Q_reg_reg[16]  ( .D(n268), .CK(clk), .RN(n219), .SN(n218), .Q(
        Q_reg[16]), .QN(n131) );
  DFFRS_X1 \Q_reg_reg[15]  ( .D(n267), .CK(clk), .RN(n217), .SN(n216), .Q(
        Q_reg[15]), .QN(n130) );
  DFFRS_X1 \Q_reg_reg[14]  ( .D(n266), .CK(clk), .RN(n215), .SN(n214), .Q(
        Q_reg[14]), .QN(n129) );
  DFFRS_X1 \Q_reg_reg[13]  ( .D(n265), .CK(clk), .RN(n213), .SN(n212), .Q(
        Q_reg[13]), .QN(n128) );
  DFFRS_X1 \Q_reg_reg[12]  ( .D(n264), .CK(clk), .RN(n211), .SN(n210), .Q(
        Q_reg[12]), .QN(n127) );
  DFFRS_X1 \Q_reg_reg[11]  ( .D(n263), .CK(clk), .RN(n209), .SN(n208), .Q(
        Q_reg[11]), .QN(n126) );
  DFFRS_X1 \Q_reg_reg[10]  ( .D(n262), .CK(clk), .RN(n207), .SN(n206), .Q(
        Q_reg[10]), .QN(n125) );
  DFFRS_X1 \Q_reg_reg[9]  ( .D(n261), .CK(clk), .RN(n205), .SN(n204), .Q(
        Q_reg[9]), .QN(n124) );
  DFFRS_X1 \Q_reg_reg[8]  ( .D(n260), .CK(clk), .RN(n203), .SN(n202), .Q(
        Q_reg[8]), .QN(n123) );
  DFFRS_X1 \Q_reg_reg[7]  ( .D(n259), .CK(clk), .RN(n201), .SN(n200), .Q(
        Q_reg[7]), .QN(n122) );
  DFFRS_X1 \Q_reg_reg[6]  ( .D(n258), .CK(clk), .RN(n199), .SN(n198), .Q(
        Q_reg[6]), .QN(n121) );
  DFFRS_X1 \Q_reg_reg[5]  ( .D(n257), .CK(clk), .RN(n197), .SN(n196), .Q(
        Q_reg[5]), .QN(n120) );
  DFFRS_X1 \Q_reg_reg[4]  ( .D(n256), .CK(clk), .RN(n195), .SN(n194), .Q(
        Q_reg[4]), .QN(n119) );
  DFFRS_X1 \Q_reg_reg[3]  ( .D(n255), .CK(clk), .RN(n193), .SN(n192), .Q(
        Q_reg[3]), .QN(n118) );
  DFFRS_X1 \Q_reg_reg[2]  ( .D(n254), .CK(clk), .RN(n191), .SN(n190), .Q(
        Q_reg[2]), .QN(n117) );
  DFFRS_X1 \Q_reg_reg[1]  ( .D(n253), .CK(clk), .RN(n189), .SN(n188), .Q(
        Q_reg[1]), .QN(n181) );
  DFFR_X1 \P_reg[31]  ( .D(n414), .CK(oClk), .RN(n338), .Q(P[31]) );
  DFFR_X1 \P_reg[61]  ( .D(Acc[30]), .CK(oClk), .RN(n337), .Q(P[61]) );
  DFFR_X1 \Acc_reg[30]  ( .D(n312), .CK(clk), .RN(n393), .Q(Acc[30]), .QN(n174) );
  DFFR_X1 \Acc_reg[31]  ( .D(n313), .CK(clk), .RN(n385), .Q(Acc[31]), .QN(n175) );
  AND2_X1 U253 ( .A1(n327), .A2(n328), .ZN(n326) );
  NAND2_X1 U254 ( .A1(n44), .A2(n326), .ZN(n312) );
  OR2_X1 U255 ( .A1(n175), .A2(n48), .ZN(n327) );
  OR2_X1 U256 ( .A1(n174), .A2(n373), .ZN(n328) );
  INV_X1 U257 ( .A(n374), .ZN(n356) );
  INV_X1 U258 ( .A(n375), .ZN(n358) );
  INV_X1 U259 ( .A(n374), .ZN(n357) );
  BUF_X1 U260 ( .A(n413), .Z(n341) );
  BUF_X1 U261 ( .A(n413), .Z(n339) );
  BUF_X1 U262 ( .A(n413), .Z(n340) );
  BUF_X1 U263 ( .A(n353), .Z(n374) );
  BUF_X1 U264 ( .A(n353), .Z(n375) );
  BUF_X1 U265 ( .A(n348), .Z(n359) );
  BUF_X1 U266 ( .A(n348), .Z(n360) );
  BUF_X1 U267 ( .A(n348), .Z(n361) );
  BUF_X1 U268 ( .A(n349), .Z(n362) );
  BUF_X1 U269 ( .A(n352), .Z(n371) );
  BUF_X1 U270 ( .A(n352), .Z(n372) );
  BUF_X1 U271 ( .A(n349), .Z(n364) );
  BUF_X1 U272 ( .A(n350), .Z(n365) );
  BUF_X1 U273 ( .A(n350), .Z(n366) );
  BUF_X1 U274 ( .A(n350), .Z(n367) );
  BUF_X1 U275 ( .A(n351), .Z(n368) );
  BUF_X1 U276 ( .A(n351), .Z(n369) );
  BUF_X1 U277 ( .A(n351), .Z(n370) );
  BUF_X1 U278 ( .A(n349), .Z(n363) );
  BUF_X1 U279 ( .A(n352), .Z(n373) );
  INV_X1 U280 ( .A(n48), .ZN(n413) );
  BUF_X1 U281 ( .A(n354), .Z(n353) );
  BUF_X1 U282 ( .A(n355), .Z(n348) );
  BUF_X1 U283 ( .A(n355), .Z(n350) );
  BUF_X1 U284 ( .A(n354), .Z(n351) );
  BUF_X1 U285 ( .A(n354), .Z(n352) );
  BUF_X1 U286 ( .A(n355), .Z(n349) );
  INV_X1 U287 ( .A(n401), .ZN(n381) );
  INV_X1 U288 ( .A(n401), .ZN(n380) );
  INV_X1 U289 ( .A(n401), .ZN(n382) );
  NAND2_X1 U290 ( .A1(n80), .A2(n81), .ZN(n302) );
  AOI22_X1 U291 ( .A1(case_add[54]), .A2(n343), .B1(n358), .B2(Acc[20]), .ZN(
        n80) );
  AOI22_X1 U292 ( .A1(n340), .A2(Acc[21]), .B1(case_sub[54]), .B2(n346), .ZN(
        n81) );
  NAND2_X1 U293 ( .A1(n56), .A2(n57), .ZN(n310) );
  AOI22_X1 U294 ( .A1(case_add[62]), .A2(n343), .B1(n358), .B2(Acc[28]), .ZN(
        n56) );
  AOI22_X1 U295 ( .A1(n340), .A2(Acc[29]), .B1(case_sub[62]), .B2(n346), .ZN(
        n57) );
  NAND2_X1 U296 ( .A1(n65), .A2(n66), .ZN(n307) );
  AOI22_X1 U297 ( .A1(case_add[59]), .A2(n343), .B1(n358), .B2(Acc[25]), .ZN(
        n65) );
  AOI22_X1 U298 ( .A1(n340), .A2(Acc[26]), .B1(case_sub[59]), .B2(n346), .ZN(
        n66) );
  NAND2_X1 U299 ( .A1(n62), .A2(n63), .ZN(n308) );
  AOI22_X1 U300 ( .A1(case_add[60]), .A2(n343), .B1(n358), .B2(Acc[26]), .ZN(
        n62) );
  AOI22_X1 U301 ( .A1(n340), .A2(Acc[27]), .B1(case_sub[60]), .B2(n346), .ZN(
        n63) );
  NAND2_X1 U302 ( .A1(n59), .A2(n60), .ZN(n309) );
  AOI22_X1 U303 ( .A1(case_add[61]), .A2(n343), .B1(n358), .B2(Acc[27]), .ZN(
        n59) );
  AOI22_X1 U304 ( .A1(n340), .A2(Acc[28]), .B1(case_sub[61]), .B2(n346), .ZN(
        n60) );
  NAND2_X1 U305 ( .A1(n98), .A2(n99), .ZN(n297) );
  AOI22_X1 U306 ( .A1(case_add[49]), .A2(n342), .B1(n358), .B2(Acc[15]), .ZN(
        n98) );
  AOI22_X1 U307 ( .A1(n339), .A2(Acc[16]), .B1(case_sub[49]), .B2(n345), .ZN(
        n99) );
  NAND2_X1 U308 ( .A1(n95), .A2(n96), .ZN(n298) );
  AOI22_X1 U309 ( .A1(case_add[50]), .A2(n342), .B1(n358), .B2(Acc[16]), .ZN(
        n95) );
  AOI22_X1 U310 ( .A1(n339), .A2(Acc[17]), .B1(case_sub[50]), .B2(n345), .ZN(
        n96) );
  NAND2_X1 U311 ( .A1(n92), .A2(n93), .ZN(n299) );
  AOI22_X1 U312 ( .A1(case_add[51]), .A2(n342), .B1(n358), .B2(Acc[17]), .ZN(
        n92) );
  AOI22_X1 U313 ( .A1(n339), .A2(Acc[18]), .B1(case_sub[51]), .B2(n345), .ZN(
        n93) );
  NAND2_X1 U314 ( .A1(n89), .A2(n90), .ZN(n300) );
  AOI22_X1 U315 ( .A1(case_add[52]), .A2(n342), .B1(n356), .B2(Acc[18]), .ZN(
        n89) );
  AOI22_X1 U316 ( .A1(n339), .A2(Acc[19]), .B1(case_sub[52]), .B2(n345), .ZN(
        n90) );
  NAND2_X1 U317 ( .A1(n86), .A2(n87), .ZN(n301) );
  AOI22_X1 U318 ( .A1(case_add[53]), .A2(n342), .B1(n358), .B2(Acc[19]), .ZN(
        n86) );
  AOI22_X1 U319 ( .A1(n339), .A2(Acc[20]), .B1(case_sub[53]), .B2(n345), .ZN(
        n87) );
  NAND2_X1 U320 ( .A1(n77), .A2(n78), .ZN(n303) );
  AOI22_X1 U321 ( .A1(case_add[55]), .A2(n343), .B1(n356), .B2(Acc[21]), .ZN(
        n77) );
  AOI22_X1 U322 ( .A1(n340), .A2(Acc[22]), .B1(case_sub[55]), .B2(n346), .ZN(
        n78) );
  NAND2_X1 U323 ( .A1(n74), .A2(n75), .ZN(n304) );
  AOI22_X1 U324 ( .A1(case_add[56]), .A2(n343), .B1(n358), .B2(Acc[22]), .ZN(
        n74) );
  AOI22_X1 U325 ( .A1(n340), .A2(Acc[23]), .B1(case_sub[56]), .B2(n346), .ZN(
        n75) );
  NAND2_X1 U326 ( .A1(n71), .A2(n72), .ZN(n305) );
  AOI22_X1 U327 ( .A1(case_add[57]), .A2(n343), .B1(n356), .B2(Acc[23]), .ZN(
        n71) );
  AOI22_X1 U328 ( .A1(n340), .A2(Acc[24]), .B1(case_sub[57]), .B2(n346), .ZN(
        n72) );
  NAND2_X1 U329 ( .A1(n68), .A2(n69), .ZN(n306) );
  AOI22_X1 U330 ( .A1(case_add[58]), .A2(n343), .B1(n358), .B2(Acc[24]), .ZN(
        n68) );
  AOI22_X1 U331 ( .A1(n340), .A2(Acc[25]), .B1(case_sub[58]), .B2(n346), .ZN(
        n69) );
  BUF_X1 U332 ( .A(n18), .Z(n347) );
  BUF_X1 U333 ( .A(n19), .Z(n344) );
  BUF_X1 U334 ( .A(n19), .Z(n342) );
  BUF_X1 U335 ( .A(n18), .Z(n345) );
  BUF_X1 U336 ( .A(n19), .Z(n343) );
  BUF_X1 U337 ( .A(n18), .Z(n346) );
  NAND2_X1 U338 ( .A1(n374), .A2(n46), .ZN(n48) );
  BUF_X1 U339 ( .A(N4), .Z(n354) );
  AOI22_X1 U340 ( .A1(case_add[34]), .A2(n343), .B1(n358), .B2(n414), .ZN(n115) );
  AOI22_X1 U341 ( .A1(n339), .A2(Acc[1]), .B1(case_sub[34]), .B2(n346), .ZN(
        n116) );
  NAND2_X1 U342 ( .A1(n49), .A2(n50), .ZN(n284) );
  AOI22_X1 U343 ( .A1(case_add[36]), .A2(n344), .B1(n358), .B2(Acc[2]), .ZN(
        n49) );
  AOI22_X1 U344 ( .A1(n340), .A2(Acc[3]), .B1(case_sub[36]), .B2(n346), .ZN(
        n50) );
  NAND2_X1 U345 ( .A1(n41), .A2(n42), .ZN(n285) );
  AOI22_X1 U346 ( .A1(case_add[37]), .A2(n344), .B1(n358), .B2(Acc[3]), .ZN(
        n41) );
  AOI22_X1 U347 ( .A1(n340), .A2(Acc[4]), .B1(case_sub[37]), .B2(n347), .ZN(
        n42) );
  NAND2_X1 U348 ( .A1(n38), .A2(n39), .ZN(n286) );
  AOI22_X1 U349 ( .A1(case_add[38]), .A2(n344), .B1(n358), .B2(Acc[4]), .ZN(
        n38) );
  AOI22_X1 U350 ( .A1(n341), .A2(Acc[5]), .B1(case_sub[38]), .B2(n347), .ZN(
        n39) );
  NAND2_X1 U351 ( .A1(n35), .A2(n36), .ZN(n287) );
  AOI22_X1 U352 ( .A1(case_add[39]), .A2(n344), .B1(n358), .B2(Acc[5]), .ZN(
        n35) );
  AOI22_X1 U353 ( .A1(n341), .A2(Acc[6]), .B1(case_sub[39]), .B2(n347), .ZN(
        n36) );
  NAND2_X1 U354 ( .A1(n32), .A2(n33), .ZN(n288) );
  AOI22_X1 U355 ( .A1(case_add[40]), .A2(n344), .B1(n358), .B2(Acc[6]), .ZN(
        n32) );
  AOI22_X1 U356 ( .A1(n341), .A2(Acc[7]), .B1(case_sub[40]), .B2(n347), .ZN(
        n33) );
  NAND2_X1 U357 ( .A1(n29), .A2(n30), .ZN(n289) );
  AOI22_X1 U358 ( .A1(case_add[41]), .A2(n344), .B1(n358), .B2(Acc[7]), .ZN(
        n29) );
  AOI22_X1 U359 ( .A1(n341), .A2(Acc[8]), .B1(case_sub[41]), .B2(n347), .ZN(
        n30) );
  NAND2_X1 U360 ( .A1(n26), .A2(n27), .ZN(n290) );
  AOI22_X1 U361 ( .A1(case_add[42]), .A2(n344), .B1(n358), .B2(Acc[8]), .ZN(
        n26) );
  AOI22_X1 U362 ( .A1(n341), .A2(Acc[9]), .B1(case_sub[42]), .B2(n347), .ZN(
        n27) );
  NAND2_X1 U363 ( .A1(n22), .A2(n23), .ZN(n291) );
  AOI22_X1 U364 ( .A1(case_add[43]), .A2(n344), .B1(n357), .B2(Acc[9]), .ZN(
        n22) );
  AOI22_X1 U365 ( .A1(n341), .A2(Acc[10]), .B1(case_sub[43]), .B2(n347), .ZN(
        n23) );
  NAND2_X1 U366 ( .A1(n113), .A2(n114), .ZN(n292) );
  AOI22_X1 U367 ( .A1(case_add[44]), .A2(n342), .B1(n358), .B2(Acc[10]), .ZN(
        n113) );
  AOI22_X1 U368 ( .A1(n339), .A2(Acc[11]), .B1(case_sub[44]), .B2(n345), .ZN(
        n114) );
  NAND2_X1 U369 ( .A1(n110), .A2(n111), .ZN(n293) );
  AOI22_X1 U370 ( .A1(case_add[45]), .A2(n342), .B1(n358), .B2(Acc[11]), .ZN(
        n110) );
  AOI22_X1 U371 ( .A1(n339), .A2(Acc[12]), .B1(case_sub[45]), .B2(n345), .ZN(
        n111) );
  NAND2_X1 U372 ( .A1(n107), .A2(n108), .ZN(n294) );
  AOI22_X1 U373 ( .A1(case_add[46]), .A2(n342), .B1(n356), .B2(Acc[12]), .ZN(
        n107) );
  AOI22_X1 U374 ( .A1(n339), .A2(Acc[13]), .B1(case_sub[46]), .B2(n345), .ZN(
        n108) );
  NAND2_X1 U375 ( .A1(n104), .A2(n105), .ZN(n295) );
  AOI22_X1 U376 ( .A1(case_add[47]), .A2(n342), .B1(n358), .B2(Acc[13]), .ZN(
        n104) );
  AOI22_X1 U377 ( .A1(n339), .A2(Acc[14]), .B1(case_sub[47]), .B2(n345), .ZN(
        n105) );
  NAND2_X1 U378 ( .A1(n101), .A2(n102), .ZN(n296) );
  AOI22_X1 U379 ( .A1(case_add[48]), .A2(n342), .B1(n356), .B2(Acc[14]), .ZN(
        n101) );
  AOI22_X1 U380 ( .A1(n339), .A2(Acc[15]), .B1(case_sub[48]), .B2(n345), .ZN(
        n102) );
  NAND2_X1 U381 ( .A1(n83), .A2(n84), .ZN(n315) );
  AOI22_X1 U382 ( .A1(case_add[35]), .A2(n343), .B1(n358), .B2(Acc[1]), .ZN(
        n83) );
  AOI22_X1 U383 ( .A1(n339), .A2(Acc[2]), .B1(case_sub[35]), .B2(n345), .ZN(
        n84) );
  BUF_X1 U384 ( .A(N4), .Z(n355) );
  INV_X1 U385 ( .A(n406), .ZN(n410) );
  INV_X1 U386 ( .A(n405), .ZN(n409) );
  INV_X1 U387 ( .A(n404), .ZN(n408) );
  OAI21_X1 U388 ( .B1(n357), .B2(n46), .A(Acc[31]), .ZN(n45) );
  NAND2_X1 U389 ( .A1(n52), .A2(n53), .ZN(n311) );
  AOI22_X1 U390 ( .A1(case_add[63]), .A2(n343), .B1(n358), .B2(Acc[29]), .ZN(
        n52) );
  NOR3_X1 U391 ( .A1(n180), .A2(n179), .A3(n357), .ZN(n18) );
  OAI22_X1 U392 ( .A1(n125), .A2(n356), .B1(n124), .B2(n373), .ZN(n261) );
  OAI22_X1 U393 ( .A1(n117), .A2(n356), .B1(n181), .B2(n366), .ZN(n253) );
  OAI22_X1 U394 ( .A1(n118), .A2(n357), .B1(n117), .B2(n370), .ZN(n254) );
  OAI22_X1 U395 ( .A1(n119), .A2(n357), .B1(n118), .B2(n371), .ZN(n255) );
  OAI22_X1 U396 ( .A1(n120), .A2(n357), .B1(n119), .B2(n371), .ZN(n256) );
  OAI22_X1 U397 ( .A1(n121), .A2(n357), .B1(n120), .B2(n371), .ZN(n257) );
  OAI22_X1 U398 ( .A1(n122), .A2(n357), .B1(n121), .B2(n372), .ZN(n258) );
  OAI22_X1 U399 ( .A1(n123), .A2(n357), .B1(n122), .B2(n372), .ZN(n259) );
  OAI22_X1 U400 ( .A1(n124), .A2(n357), .B1(n123), .B2(n372), .ZN(n260) );
  OAI22_X1 U401 ( .A1(n126), .A2(n356), .B1(n125), .B2(n364), .ZN(n262) );
  OAI22_X1 U402 ( .A1(n127), .A2(n356), .B1(n126), .B2(n363), .ZN(n263) );
  OAI22_X1 U403 ( .A1(n128), .A2(n356), .B1(n127), .B2(n364), .ZN(n264) );
  OAI22_X1 U404 ( .A1(n129), .A2(n356), .B1(n128), .B2(n363), .ZN(n265) );
  OAI22_X1 U405 ( .A1(n130), .A2(n356), .B1(n129), .B2(n364), .ZN(n266) );
  OAI22_X1 U406 ( .A1(n131), .A2(n356), .B1(n130), .B2(n365), .ZN(n267) );
  OAI22_X1 U407 ( .A1(n132), .A2(n356), .B1(n131), .B2(n365), .ZN(n268) );
  OAI22_X1 U408 ( .A1(n133), .A2(n356), .B1(n132), .B2(n369), .ZN(n269) );
  OAI22_X1 U409 ( .A1(n134), .A2(n356), .B1(n133), .B2(n365), .ZN(n270) );
  OAI22_X1 U410 ( .A1(n135), .A2(n356), .B1(n134), .B2(n366), .ZN(n271) );
  OAI22_X1 U411 ( .A1(n136), .A2(n356), .B1(n135), .B2(n366), .ZN(n272) );
  OAI22_X1 U412 ( .A1(n137), .A2(n356), .B1(n136), .B2(n367), .ZN(n273) );
  OAI22_X1 U413 ( .A1(n138), .A2(n356), .B1(n137), .B2(n367), .ZN(n274) );
  OAI22_X1 U414 ( .A1(n139), .A2(n356), .B1(n138), .B2(n367), .ZN(n275) );
  OAI22_X1 U415 ( .A1(n140), .A2(n356), .B1(n139), .B2(n368), .ZN(n276) );
  OAI22_X1 U416 ( .A1(n141), .A2(n358), .B1(n140), .B2(n368), .ZN(n277) );
  OAI22_X1 U417 ( .A1(n142), .A2(n358), .B1(n141), .B2(n368), .ZN(n278) );
  OAI22_X1 U418 ( .A1(n143), .A2(n356), .B1(n142), .B2(n369), .ZN(n279) );
  OAI22_X1 U419 ( .A1(n144), .A2(n356), .B1(n143), .B2(n369), .ZN(n280) );
  OAI22_X1 U420 ( .A1(n145), .A2(n358), .B1(n144), .B2(n370), .ZN(n281) );
  OAI22_X1 U421 ( .A1(n146), .A2(n357), .B1(n145), .B2(n370), .ZN(n282) );
  OAI22_X1 U422 ( .A1(n181), .A2(n356), .B1(n180), .B2(n363), .ZN(n317) );
  OAI22_X1 U423 ( .A1(n180), .A2(n356), .B1(n373), .B2(n325), .ZN(n316) );
  AND3_X1 U424 ( .A1(n179), .A2(n375), .A3(n180), .ZN(n19) );
  NAND2_X1 U425 ( .A1(n14), .A2(n15), .ZN(n283) );
  AOI22_X1 U426 ( .A1(case_add[33]), .A2(n342), .B1(n357), .B2(Q_reg[31]), 
        .ZN(n14) );
  AOI22_X1 U427 ( .A1(n341), .A2(n414), .B1(case_sub[33]), .B2(n345), .ZN(n15)
         );
  OAI21_X1 U428 ( .B1(n186), .B2(n361), .A(n7), .ZN(n322) );
  NAND2_X1 U429 ( .A1(N47), .A2(n359), .ZN(n7) );
  OAI21_X1 U430 ( .B1(n182), .B2(n361), .A(n8), .ZN(n318) );
  NAND2_X1 U431 ( .A1(N46), .A2(n359), .ZN(n8) );
  OAI21_X1 U432 ( .B1(n183), .B2(n361), .A(n9), .ZN(n319) );
  NAND2_X1 U433 ( .A1(N45), .A2(n359), .ZN(n9) );
  OAI21_X1 U434 ( .B1(n184), .B2(n362), .A(n10), .ZN(n320) );
  NAND2_X1 U435 ( .A1(N44), .A2(n360), .ZN(n10) );
  OAI21_X1 U436 ( .B1(n185), .B2(n362), .A(n11), .ZN(n321) );
  NAND2_X1 U437 ( .A1(N43), .A2(n360), .ZN(n11) );
  OAI21_X1 U438 ( .B1(n187), .B2(n362), .A(n12), .ZN(n323) );
  NAND2_X1 U439 ( .A1(n187), .A2(n360), .ZN(n12) );
  BUF_X1 U440 ( .A(rst), .Z(n378) );
  BUF_X1 U441 ( .A(rst), .Z(n376) );
  BUF_X1 U442 ( .A(rst), .Z(n377) );
  BUF_X1 U443 ( .A(rst), .Z(n379) );
  NAND2_X1 U444 ( .A1(Q[1]), .A2(n381), .ZN(n188) );
  NAND2_X1 U445 ( .A1(Q[2]), .A2(n380), .ZN(n190) );
  NAND2_X1 U446 ( .A1(Q[3]), .A2(n380), .ZN(n192) );
  NAND2_X1 U447 ( .A1(Q[4]), .A2(n380), .ZN(n194) );
  NAND2_X1 U448 ( .A1(Q[5]), .A2(n380), .ZN(n196) );
  NAND2_X1 U449 ( .A1(Q[6]), .A2(n380), .ZN(n198) );
  NAND2_X1 U450 ( .A1(Q[7]), .A2(n380), .ZN(n200) );
  NAND2_X1 U451 ( .A1(Q[8]), .A2(n380), .ZN(n202) );
  NAND2_X1 U452 ( .A1(Q[9]), .A2(n380), .ZN(n204) );
  NAND2_X1 U453 ( .A1(Q[17]), .A2(n381), .ZN(n220) );
  NAND2_X1 U454 ( .A1(Q[18]), .A2(n381), .ZN(n222) );
  NAND2_X1 U455 ( .A1(Q[19]), .A2(n381), .ZN(n224) );
  NAND2_X1 U456 ( .A1(Q[20]), .A2(n381), .ZN(n226) );
  NAND2_X1 U457 ( .A1(Q[21]), .A2(n381), .ZN(n228) );
  NAND2_X1 U458 ( .A1(Q[22]), .A2(n381), .ZN(n230) );
  NAND2_X1 U459 ( .A1(Q[23]), .A2(n381), .ZN(n232) );
  NAND2_X1 U460 ( .A1(Q[24]), .A2(n381), .ZN(n234) );
  NAND2_X1 U461 ( .A1(Q[25]), .A2(n381), .ZN(n236) );
  NAND2_X1 U462 ( .A1(Q[26]), .A2(n381), .ZN(n238) );
  NAND2_X1 U463 ( .A1(Q[27]), .A2(n381), .ZN(n240) );
  NAND2_X1 U464 ( .A1(Q[28]), .A2(n380), .ZN(n242) );
  NAND2_X1 U465 ( .A1(Q[29]), .A2(n380), .ZN(n244) );
  NAND2_X1 U466 ( .A1(Q[30]), .A2(n380), .ZN(n246) );
  NAND2_X1 U467 ( .A1(Q[31]), .A2(n380), .ZN(n248) );
  NAND2_X1 U468 ( .A1(Q[10]), .A2(n382), .ZN(n206) );
  NAND2_X1 U469 ( .A1(Q[11]), .A2(n382), .ZN(n208) );
  NAND2_X1 U470 ( .A1(Q[12]), .A2(n382), .ZN(n210) );
  NAND2_X1 U471 ( .A1(Q[13]), .A2(n382), .ZN(n212) );
  NAND2_X1 U472 ( .A1(Q[14]), .A2(n382), .ZN(n214) );
  NAND2_X1 U473 ( .A1(Q[15]), .A2(n382), .ZN(n216) );
  NAND2_X1 U474 ( .A1(Q[16]), .A2(n382), .ZN(n218) );
  NAND2_X1 U475 ( .A1(Q[0]), .A2(n382), .ZN(n250) );
  OR2_X1 U476 ( .A1(n402), .A2(Q[1]), .ZN(n189) );
  OR2_X1 U477 ( .A1(n400), .A2(Q[2]), .ZN(n191) );
  OR2_X1 U478 ( .A1(n398), .A2(Q[3]), .ZN(n193) );
  OR2_X1 U479 ( .A1(n399), .A2(Q[4]), .ZN(n195) );
  OR2_X1 U480 ( .A1(n399), .A2(Q[5]), .ZN(n197) );
  OR2_X1 U481 ( .A1(n399), .A2(Q[6]), .ZN(n199) );
  OR2_X1 U482 ( .A1(n400), .A2(Q[7]), .ZN(n201) );
  OR2_X1 U483 ( .A1(n400), .A2(Q[8]), .ZN(n203) );
  OR2_X1 U484 ( .A1(n400), .A2(Q[9]), .ZN(n205) );
  OR2_X1 U485 ( .A1(n396), .A2(Q[10]), .ZN(n207) );
  OR2_X1 U486 ( .A1(n396), .A2(Q[11]), .ZN(n209) );
  OR2_X1 U487 ( .A1(n396), .A2(Q[12]), .ZN(n211) );
  OR2_X1 U488 ( .A1(n397), .A2(Q[13]), .ZN(n213) );
  OR2_X1 U489 ( .A1(n397), .A2(Q[14]), .ZN(n215) );
  OR2_X1 U490 ( .A1(n397), .A2(Q[15]), .ZN(n217) );
  OR2_X1 U491 ( .A1(n398), .A2(Q[16]), .ZN(n219) );
  OR2_X1 U492 ( .A1(n398), .A2(Q[17]), .ZN(n221) );
  OR2_X1 U493 ( .A1(n398), .A2(Q[18]), .ZN(n223) );
  OR2_X1 U494 ( .A1(n401), .A2(Q[19]), .ZN(n225) );
  OR2_X1 U495 ( .A1(n395), .A2(Q[20]), .ZN(n227) );
  OR2_X1 U496 ( .A1(n399), .A2(Q[21]), .ZN(n229) );
  OR2_X1 U497 ( .A1(n395), .A2(Q[22]), .ZN(n231) );
  OR2_X1 U498 ( .A1(n403), .A2(Q[23]), .ZN(n233) );
  OR2_X1 U499 ( .A1(n397), .A2(Q[24]), .ZN(n235) );
  OR2_X1 U500 ( .A1(n395), .A2(Q[25]), .ZN(n237) );
  OR2_X1 U501 ( .A1(n396), .A2(Q[26]), .ZN(n239) );
  OR2_X1 U502 ( .A1(n400), .A2(Q[27]), .ZN(n241) );
  OR2_X1 U503 ( .A1(n399), .A2(Q[28]), .ZN(n243) );
  OR2_X1 U504 ( .A1(n398), .A2(Q[29]), .ZN(n245) );
  OR2_X1 U505 ( .A1(n397), .A2(Q[30]), .ZN(n247) );
  OR2_X1 U506 ( .A1(n396), .A2(Q[31]), .ZN(n249) );
  OR2_X1 U507 ( .A1(n395), .A2(Q[0]), .ZN(n251) );
  INV_X1 U508 ( .A(oRst), .ZN(n412) );
  AOI22_X1 U509 ( .A1(n340), .A2(Acc[30]), .B1(case_sub[63]), .B2(n346), .ZN(
        n53) );
  INV_X1 U510 ( .A(n176), .ZN(n414) );
  INV_X1 U511 ( .A(n176), .ZN(n329) );
  AOI22_X1 U512 ( .A1(case_sub[64]), .A2(n347), .B1(case_add[64]), .B2(n342), 
        .ZN(n330) );
  NAND2_X1 U513 ( .A1(n115), .A2(n116), .ZN(n314) );
  AOI22_X1 U514 ( .A1(case_sub[64]), .A2(n347), .B1(case_add[64]), .B2(n342), 
        .ZN(n44) );
  NAND2_X1 U515 ( .A1(n330), .A2(n45), .ZN(n313) );
  BUF_X1 U516 ( .A(n412), .Z(n331) );
  BUF_X1 U517 ( .A(n412), .Z(n332) );
  BUF_X1 U518 ( .A(n331), .Z(n333) );
  BUF_X1 U519 ( .A(n331), .Z(n334) );
  BUF_X1 U520 ( .A(n331), .Z(n335) );
  BUF_X1 U521 ( .A(n332), .Z(n336) );
  BUF_X1 U522 ( .A(n332), .Z(n337) );
  BUF_X1 U523 ( .A(n332), .Z(n338) );
  INV_X1 U524 ( .A(n402), .ZN(n383) );
  INV_X1 U525 ( .A(n376), .ZN(n384) );
  INV_X1 U526 ( .A(n376), .ZN(n385) );
  INV_X1 U527 ( .A(n376), .ZN(n386) );
  INV_X1 U528 ( .A(n376), .ZN(n387) );
  INV_X1 U529 ( .A(n376), .ZN(n388) );
  INV_X1 U530 ( .A(n377), .ZN(n389) );
  INV_X1 U531 ( .A(n377), .ZN(n390) );
  INV_X1 U532 ( .A(n377), .ZN(n391) );
  INV_X1 U533 ( .A(n377), .ZN(n392) );
  INV_X1 U534 ( .A(n377), .ZN(n393) );
  INV_X1 U535 ( .A(n378), .ZN(n394) );
  INV_X1 U536 ( .A(n378), .ZN(n395) );
  INV_X1 U537 ( .A(n378), .ZN(n396) );
  INV_X1 U538 ( .A(n378), .ZN(n397) );
  INV_X1 U539 ( .A(n378), .ZN(n398) );
  INV_X1 U540 ( .A(n379), .ZN(n399) );
  INV_X1 U541 ( .A(n379), .ZN(n400) );
  INV_X1 U542 ( .A(n379), .ZN(n401) );
  INV_X1 U543 ( .A(n379), .ZN(n402) );
  INV_X1 U544 ( .A(n379), .ZN(n403) );
  NOR2_X1 U545 ( .A1(count[1]), .A2(count[0]), .ZN(n404) );
  OAI21_X1 U546 ( .B1(n187), .B2(n185), .A(n408), .ZN(N43) );
  NOR2_X1 U547 ( .A1(n408), .A2(count[2]), .ZN(n405) );
  OAI21_X1 U548 ( .B1(n404), .B2(n184), .A(n409), .ZN(N44) );
  NOR2_X1 U549 ( .A1(n409), .A2(count[3]), .ZN(n406) );
  OAI21_X1 U550 ( .B1(n405), .B2(n183), .A(n410), .ZN(N45) );
  XOR2_X1 U551 ( .A(count[4]), .B(n406), .Z(N46) );
  NOR2_X1 U552 ( .A1(count[4]), .A2(n410), .ZN(n407) );
  XOR2_X1 U553 ( .A(count[5]), .B(n407), .Z(N47) );
  OR3_X1 U554 ( .A1(count[5]), .A2(count[4]), .A3(count[3]), .ZN(n411) );
  OR4_X1 U555 ( .A1(count[2]), .A2(count[1]), .A3(count[0]), .A4(n411), .ZN(N4) );
endmodule

