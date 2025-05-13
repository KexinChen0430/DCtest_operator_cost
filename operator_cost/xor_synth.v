/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:37:31 2025
/////////////////////////////////////////////////////////////


module sub ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n28, n29, n30, n31, n32, n33, n34;

  EO U21 ( .A(b[3]), .B(a[3]), .Z(n29) );
  IVP U22 ( .A(b[2]), .Z(n31) );
  IVP U23 ( .A(b[1]), .Z(n34) );
  IVP U24 ( .A(a[0]), .Z(n32) );
  ND2 U25 ( .A(b[0]), .B(n32), .Z(n33) );
  EN U26 ( .A(n29), .B(n28), .Z(c[3]) );
  FA1A U27 ( .A(a[2]), .B(n31), .CI(n30), .CO(n28), .S(c[2]) );
  AO7 U28 ( .A(b[0]), .B(n32), .C(n33), .Z(c[0]) );
  FA1A U29 ( .A(a[1]), .B(n34), .CI(n33), .CO(n30), .S(c[1]) );
endmodule

