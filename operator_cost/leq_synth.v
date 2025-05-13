/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:13:26 2025
/////////////////////////////////////////////////////////////


module leq ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  IVP U11 ( .A(a[0]), .Z(n8) );
  NR2 U12 ( .A(b[0]), .B(n8), .Z(n9) );
  NR2 U13 ( .A(n9), .B(a[1]), .Z(n11) );
  ND2 U14 ( .A(n9), .B(a[1]), .Z(n10) );
  AO7 U15 ( .A(b[1]), .B(n11), .C(n10), .Z(n13) );
  IVP U16 ( .A(b[2]), .Z(n12) );
  AO5 U17 ( .A(n13), .B(a[2]), .C(n12), .Z(n14) );
  NR2 U18 ( .A(b[3]), .B(n14), .Z(n16) );
  ND2 U19 ( .A(b[3]), .B(n14), .Z(n15) );
  AO7 U20 ( .A(a[3]), .B(n16), .C(n15), .Z(c[0]) );
endmodule

