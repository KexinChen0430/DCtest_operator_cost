/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:20:28 2025
/////////////////////////////////////////////////////////////


module lt ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n9, n10, n11, n12, n13, n14, n15;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  IVP U12 ( .A(b[1]), .Z(n9) );
  AO6 U13 ( .A(a[1]), .B(n9), .C(a[0]), .Z(n10) );
  EO1 U14 ( .A(b[0]), .B(n10), .C(n9), .D(a[1]), .Z(n12) );
  IVP U15 ( .A(b[2]), .Z(n11) );
  AO5 U16 ( .A(n12), .B(a[2]), .C(n11), .Z(n13) );
  NR2 U17 ( .A(b[3]), .B(n13), .Z(n15) );
  ND2 U18 ( .A(b[3]), .B(n13), .Z(n14) );
  AO7 U19 ( .A(a[3]), .B(n15), .C(n14), .Z(c[0]) );
endmodule

