/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:21:05 2025
/////////////////////////////////////////////////////////////


module mod ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37;

  IVP U1 ( .A(b[0]), .Z(n13) );
  NR2 U2 ( .A(a[1]), .B(n13), .Z(n10) );
  NR2 U3 ( .A(b[1]), .B(n10), .Z(n15) );
  AN2P U4 ( .A(b[1]), .B(n10), .Z(n14) );
  AO7 U5 ( .A(a[2]), .B(n13), .C(a[3]), .Z(n1) );
  AO1P U6 ( .A(b[1]), .B(n1), .C(b[3]), .D(b[2]), .Z(n6) );
  ND2 U7 ( .A(b[0]), .B(n6), .Z(n2) );
  ND2 U8 ( .A(a[2]), .B(n2), .Z(n18) );
  NR2 U9 ( .A(n14), .B(n18), .Z(n3) );
  NR2 U10 ( .A(n15), .B(n3), .Z(n22) );
  IVP U11 ( .A(b[2]), .Z(n7) );
  NR4 U12 ( .A(b[1]), .B(b[3]), .C(b[2]), .D(n13), .Z(n5) );
  IVP U13 ( .A(a[3]), .Z(n4) );
  AO1P U14 ( .A(b[1]), .B(n6), .C(n5), .D(n4), .Z(n24) );
  ND2 U15 ( .A(n7), .B(n24), .Z(n9) );
  NR2 U16 ( .A(n7), .B(n24), .Z(n8) );
  AO1P U17 ( .A(n22), .B(n9), .C(b[3]), .D(n8), .Z(n17) );
  ND2 U18 ( .A(b[0]), .B(n17), .Z(n11) );
  AO2 U19 ( .A(a[1]), .B(n11), .C(n10), .D(n17), .Z(n12) );
  IVP U20 ( .A(n12), .Z(n35) );
  NR2 U21 ( .A(a[0]), .B(n13), .Z(n33) );
  ND2 U22 ( .A(b[1]), .B(n33), .Z(n32) );
  EO1 U23 ( .A(n35), .B(n32), .C(b[1]), .D(n33), .Z(n28) );
  NR2 U24 ( .A(n15), .B(n14), .Z(n16) );
  ND2 U25 ( .A(n17), .B(n16), .Z(n19) );
  EN U26 ( .A(n19), .B(n18), .Z(n30) );
  IVP U27 ( .A(b[3]), .Z(n21) );
  ND2 U28 ( .A(b[2]), .B(n22), .Z(n20) );
  AO3 U29 ( .A(b[2]), .B(n22), .C(n21), .D(n20), .Z(n23) );
  ND2 U30 ( .A(n24), .B(n23), .Z(n26) );
  OR2P U31 ( .A(n25), .B(b[3]), .Z(n27) );
  AO2 U32 ( .A(n25), .B(b[3]), .C(n26), .D(n27), .Z(n36) );
  AO6 U33 ( .A(n36), .B(n27), .C(n26), .Z(c[3]) );
  FA1A U34 ( .A(b[2]), .B(n28), .CI(n30), .CO(n25), .S(n31) );
  IVP U35 ( .A(n36), .Z(n29) );
  AO2 U36 ( .A(n36), .B(n31), .C(n30), .D(n29), .Z(c[2]) );
  AO3 U37 ( .A(b[1]), .B(n33), .C(n36), .D(n32), .Z(n34) );
  EN U38 ( .A(n35), .B(n34), .Z(c[1]) );
  ND2 U39 ( .A(b[0]), .B(n36), .Z(n37) );
  EN U40 ( .A(n37), .B(a[0]), .Z(c[0]) );
endmodule

