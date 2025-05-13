/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 21:58:19 2025
/////////////////////////////////////////////////////////////


module add ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n6, n7, n8, n9, n10;

  EN U8 ( .A(b[3]), .B(a[3]), .Z(n7) );
  AN2P U9 ( .A(b[0]), .B(a[0]), .Z(n10) );
  EN U10 ( .A(n7), .B(n6), .Z(c[3]) );
  FA1A U11 ( .A(a[1]), .B(b[1]), .CI(n10), .CO(n8), .S(c[1]) );
  FA1A U12 ( .A(a[2]), .B(b[2]), .CI(n8), .CO(n6), .S(c[2]) );
  NR2 U13 ( .A(b[0]), .B(a[0]), .Z(n9) );
  NR2 U14 ( .A(n10), .B(n9), .Z(c[0]) );
endmodule

