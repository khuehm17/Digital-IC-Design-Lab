module top_module(x1, x2, x3, y);
	input x1, x2, x3;
	output y;
	wire g, h, k;
	
	and(g, x1, x2);
	nor(k, x2);
	and(h, k, x3);
	or(y, g, h);
endmodule
