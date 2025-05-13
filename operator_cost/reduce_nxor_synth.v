/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:30:05 2025
/////////////////////////////////////////////////////////////


module reduce_nxor ( a, c );
  input [3:0] a;
  output [3:0] c;
  wire   n4, n5;
  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  EN U7 ( .A(a[1]), .B(a[0]), .Z(n4) );
  EN U8 ( .A(n4), .B(a[3]), .Z(n5) );
  EN U9 ( .A(a[2]), .B(n5), .Z(c[0]) );
endmodule

