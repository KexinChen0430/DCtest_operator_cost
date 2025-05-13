/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:50:51 2025
/////////////////////////////////////////////////////////////


module mul ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51;

  AN2P U22 ( .A(a[0]), .B(b[0]), .Z(c[0]) );
  ND2 U23 ( .A(a[0]), .B(b[1]), .Z(n50) );
  AN3 U24 ( .A(b[2]), .B(a[1]), .C(n50), .Z(n38) );
  AN2P U25 ( .A(b[1]), .B(a[1]), .Z(n51) );
  ND2 U26 ( .A(c[0]), .B(n51), .Z(n47) );
  ND2 U27 ( .A(b[2]), .B(a[0]), .Z(n36) );
  EO U28 ( .A(n36), .B(n51), .Z(n46) );
  ND2 U29 ( .A(b[0]), .B(a[2]), .Z(n45) );
  EO U30 ( .A(n38), .B(n37), .Z(n40) );
  ND2 U31 ( .A(a[2]), .B(b[1]), .Z(n39) );
  EN U32 ( .A(n40), .B(n39), .Z(n44) );
  ND2 U33 ( .A(a[3]), .B(b[0]), .Z(n42) );
  ND2 U34 ( .A(b[3]), .B(a[0]), .Z(n41) );
  EO U35 ( .A(n42), .B(n41), .Z(n43) );
  EN U36 ( .A(n44), .B(n43), .Z(c[3]) );
  FA1A U37 ( .A(n47), .B(n46), .CI(n45), .CO(n37), .S(n48) );
  IVP U38 ( .A(n48), .Z(c[2]) );
  ND2 U39 ( .A(b[0]), .B(a[1]), .Z(n49) );
  AO2 U40 ( .A(n51), .B(c[0]), .C(n50), .D(n49), .Z(c[1]) );
endmodule

