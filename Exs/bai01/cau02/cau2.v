module cau2(x1, x2, x3, x4, y, g, h);
	input x1, x2, x3, x4;
	output y, g, h;
	wire a, b, c, d;
	
	and(a, x1, x3);
	and(b, x2, x4);
	or(c, x1, ~x3);
	or(d, x4, ~x2);
	or(g, a, b);
	and(h, c, d);
	or(y, g, h);
endmodule