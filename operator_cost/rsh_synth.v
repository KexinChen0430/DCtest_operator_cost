/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:35:47 2025
/////////////////////////////////////////////////////////////


module rsh ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27;

  NR2 U17 ( .A(b[3]), .B(b[2]), .Z(n16) );
  IVP U18 ( .A(n16), .Z(n14) );
  IVP U19 ( .A(b[1]), .Z(n15) );
  AO2 U20 ( .A(b[1]), .B(a[3]), .C(a[1]), .D(n15), .Z(n13) );
  NR2 U21 ( .A(n14), .B(n13), .Z(n21) );
  ND2 U22 ( .A(n16), .B(n15), .Z(n19) );
  NR2 U23 ( .A(b[0]), .B(n19), .Z(n27) );
  AO2 U24 ( .A(b[0]), .B(n21), .C(n27), .D(a[0]), .Z(n18) );
  IVP U25 ( .A(b[0]), .Z(n20) );
  ND4 U26 ( .A(n16), .B(b[1]), .C(a[2]), .D(n20), .Z(n17) );
  ND2 U27 ( .A(n18), .B(n17), .Z(c[0]) );
  NR2 U28 ( .A(n20), .B(n19), .Z(n24) );
  ND2 U29 ( .A(n24), .B(a[2]), .Z(n23) );
  ND2 U30 ( .A(n21), .B(n20), .Z(n22) );
  ND2 U31 ( .A(n23), .B(n22), .Z(c[1]) );
  ND2 U32 ( .A(n27), .B(a[2]), .Z(n26) );
  ND2 U33 ( .A(n24), .B(a[3]), .Z(n25) );
  ND2 U34 ( .A(n26), .B(n25), .Z(c[2]) );
  AN2P U35 ( .A(a[3]), .B(n27), .Z(c[3]) );
endmodule

