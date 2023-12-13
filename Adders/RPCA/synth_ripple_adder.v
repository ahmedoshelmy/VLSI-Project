/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 19:33:33 2023
/////////////////////////////////////////////////////////////


module RippleAdder ( a, b, cin, sum, cout );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout;

  wire   [30:0] c;

  Full_Adder \gen_full_adder[0].full_adder_inst  ( .a(a[0]), .b(b[0]), .cin(
        cin), .sum(sum[0]), .cout(c[0]) );
  Full_Adder \gen_full_adder[1].full_adder_inst  ( .a(a[1]), .b(b[1]), 
        .cin(c[0]), .sum(sum[1]), .cout(c[1]) );
  Full_Adder \gen_full_adder[2].full_adder_inst  ( .a(a[2]), .b(b[2]), 
        .cin(c[1]), .sum(sum[2]), .cout(c[2]) );
  Full_Adder \gen_full_adder[3].full_adder_inst  ( .a(a[3]), .b(b[3]), 
        .cin(c[2]), .sum(sum[3]), .cout(c[3]) );
  Full_Adder \gen_full_adder[4].full_adder_inst  ( .a(a[4]), .b(b[4]), 
        .cin(c[3]), .sum(sum[4]), .cout(c[4]) );
  Full_Adder \gen_full_adder[5].full_adder_inst  ( .a(a[5]), .b(b[5]), 
        .cin(c[4]), .sum(sum[5]), .cout(c[5]) );
  Full_Adder \gen_full_adder[6].full_adder_inst  ( .a(a[6]), .b(b[6]), 
        .cin(c[5]), .sum(sum[6]), .cout(c[6]) );
  Full_Adder \gen_full_adder[7].full_adder_inst  ( .a(a[7]), .b(b[7]), 
        .cin(c[6]), .sum(sum[7]), .cout(c[7]) );
  Full_Adder \gen_full_adder[8].full_adder_inst  ( .a(a[8]), .b(b[8]), 
        .cin(c[7]), .sum(sum[8]), .cout(c[8]) );
  Full_Adder \gen_full_adder[9].full_adder_inst  ( .a(a[9]), .b(b[9]), 
        .cin(c[8]), .sum(sum[9]), .cout(c[9]) );
  Full_Adder \gen_full_adder[10].full_adder_inst  ( .a(a[10]), .b(b[10]), 
        .cin(c[9]), .sum(sum[10]), .cout(c[10]) );
  Full_Adder \gen_full_adder[11].full_adder_inst  ( .a(a[11]), .b(b[11]), 
        .cin(c[10]), .sum(sum[11]), .cout(c[11]) );
  Full_Adder \gen_full_adder[12].full_adder_inst  ( .a(a[12]), .b(b[12]), 
        .cin(c[11]), .sum(sum[12]), .cout(c[12]) );
  Full_Adder \gen_full_adder[13].full_adder_inst  ( .a(a[13]), .b(b[13]), 
        .cin(c[12]), .sum(sum[13]), .cout(c[13]) );
  Full_Adder \gen_full_adder[14].full_adder_inst  ( .a(a[14]), .b(b[14]), 
        .cin(c[13]), .sum(sum[14]), .cout(c[14]) );
  Full_Adder \gen_full_adder[15].full_adder_inst  ( .a(a[15]), .b(b[15]), 
        .cin(c[14]), .sum(sum[15]), .cout(c[15]) );
  Full_Adder \gen_full_adder[16].full_adder_inst  ( .a(a[16]), .b(b[16]), 
        .cin(c[15]), .sum(sum[16]), .cout(c[16]) );
  Full_Adder \gen_full_adder[17].full_adder_inst  ( .a(a[17]), .b(b[17]), 
        .cin(c[16]), .sum(sum[17]), .cout(c[17]) );
  Full_Adder \gen_full_adder[18].full_adder_inst  ( .a(a[18]), .b(b[18]), 
        .cin(c[17]), .sum(sum[18]), .cout(c[18]) );
  Full_Adder \gen_full_adder[19].full_adder_inst  ( .a(a[19]), .b(b[19]), 
        .cin(c[18]), .sum(sum[19]), .cout(c[19]) );
  Full_Adder \gen_full_adder[20].full_adder_inst  ( .a(a[20]), .b(b[20]), 
        .cin(c[19]), .sum(sum[20]), .cout(c[20]) );
  Full_Adder \gen_full_adder[21].full_adder_inst  ( .a(a[21]), .b(b[21]), 
        .cin(c[20]), .sum(sum[21]), .cout(c[21]) );
  Full_Adder \gen_full_adder[22].full_adder_inst  ( .a(a[22]), .b(b[22]), 
        .cin(c[21]), .sum(sum[22]), .cout(c[22]) );
  Full_Adder \gen_full_adder[23].full_adder_inst  ( .a(a[23]), .b(b[23]), 
        .cin(c[22]), .sum(sum[23]), .cout(c[23]) );
  Full_Adder \gen_full_adder[24].full_adder_inst  ( .a(a[24]), .b(b[24]), 
        .cin(c[23]), .sum(sum[24]), .cout(c[24]) );
  Full_Adder \gen_full_adder[25].full_adder_inst  ( .a(a[25]), .b(b[25]), 
        .cin(c[24]), .sum(sum[25]), .cout(c[25]) );
  Full_Adder \gen_full_adder[26].full_adder_inst  ( .a(a[26]), .b(b[26]), 
        .cin(c[25]), .sum(sum[26]), .cout(c[26]) );
  Full_Adder \gen_full_adder[27].full_adder_inst  ( .a(a[27]), .b(b[27]), 
        .cin(c[26]), .sum(sum[27]), .cout(c[27]) );
  Full_Adder \gen_full_adder[28].full_adder_inst  ( .a(a[28]), .b(b[28]), 
        .cin(c[27]), .sum(sum[28]), .cout(c[28]) );
  Full_Adder \gen_full_adder[29].full_adder_inst  ( .a(a[29]), .b(b[29]), 
        .cin(c[28]), .sum(sum[29]), .cout(c[29]) );
  Full_Adder \gen_full_adder[30].full_adder_inst  ( .a(a[30]), .b(b[30]), 
        .cin(c[29]), .sum(sum[30]), .cout(c[30]) );
  Full_Adder \gen_full_adder[31].full_adder_inst  ( .a(a[31]), .b(b[31]), 
        .cin(c[30]), .sum(sum[31]), .cout(cout) );
endmodule