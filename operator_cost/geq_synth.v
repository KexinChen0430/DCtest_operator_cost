/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:11:54 2025
/////////////////////////////////////////////////////////////


module geq ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   \gte_x_1/n24 , n9, n10, n11, n12, n13, n14, n15, n16;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;
  assign c[0] = \gte_x_1/n24 ;

  IVP U13 ( .A(a[2]), .Z(n13) );
  IVP U14 ( .A(b[1]), .Z(n10) );
  ND2 U15 ( .A(n10), .B(a[1]), .Z(n9) );
  ND2 U16 ( .A(b[0]), .B(n9), .Z(n11) );
  AO4 U17 ( .A(a[0]), .B(n11), .C(n10), .D(a[1]), .Z(n12) );
  AO5 U18 ( .A(b[2]), .B(n13), .C(n12), .Z(n14) );
  NR2 U19 ( .A(a[3]), .B(n14), .Z(n16) );
  ND2 U20 ( .A(a[3]), .B(n14), .Z(n15) );
  AO7 U21 ( .A(b[3]), .B(n16), .C(n15), .Z(\gte_x_1/n24 ) );
endmodule

