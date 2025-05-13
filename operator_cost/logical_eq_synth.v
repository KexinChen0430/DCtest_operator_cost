/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:15:08 2025
/////////////////////////////////////////////////////////////


module logical_eq ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   \eq_x_1/n25 , n5, n6, n7, n8;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;
  assign c[0] = \eq_x_1/n25 ;

  EO U9 ( .A(a[3]), .B(b[3]), .Z(n8) );
  EO U10 ( .A(a[2]), .B(b[2]), .Z(n7) );
  EO U11 ( .A(a[1]), .B(b[1]), .Z(n6) );
  EO U12 ( .A(a[0]), .B(b[0]), .Z(n5) );
  NR4 U13 ( .A(n8), .B(n7), .C(n6), .D(n5), .Z(\eq_x_1/n25 ) );
endmodule

