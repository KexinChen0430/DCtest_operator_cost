/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:06:02 2025
/////////////////////////////////////////////////////////////


module cond ( a, b, s, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18;

  IVP U14 ( .A(s), .Z(n16) );
  ND2 U15 ( .A(b[0]), .B(n16), .Z(n11) );
  ND2 U16 ( .A(s), .B(a[0]), .Z(n10) );
  ND2 U17 ( .A(n11), .B(n10), .Z(c[0]) );
  ND2 U18 ( .A(b[1]), .B(n16), .Z(n13) );
  ND2 U19 ( .A(s), .B(a[1]), .Z(n12) );
  ND2 U20 ( .A(n13), .B(n12), .Z(c[1]) );
  ND2 U21 ( .A(b[2]), .B(n16), .Z(n15) );
  ND2 U22 ( .A(s), .B(a[2]), .Z(n14) );
  ND2 U23 ( .A(n15), .B(n14), .Z(c[2]) );
  ND2 U24 ( .A(b[3]), .B(n16), .Z(n18) );
  ND2 U25 ( .A(s), .B(a[3]), .Z(n17) );
  ND2 U26 ( .A(n18), .B(n17), .Z(c[3]) );
endmodule

