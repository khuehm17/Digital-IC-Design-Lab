module cau04(a, b, s, y0, y1, y2, y3);
	input a, b, s;
	//output [3:0]y;
	//assign y0 = ~a & ~b & s;
	//assign y1 = a & ~b & s;
	//assign y2 = ~a & b & s;
	//assign y3 = a & b & s;
	output y0, y1, y2, y3;
	assign y0 = ~a & ~b & s;
	assign y1 = a & ~b & s;
	assign y2 = ~a & b & s;
	assign y3 = a & b & s;
endmodule
	