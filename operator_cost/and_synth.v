/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:01:21 2025
/////////////////////////////////////////////////////////////


module add ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [3:0] c;
  wire   n16, n17, n18, n19, n20;

  EN U15 ( .A(a[3]), .B(b[3]), .Z(n17) );
  AN2P U16 ( .A(a[0]), .B(b[0]), .Z(n20) );
  EN U17 ( .A(n17), .B(n16), .Z(c[3]) );
  FA1A U18 ( .A(a[1]), .B(b[1]), .CI(n20), .CO(n18), .S(c[1]) );
  FA1A U19 ( .A(b[2]), .B(a[2]), .CI(n18), .CO(n16), .S(c[2]) );
  NR2 U20 ( .A(a[0]), .B(b[0]), .Z(n19) );
  NR2 U21 ( .A(n20), .B(n19), .Z(c[0]) );
endmodule

