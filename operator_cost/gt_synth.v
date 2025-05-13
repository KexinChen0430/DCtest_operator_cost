/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:12:27 2025
/////////////////////////////////////////////////////////////


module gt ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   \gt_x_1/n24 , n8, n9, n10, n11, n12, n13, n14;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;
  assign c[0] = \gt_x_1/n24 ;

  IVP U12 ( .A(a[1]), .Z(n8) );
  AO6 U13 ( .A(b[1]), .B(n8), .C(b[0]), .Z(n9) );
  EO1 U14 ( .A(a[0]), .B(n9), .C(n8), .D(b[1]), .Z(n11) );
  IVP U15 ( .A(a[2]), .Z(n10) );
  AO5 U16 ( .A(n11), .B(b[2]), .C(n10), .Z(n12) );
  NR2 U17 ( .A(a[3]), .B(n12), .Z(n14) );
  ND2 U18 ( .A(a[3]), .B(n12), .Z(n13) );
  AO7 U19 ( .A(b[3]), .B(n14), .C(n13), .Z(\gt_x_1/n24 ) );
endmodule

