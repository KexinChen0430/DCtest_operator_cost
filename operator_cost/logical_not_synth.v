/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:17:56 2025
/////////////////////////////////////////////////////////////


module logical_not ( a, c );
  input [3:0] a;
  output [3:0] c;

  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  NR4 U5 ( .A(a[3]), .B(a[2]), .C(a[1]), .D(a[0]), .Z(c[0]) );
endmodule

