/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:07:53 2025
/////////////////////////////////////////////////////////////


module div ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  IVP U1 ( .A(a[3]), .Z(n4) );
  OR2P U2 ( .A(b[3]), .B(b[2]), .Z(n6) );
  AO1P U3 ( .A(b[0]), .B(n4), .C(b[1]), .D(n6), .Z(c[3]) );
  IVP U4 ( .A(b[0]), .Z(n15) );
  EON1 U5 ( .A(a[2]), .B(n15), .C(n4), .D(b[1]), .Z(n1) );
  NR2 U6 ( .A(n6), .B(n1), .Z(c[2]) );
  IVP U7 ( .A(b[2]), .Z(n19) );
  NR2 U8 ( .A(a[1]), .B(n15), .Z(n13) );
  NR2 U9 ( .A(b[1]), .B(n13), .Z(n9) );
  AN2P U10 ( .A(b[1]), .B(n13), .Z(n8) );
  ND2 U11 ( .A(b[0]), .B(c[2]), .Z(n2) );
  ND2 U12 ( .A(a[2]), .B(n2), .Z(n11) );
  NR2 U13 ( .A(n8), .B(n11), .Z(n3) );
  AO4 U14 ( .A(a[3]), .B(n19), .C(n9), .D(n3), .Z(n7) );
  OR2P U15 ( .A(c[3]), .B(n4), .Z(n5) );
  OR2P U16 ( .A(n5), .B(c[2]), .Z(n21) );
  AO4 U17 ( .A(b[3]), .B(n7), .C(n21), .D(n6), .Z(c[1]) );
  NR2 U18 ( .A(n9), .B(n8), .Z(n10) );
  ND2 U19 ( .A(n10), .B(c[1]), .Z(n12) );
  EO U20 ( .A(n12), .B(n11), .Z(n20) );
  ND2 U21 ( .A(b[0]), .B(c[1]), .Z(n14) );
  AO2 U22 ( .A(a[1]), .B(n14), .C(n13), .D(c[1]), .Z(n17) );
  NR2 U23 ( .A(n15), .B(a[0]), .Z(n16) );
  AO5 U24 ( .A(n17), .B(b[1]), .C(n16), .Z(n18) );
  AO5 U25 ( .A(n20), .B(n19), .C(n18), .Z(n23) );
  OR2P U26 ( .A(n21), .B(c[1]), .Z(n22) );
  AO5 U27 ( .A(b[3]), .B(n23), .C(n22), .Z(c[0]) );
endmodule

