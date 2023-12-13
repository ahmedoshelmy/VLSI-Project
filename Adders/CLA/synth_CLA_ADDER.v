/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:05:52 2023
/////////////////////////////////////////////////////////////


module CLA_ADDER ( A, B, cin, S, cout, overflow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input cin;
  output cout, overflow;
  wire   N3, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132;
  wire   [31:0] g;
  wire   [31:0] p;
  wire   [30:0] SumCarry;
  assign overflow = N3;

  FA_1bit \generate_FA[0].S_inst  ( .a(g[0]), .b(p[0]), .cin(cin), .sum(S[0]), .cout(SumCarry[0]) );
  FA_1bit \generate_FA[1].S_inst  ( .a(g[1]), .b(p[1]), .cin(SumCarry[0]), 
        .sum(S[1]), .cout(SumCarry[1]) );
  FA_1bit \generate_FA[2].S_inst  ( .a(g[2]), .b(p[2]), .cin(SumCarry[1]), 
        .sum(S[2]), .cout(SumCarry[2]) );
  FA_1bit \generate_FA[3].S_inst  ( .a(g[3]), .b(p[3]), .cin(SumCarry[2]), 
        .sum(S[3]), .cout(SumCarry[3]) );
  FA_1bit \generate_FA[4].S_inst  ( .a(g[4]), .b(p[4]), .cin(SumCarry[3]), 
        .sum(S[4]), .cout(SumCarry[4]) );
  FA_1bit \generate_FA[5].S_inst  ( .a(g[5]), .b(p[5]), .cin(SumCarry[4]), 
        .sum(S[5]), .cout(SumCarry[5]) );
  FA_1bit \generate_FA[6].S_inst  ( .a(g[6]), .b(p[6]), .cin(SumCarry[5]), 
        .sum(S[6]), .cout(SumCarry[6]) );
  FA_1bit \generate_FA[7].S_inst  ( .a(g[7]), .b(p[7]), .cin(SumCarry[6]), 
        .sum(S[7]), .cout(SumCarry[7]) );
  FA_1bit \generate_FA[8].S_inst  ( .a(g[8]), .b(p[8]), .cin(SumCarry[7]), 
        .sum(S[8]), .cout(SumCarry[8]) );
  FA_1bit \generate_FA[9].S_inst  ( .a(g[9]), .b(p[9]), .cin(SumCarry[8]), 
        .sum(S[9]), .cout(SumCarry[9]) );
  FA_1bit \generate_FA[10].S_inst  ( .a(g[10]), .b(p[10]), .cin(SumCarry[9]), .sum(S[10]), .cout(SumCarry[10]) );
  FA_1bit \generate_FA[11].S_inst  ( .a(g[11]), .b(p[11]), .cin( SumCarry[10]), .sum(S[11]), .cout(SumCarry[11]) );
  FA_1bit \generate_FA[12].S_inst  ( .a(g[12]), .b(p[12]), .cin(
        SumCarry[11]), .sum(S[12]), .cout(SumCarry[12]) );
  FA_1bit \generate_FA[13].S_inst  ( .a(g[13]), .b(p[13]), .cin(
        SumCarry[12]), .sum(S[13]), .cout(SumCarry[13]) );
  FA_1bit \generate_FA[14].S_inst  ( .a(g[14]), .b(p[14]), .cin(
        SumCarry[13]), .sum(S[14]), .cout(SumCarry[14]) );
  FA_1bit \generate_FA[15].S_inst  ( .a(g[15]), .b(p[15]), .cin(
        SumCarry[14]), .sum(S[15]), .cout(SumCarry[15]) );
  FA_1bit \generate_FA[16].S_inst  ( .a(g[16]), .b(p[16]), .cin(
        SumCarry[15]), .sum(S[16]), .cout(SumCarry[16]) );
  FA_1bit \generate_FA[17].S_inst  ( .a(g[17]), .b(p[17]), .cin(
        SumCarry[16]), .sum(S[17]), .cout(SumCarry[17]) );
  FA_1bit \generate_FA[18].S_inst  ( .a(g[18]), .b(p[18]), .cin(
        SumCarry[17]), .sum(S[18]), .cout(SumCarry[18]) );
  FA_1bit \generate_FA[19].S_inst  ( .a(g[19]), .b(p[19]), .cin(
        SumCarry[18]), .sum(S[19]), .cout(SumCarry[19]) );
  FA_1bit \generate_FA[20].S_inst  ( .a(g[20]), .b(p[20]), .cin(
        SumCarry[19]), .sum(S[20]), .cout(SumCarry[20]) );
  FA_1bit \generate_FA[21].S_inst  ( .a(g[21]), .b(p[21]), .cin(
        SumCarry[20]), .sum(S[21]), .cout(SumCarry[21]) );
  FA_1bit \generate_FA[22].S_inst  ( .a(g[22]), .b(p[22]), .cin(
        SumCarry[21]), .sum(S[22]), .cout(SumCarry[22]) );
  FA_1bit \generate_FA[23].S_inst  ( .a(g[23]), .b(p[23]), .cin(SumCarry[22]), .sum(S[23]), .cout(SumCarry[23]) );
  FA_1bit \generate_FA[24].S_inst  ( .a(g[24]), .b(p[24]), .cin(SumCarry[23]), .sum(S[24]), .cout(SumCarry[24]) );
  FA_1bit \generate_FA[25].S_inst  ( .a(g[25]), .b(p[25]), .cin(SumCarry[24]), .sum(S[25]), .cout(SumCarry[25]) );
  FA_1bit \generate_FA[26].S_inst  ( .a(g[26]), .b(p[26]), .cin(SumCarry[25]), .sum(S[26]), .cout(SumCarry[26]) );
  FA_1bit \generate_FA[27].S_inst  ( .a(g[27]), .b(p[27]), .cin(SumCarry[26]), .sum(S[27]), .cout(SumCarry[27]) );
  FA_1bit \generate_FA[28].S_inst  ( .a(g[28]), .b(p[28]), .cin(SumCarry[27]), .sum(S[28]), .cout(SumCarry[28]) );
  FA_1bit \generate_FA[29].S_inst  ( .a(g[29]), .b(p[29]), .cin(SumCarry[28]), .sum(S[29]), .cout(SumCarry[29]) );
  FA_1bit \generate_FA[30].S_inst  ( .a(g[30]), .b(p[30]), .cin(SumCarry[29]), .sum(S[30]), .cout(SumCarry[30]) );
  FA_1bit \generate_FA[31].S_inst  ( .a(g[31]), .b(p[31]), .cin(SumCarry[30]), .sum(S[31]), .cout(cout) );
  NAND2X0 U132 ( .IN1(n67), .IN2(n68), .QN(p[9]) );
  NAND2X0 U133 ( .IN1(n69), .IN2(n70), .QN(p[8]) );
  NAND2X0 U134 ( .IN1(n71), .IN2(n72), .QN(p[7]) );
  NAND2X0 U135 ( .IN1(n73), .IN2(n74), .QN(p[6]) );
  NAND2X0 U136 ( .IN1(n75), .IN2(n76), .QN(p[5]) );
  NAND2X0 U137 ( .IN1(n77), .IN2(n78), .QN(p[4]) );
  NAND2X0 U138 ( .IN1(n79), .IN2(n80), .QN(p[3]) );
  NAND2X0 U139 ( .IN1(n81), .IN2(n82), .QN(p[31]) );
  NAND2X0 U140 ( .IN1(n83), .IN2(n84), .QN(p[30]) );
  NAND2X0 U141 ( .IN1(n85), .IN2(n86), .QN(p[2]) );
  NAND2X0 U142 ( .IN1(n87), .IN2(n88), .QN(p[29]) );
  NAND2X0 U143 ( .IN1(n89), .IN2(n90), .QN(p[28]) );
  NAND2X0 U144 ( .IN1(n91), .IN2(n92), .QN(p[27]) );
  NAND2X0 U145 ( .IN1(n93), .IN2(n94), .QN(p[26]) );
  NAND2X0 U146 ( .IN1(n95), .IN2(n96), .QN(p[25]) );
  NAND2X0 U147 ( .IN1(n97), .IN2(n98), .QN(p[24]) );
  NAND2X0 U148 ( .IN1(n99), .IN2(n100), .QN(p[23]) );
  NAND2X0 U149 ( .IN1(n101), .IN2(n102), .QN(p[22]) );
  NAND2X0 U150 ( .IN1(n103), .IN2(n104), .QN(p[21]) );
  NAND2X0 U151 ( .IN1(n105), .IN2(n106), .QN(p[20]) );
  NAND2X0 U152 ( .IN1(n107), .IN2(n108), .QN(p[1]) );
  NAND2X0 U153 ( .IN1(n109), .IN2(n110), .QN(p[19]) );
  NAND2X0 U154 ( .IN1(n111), .IN2(n112), .QN(p[18]) );
  NAND2X0 U155 ( .IN1(n113), .IN2(n114), .QN(p[17]) );
  NAND2X0 U156 ( .IN1(n115), .IN2(n116), .QN(p[16]) );
  NAND2X0 U157 ( .IN1(n117), .IN2(n118), .QN(p[15]) );
  NAND2X0 U158 ( .IN1(n119), .IN2(n120), .QN(p[14]) );
  NAND2X0 U159 ( .IN1(n121), .IN2(n122), .QN(p[13]) );
  NAND2X0 U160 ( .IN1(n123), .IN2(n124), .QN(p[12]) );
  NAND2X0 U161 ( .IN1(n125), .IN2(n126), .QN(p[11]) );
  NAND2X0 U162 ( .IN1(n127), .IN2(n128), .QN(p[10]) );
  NAND2X0 U163 ( .IN1(n129), .IN2(n130), .QN(p[0]) );
  NOR2X0 U164 ( .IN1(n68), .IN2(n67), .QN(g[9]) );
  INVX0 U165 ( .IN1(B[9]), .QN(n67) );
  INVX0 U166 ( .IN1(A[9]), .QN(n68) );
  NOR2X0 U167 ( .IN1(n70), .IN2(n69), .QN(g[8]) );
  INVX0 U168 ( .IN1(B[8]), .QN(n69) );
  INVX0 U169 ( .IN1(A[8]), .QN(n70) );
  NOR2X0 U170 ( .IN1(n72), .IN2(n71), .QN(g[7]) );
  INVX0 U171 ( .IN1(B[7]), .QN(n71) );
  INVX0 U172 ( .IN1(A[7]), .QN(n72) );
  NOR2X0 U173 ( .IN1(n74), .IN2(n73), .QN(g[6]) );
  INVX0 U174 ( .IN1(B[6]), .QN(n73) );
  INVX0 U175 ( .IN1(A[6]), .QN(n74) );
  NOR2X0 U176 ( .IN1(n76), .IN2(n75), .QN(g[5]) );
  INVX0 U177 ( .IN1(B[5]), .QN(n75) );
  INVX0 U178 ( .IN1(A[5]), .QN(n76) );
  NOR2X0 U179 ( .IN1(n78), .IN2(n77), .QN(g[4]) );
  INVX0 U180 ( .IN1(B[4]), .QN(n77) );
  INVX0 U181 ( .IN1(A[4]), .QN(n78) );
  NOR2X0 U182 ( .IN1(n80), .IN2(n79), .QN(g[3]) );
  INVX0 U183 ( .IN1(B[3]), .QN(n79) );
  INVX0 U184 ( .IN1(A[3]), .QN(n80) );
  NOR2X0 U185 ( .IN1(n82), .IN2(n81), .QN(g[31]) );
  INVX0 U186 ( .IN1(B[31]), .QN(n81) );
  NOR2X0 U187 ( .IN1(n84), .IN2(n83), .QN(g[30]) );
  INVX0 U188 ( .IN1(B[30]), .QN(n83) );
  INVX0 U189 ( .IN1(A[30]), .QN(n84) );
  NOR2X0 U190 ( .IN1(n86), .IN2(n85), .QN(g[2]) );
  INVX0 U191 ( .IN1(B[2]), .QN(n85) );
  INVX0 U192 ( .IN1(A[2]), .QN(n86) );
  NOR2X0 U193 ( .IN1(n88), .IN2(n87), .QN(g[29]) );
  INVX0 U194 ( .IN1(B[29]), .QN(n87) );
  INVX0 U195 ( .IN1(A[29]), .QN(n88) );
  NOR2X0 U196 ( .IN1(n90), .IN2(n89), .QN(g[28]) );
  INVX0 U197 ( .IN1(B[28]), .QN(n89) );
  INVX0 U198 ( .IN1(A[28]), .QN(n90) );
  NOR2X0 U199 ( .IN1(n92), .IN2(n91), .QN(g[27]) );
  INVX0 U200 ( .IN1(B[27]), .QN(n91) );
  INVX0 U201 ( .IN1(A[27]), .QN(n92) );
  NOR2X0 U202 ( .IN1(n94), .IN2(n93), .QN(g[26]) );
  INVX0 U203 ( .IN1(B[26]), .QN(n93) );
  INVX0 U204 ( .IN1(A[26]), .QN(n94) );
  NOR2X0 U205 ( .IN1(n96), .IN2(n95), .QN(g[25]) );
  INVX0 U206 ( .IN1(B[25]), .QN(n95) );
  INVX0 U207 ( .IN1(A[25]), .QN(n96) );
  NOR2X0 U208 ( .IN1(n98), .IN2(n97), .QN(g[24]) );
  INVX0 U209 ( .IN1(B[24]), .QN(n97) );
  INVX0 U210 ( .IN1(A[24]), .QN(n98) );
  NOR2X0 U211 ( .IN1(n100), .IN2(n99), .QN(g[23]) );
  INVX0 U212 ( .IN1(B[23]), .QN(n99) );
  INVX0 U213 ( .IN1(A[23]), .QN(n100) );
  NOR2X0 U214 ( .IN1(n102), .IN2(n101), .QN(g[22]) );
  INVX0 U215 ( .IN1(B[22]), .QN(n101) );
  INVX0 U216 ( .IN1(A[22]), .QN(n102) );
  NOR2X0 U217 ( .IN1(n104), .IN2(n103), .QN(g[21]) );
  INVX0 U218 ( .IN1(B[21]), .QN(n103) );
  INVX0 U219 ( .IN1(A[21]), .QN(n104) );
  NOR2X0 U220 ( .IN1(n106), .IN2(n105), .QN(g[20]) );
  INVX0 U221 ( .IN1(B[20]), .QN(n105) );
  INVX0 U222 ( .IN1(A[20]), .QN(n106) );
  NOR2X0 U223 ( .IN1(n108), .IN2(n107), .QN(g[1]) );
  INVX0 U224 ( .IN1(B[1]), .QN(n107) );
  INVX0 U225 ( .IN1(A[1]), .QN(n108) );
  NOR2X0 U226 ( .IN1(n110), .IN2(n109), .QN(g[19]) );
  INVX0 U227 ( .IN1(B[19]), .QN(n109) );
  INVX0 U228 ( .IN1(A[19]), .QN(n110) );
  NOR2X0 U229 ( .IN1(n112), .IN2(n111), .QN(g[18]) );
  INVX0 U230 ( .IN1(B[18]), .QN(n111) );
  INVX0 U231 ( .IN1(A[18]), .QN(n112) );
  NOR2X0 U232 ( .IN1(n114), .IN2(n113), .QN(g[17]) );
  INVX0 U233 ( .IN1(B[17]), .QN(n113) );
  INVX0 U234 ( .IN1(A[17]), .QN(n114) );
  NOR2X0 U235 ( .IN1(n116), .IN2(n115), .QN(g[16]) );
  INVX0 U236 ( .IN1(B[16]), .QN(n115) );
  INVX0 U237 ( .IN1(A[16]), .QN(n116) );
  NOR2X0 U238 ( .IN1(n118), .IN2(n117), .QN(g[15]) );
  INVX0 U239 ( .IN1(B[15]), .QN(n117) );
  INVX0 U240 ( .IN1(A[15]), .QN(n118) );
  NOR2X0 U241 ( .IN1(n120), .IN2(n119), .QN(g[14]) );
  INVX0 U242 ( .IN1(B[14]), .QN(n119) );
  INVX0 U243 ( .IN1(A[14]), .QN(n120) );
  NOR2X0 U244 ( .IN1(n122), .IN2(n121), .QN(g[13]) );
  INVX0 U245 ( .IN1(B[13]), .QN(n121) );
  INVX0 U246 ( .IN1(A[13]), .QN(n122) );
  NOR2X0 U247 ( .IN1(n124), .IN2(n123), .QN(g[12]) );
  INVX0 U248 ( .IN1(B[12]), .QN(n123) );
  INVX0 U249 ( .IN1(A[12]), .QN(n124) );
  NOR2X0 U250 ( .IN1(n126), .IN2(n125), .QN(g[11]) );
  INVX0 U251 ( .IN1(B[11]), .QN(n125) );
  INVX0 U252 ( .IN1(A[11]), .QN(n126) );
  NOR2X0 U253 ( .IN1(n128), .IN2(n127), .QN(g[10]) );
  INVX0 U254 ( .IN1(B[10]), .QN(n127) );
  INVX0 U255 ( .IN1(A[10]), .QN(n128) );
  NOR2X0 U256 ( .IN1(n130), .IN2(n129), .QN(g[0]) );
  INVX0 U257 ( .IN1(B[0]), .QN(n129) );
  INVX0 U258 ( .IN1(A[0]), .QN(n130) );
  NOR2X0 U259 ( .IN1(n131), .IN2(n132), .QN(N3) );
  XOR2X1 U260 ( .IN1(B[31]), .IN2(A[31]), .Q(n132) );
  XOR2X1 U261 ( .IN1(n82), .IN2(S[31]), .Q(n131) );
  INVX0 U262 ( .IN1(A[31]), .QN(n82) );
endmodule

