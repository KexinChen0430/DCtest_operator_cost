/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP4
// Date      : Sun May 11 23:12:08 2025
/////////////////////////////////////////////////////////////


module sparc_exu_aluadder64 ( rs1_data, rs2_data, cin, adder_out, cout32, 
        cout64 );
  input [63:0] rs1_data;
  input [63:0] rs2_data;
  output [63:0] adder_out;
  input cin;
  output cout32, cout64;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62;

  FA1A U1 ( .A(rs2_data[63]), .B(rs1_data[63]), .CI(n1), .CO(cout64), .S(
        adder_out[63]) );
  FA1A U2 ( .A(rs2_data[62]), .B(rs1_data[62]), .CI(n2), .CO(n1), .S(
        adder_out[62]) );
  FA1A U3 ( .A(rs2_data[61]), .B(rs1_data[61]), .CI(n3), .CO(n2), .S(
        adder_out[61]) );
  FA1A U4 ( .A(rs2_data[60]), .B(rs1_data[60]), .CI(n4), .CO(n3), .S(
        adder_out[60]) );
  FA1A U5 ( .A(rs2_data[59]), .B(rs1_data[59]), .CI(n5), .CO(n4), .S(
        adder_out[59]) );
  FA1A U6 ( .A(rs2_data[58]), .B(rs1_data[58]), .CI(n6), .CO(n5), .S(
        adder_out[58]) );
  FA1A U7 ( .A(rs2_data[57]), .B(rs1_data[57]), .CI(n7), .CO(n6), .S(
        adder_out[57]) );
  FA1A U8 ( .A(rs2_data[56]), .B(rs1_data[56]), .CI(n8), .CO(n7), .S(
        adder_out[56]) );
  FA1A U9 ( .A(rs2_data[55]), .B(rs1_data[55]), .CI(n9), .CO(n8), .S(
        adder_out[55]) );
  FA1A U10 ( .A(rs2_data[54]), .B(rs1_data[54]), .CI(n10), .CO(n9), .S(
        adder_out[54]) );
  FA1A U11 ( .A(rs2_data[53]), .B(rs1_data[53]), .CI(n11), .CO(n10), .S(
        adder_out[53]) );
  FA1A U12 ( .A(rs2_data[52]), .B(rs1_data[52]), .CI(n12), .CO(n11), .S(
        adder_out[52]) );
  FA1A U13 ( .A(rs2_data[51]), .B(rs1_data[51]), .CI(n13), .CO(n12), .S(
        adder_out[51]) );
  FA1A U14 ( .A(rs2_data[50]), .B(rs1_data[50]), .CI(n14), .CO(n13), .S(
        adder_out[50]) );
  FA1A U15 ( .A(rs2_data[49]), .B(rs1_data[49]), .CI(n15), .CO(n14), .S(
        adder_out[49]) );
  FA1A U16 ( .A(rs2_data[48]), .B(rs1_data[48]), .CI(n16), .CO(n15), .S(
        adder_out[48]) );
  FA1A U17 ( .A(rs2_data[47]), .B(rs1_data[47]), .CI(n17), .CO(n16), .S(
        adder_out[47]) );
  FA1A U18 ( .A(rs2_data[46]), .B(rs1_data[46]), .CI(n18), .CO(n17), .S(
        adder_out[46]) );
  FA1A U19 ( .A(rs2_data[45]), .B(rs1_data[45]), .CI(n19), .CO(n18), .S(
        adder_out[45]) );
  FA1A U20 ( .A(rs2_data[44]), .B(rs1_data[44]), .CI(n20), .CO(n19), .S(
        adder_out[44]) );
  FA1A U21 ( .A(rs2_data[43]), .B(rs1_data[43]), .CI(n21), .CO(n20), .S(
        adder_out[43]) );
  FA1A U22 ( .A(rs2_data[42]), .B(rs1_data[42]), .CI(n22), .CO(n21), .S(
        adder_out[42]) );
  FA1A U23 ( .A(rs2_data[41]), .B(rs1_data[41]), .CI(n23), .CO(n22), .S(
        adder_out[41]) );
  FA1A U24 ( .A(rs2_data[40]), .B(rs1_data[40]), .CI(n24), .CO(n23), .S(
        adder_out[40]) );
  FA1A U25 ( .A(rs2_data[39]), .B(rs1_data[39]), .CI(n25), .CO(n24), .S(
        adder_out[39]) );
  FA1A U26 ( .A(rs2_data[38]), .B(rs1_data[38]), .CI(n26), .CO(n25), .S(
        adder_out[38]) );
  FA1A U27 ( .A(rs2_data[37]), .B(rs1_data[37]), .CI(n27), .CO(n26), .S(
        adder_out[37]) );
  FA1A U28 ( .A(rs2_data[36]), .B(rs1_data[36]), .CI(n28), .CO(n27), .S(
        adder_out[36]) );
  FA1A U29 ( .A(rs2_data[35]), .B(rs1_data[35]), .CI(n29), .CO(n28), .S(
        adder_out[35]) );
  FA1A U30 ( .A(rs2_data[34]), .B(rs1_data[34]), .CI(n30), .CO(n29), .S(
        adder_out[34]) );
  FA1A U31 ( .A(rs2_data[33]), .B(rs1_data[33]), .CI(n31), .CO(n30), .S(
        adder_out[33]) );
  FA1A U32 ( .A(rs2_data[32]), .B(rs1_data[32]), .CI(cout32), .CO(n31), .S(
        adder_out[32]) );
  FA1A U33 ( .A(rs2_data[31]), .B(rs1_data[31]), .CI(n32), .CO(cout32), .S(
        adder_out[31]) );
  FA1A U34 ( .A(rs2_data[30]), .B(rs1_data[30]), .CI(n33), .CO(n32), .S(
        adder_out[30]) );
  FA1A U35 ( .A(rs2_data[29]), .B(rs1_data[29]), .CI(n34), .CO(n33), .S(
        adder_out[29]) );
  FA1A U36 ( .A(rs2_data[28]), .B(rs1_data[28]), .CI(n35), .CO(n34), .S(
        adder_out[28]) );
  FA1A U37 ( .A(rs2_data[27]), .B(rs1_data[27]), .CI(n36), .CO(n35), .S(
        adder_out[27]) );
  FA1A U38 ( .A(rs2_data[26]), .B(rs1_data[26]), .CI(n37), .CO(n36), .S(
        adder_out[26]) );
  FA1A U39 ( .A(rs2_data[25]), .B(rs1_data[25]), .CI(n38), .CO(n37), .S(
        adder_out[25]) );
  FA1A U40 ( .A(rs2_data[24]), .B(rs1_data[24]), .CI(n39), .CO(n38), .S(
        adder_out[24]) );
  FA1A U41 ( .A(rs2_data[23]), .B(rs1_data[23]), .CI(n40), .CO(n39), .S(
        adder_out[23]) );
  FA1A U42 ( .A(rs2_data[22]), .B(rs1_data[22]), .CI(n41), .CO(n40), .S(
        adder_out[22]) );
  FA1A U43 ( .A(rs2_data[21]), .B(rs1_data[21]), .CI(n42), .CO(n41), .S(
        adder_out[21]) );
  FA1A U44 ( .A(rs2_data[20]), .B(rs1_data[20]), .CI(n43), .CO(n42), .S(
        adder_out[20]) );
  FA1A U45 ( .A(rs2_data[19]), .B(rs1_data[19]), .CI(n44), .CO(n43), .S(
        adder_out[19]) );
  FA1A U46 ( .A(rs2_data[18]), .B(rs1_data[18]), .CI(n45), .CO(n44), .S(
        adder_out[18]) );
  FA1A U47 ( .A(rs2_data[17]), .B(rs1_data[17]), .CI(n46), .CO(n45), .S(
        adder_out[17]) );
  FA1A U48 ( .A(rs2_data[16]), .B(rs1_data[16]), .CI(n47), .CO(n46), .S(
        adder_out[16]) );
  FA1A U49 ( .A(rs2_data[15]), .B(rs1_data[15]), .CI(n48), .CO(n47), .S(
        adder_out[15]) );
  FA1A U50 ( .A(rs2_data[14]), .B(rs1_data[14]), .CI(n49), .CO(n48), .S(
        adder_out[14]) );
  FA1A U51 ( .A(rs2_data[13]), .B(rs1_data[13]), .CI(n50), .CO(n49), .S(
        adder_out[13]) );
  FA1A U52 ( .A(rs2_data[12]), .B(rs1_data[12]), .CI(n51), .CO(n50), .S(
        adder_out[12]) );
  FA1A U53 ( .A(rs2_data[11]), .B(rs1_data[11]), .CI(n52), .CO(n51), .S(
        adder_out[11]) );
  FA1A U54 ( .A(rs2_data[10]), .B(rs1_data[10]), .CI(n53), .CO(n52), .S(
        adder_out[10]) );
  FA1A U55 ( .A(rs2_data[9]), .B(rs1_data[9]), .CI(n54), .CO(n53), .S(
        adder_out[9]) );
  FA1A U56 ( .A(rs2_data[8]), .B(rs1_data[8]), .CI(n55), .CO(n54), .S(
        adder_out[8]) );
  FA1A U57 ( .A(rs2_data[7]), .B(rs1_data[7]), .CI(n56), .CO(n55), .S(
        adder_out[7]) );
  FA1A U58 ( .A(rs2_data[6]), .B(rs1_data[6]), .CI(n57), .CO(n56), .S(
        adder_out[6]) );
  FA1A U59 ( .A(rs2_data[5]), .B(rs1_data[5]), .CI(n58), .CO(n57), .S(
        adder_out[5]) );
  FA1A U60 ( .A(rs2_data[4]), .B(rs1_data[4]), .CI(n59), .CO(n58), .S(
        adder_out[4]) );
  FA1A U61 ( .A(rs2_data[3]), .B(rs1_data[3]), .CI(n60), .CO(n59), .S(
        adder_out[3]) );
  FA1A U62 ( .A(rs2_data[2]), .B(rs1_data[2]), .CI(n61), .CO(n60), .S(
        adder_out[2]) );
  FA1A U63 ( .A(rs2_data[1]), .B(rs1_data[1]), .CI(n62), .CO(n61), .S(
        adder_out[1]) );
  FA1A U64 ( .A(rs2_data[0]), .B(cin), .CI(rs1_data[0]), .CO(n62), .S(
        adder_out[0]) );
endmodule

