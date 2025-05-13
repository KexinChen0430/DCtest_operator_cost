/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:25:21 2025
/////////////////////////////////////////////////////////////


module reduce_and ( a, c );
  input [3:0] a;
  output [3:0] c;

  assign c[1] = 1'b0;
  assign c[2] = 1'b0;
  assign c[3] = 1'b0;

  AN4P U5 ( .A(a[2]), .B(a[3]), .C(a[0]), .D(a[1]), .Z(c[0]) );
endmodule

