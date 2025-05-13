module cond(input[3:0] a, input[3:0] b, input s, output[3:0] c);
    assign c = s? a : b;
endmodule