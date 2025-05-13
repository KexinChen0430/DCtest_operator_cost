module reduce_not_and(input[3:0] a, output[3:0] c);
	assign c = ~& a;
endmodule