/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 22:32:07 2025
/////////////////////////////////////////////////////////////


module reduce_or ( a, c );
  input [3:0] a;
  output [3:0] c;

  assign c[3] = a[3];
  assign c[2] = a[2];
  assign c[1] = a[1];
  assign c[0] = a[0];

endmodule

