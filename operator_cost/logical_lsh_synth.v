/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:15:50 2025
/////////////////////////////////////////////////////////////


module logical_lsh ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  OR3 U18 ( .A(b[1]), .B(b[3]), .C(b[2]), .Z(n14) );
  NR2 U19 ( .A(b[0]), .B(n14), .Z(n19) );
  AN2P U20 ( .A(a[0]), .B(n19), .Z(c[0]) );
  IVP U21 ( .A(b[0]), .Z(n15) );
  AO2 U22 ( .A(b[0]), .B(a[0]), .C(a[1]), .D(n15), .Z(n23) );
  NR2 U23 ( .A(n23), .B(n14), .Z(c[1]) );
  NR2 U24 ( .A(n15), .B(n14), .Z(n20) );
  AO2 U25 ( .A(a[1]), .B(n20), .C(n19), .D(a[2]), .Z(n17) );
  NR2 U26 ( .A(b[3]), .B(b[2]), .Z(n18) );
  ND4 U27 ( .A(b[1]), .B(n18), .C(a[0]), .D(n15), .Z(n16) );
  ND2 U28 ( .A(n17), .B(n16), .Z(c[2]) );
  ND2 U29 ( .A(b[1]), .B(n18), .Z(n22) );
  AO2 U30 ( .A(n20), .B(a[2]), .C(n19), .D(a[3]), .Z(n21) );
  AO7 U31 ( .A(n23), .B(n22), .C(n21), .Z(c[3]) );
endmodule

