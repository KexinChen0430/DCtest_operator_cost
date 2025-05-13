/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:16:26 2025
/////////////////////////////////////////////////////////////


module logical_neq ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n6, n7, n8, n9;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  EN U9 ( .A(a[3]), .B(b[3]), .Z(n9) );
  EN U10 ( .A(a[2]), .B(b[2]), .Z(n8) );
  EN U11 ( .A(a[1]), .B(b[1]), .Z(n7) );
  EN U12 ( .A(a[0]), .B(b[0]), .Z(n6) );
  ND4 U13 ( .A(n9), .B(n8), .C(n7), .D(n6), .Z(c[0]) );
endmodule

