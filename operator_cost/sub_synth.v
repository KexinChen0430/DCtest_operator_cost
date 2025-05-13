/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:36:49 2025
/////////////////////////////////////////////////////////////


module sub ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  EN U10 ( .A(a[3]), .B(b[3]), .Z(n10) );
  IVP U11 ( .A(a[2]), .Z(n12) );
  IVP U12 ( .A(a[1]), .Z(n15) );
  IVP U13 ( .A(b[0]), .Z(n8) );
  NR2 U14 ( .A(a[0]), .B(n8), .Z(n14) );
  EN U15 ( .A(n10), .B(n9), .Z(c[3]) );
  FA1A U16 ( .A(b[2]), .B(n12), .CI(n11), .CO(n9), .S(n13) );
  IVP U17 ( .A(n13), .Z(c[2]) );
  FA1A U18 ( .A(b[1]), .B(n15), .CI(n14), .CO(n11), .S(n16) );
  IVP U19 ( .A(n16), .Z(c[1]) );
  EO1 U20 ( .A(b[0]), .B(a[0]), .C(a[0]), .D(b[0]), .Z(c[0]) );
endmodule

