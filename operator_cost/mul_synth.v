/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:38:25 2025
/////////////////////////////////////////////////////////////


module mul ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;

  ND2 U1 ( .A(b[1]), .B(a[0]), .Z(n2) );
  ND2 U2 ( .A(a[1]), .B(b[0]), .Z(n1) );
  NR2 U3 ( .A(n2), .B(n1), .Z(n7) );
  AO6 U4 ( .A(n2), .B(n1), .C(n7), .Z(c[1]) );
  AN2P U5 ( .A(a[0]), .B(b[0]), .Z(c[0]) );
  ND2 U6 ( .A(a[1]), .B(b[1]), .Z(n4) );
  ND2 U7 ( .A(a[0]), .B(b[2]), .Z(n3) );
  AN4P U8 ( .A(a[1]), .B(b[1]), .C(a[0]), .D(b[2]), .Z(n15) );
  AO6 U9 ( .A(n4), .B(n3), .C(n15), .Z(n6) );
  AN2P U10 ( .A(a[2]), .B(b[0]), .Z(n5) );
  FA1A U11 ( .A(n7), .B(n6), .CI(n5), .CO(n11), .S(c[2]) );
  ND2 U12 ( .A(a[3]), .B(b[0]), .Z(n9) );
  ND2 U13 ( .A(a[2]), .B(b[1]), .Z(n8) );
  EO U14 ( .A(n9), .B(n8), .Z(n10) );
  EO U15 ( .A(n11), .B(n10), .Z(n13) );
  ND2 U16 ( .A(b[2]), .B(a[1]), .Z(n12) );
  EN U17 ( .A(n13), .B(n12), .Z(n14) );
  EO U18 ( .A(n15), .B(n14), .Z(n17) );
  ND2 U19 ( .A(a[0]), .B(b[3]), .Z(n16) );
  EN U20 ( .A(n17), .B(n16), .Z(c[3]) );
endmodule

