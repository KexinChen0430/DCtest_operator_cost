module reduce_not_or(input[3:0] a, output[3:0] c);
	assign c = ~| a;
endmodule