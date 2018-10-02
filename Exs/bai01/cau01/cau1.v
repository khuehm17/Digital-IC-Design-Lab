module cau1(x1, x2, x3, y);
	input x1, x2, x3;
	output y;
	wire g, h, k;
	
	and(g, x1, x2);
	not(k, x2);
	and(h, k, x3);
	or(y, g, h);
endmodule