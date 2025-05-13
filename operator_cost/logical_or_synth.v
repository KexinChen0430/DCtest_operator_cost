/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:18:56 2025
/////////////////////////////////////////////////////////////


module logical_or ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n3, n4;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  NR4 U7 ( .A(a[3]), .B(a[2]), .C(a[1]), .D(a[0]), .Z(n4) );
  NR4 U8 ( .A(b[3]), .B(b[2]), .C(b[1]), .D(b[0]), .Z(n3) );
  ND2 U9 ( .A(n4), .B(n3), .Z(c[0]) );
endmodule

