module cau2(SW, KEY, LEDR);
	input [8:0]SW; // SW[3:0] = D0, SW[7:4] = D1, SW[8] = s
	input [0:0]KEY;
	output wire [3:0]LEDR; // LEDR[3:0] = q
	wire [3:0]d;
	
	mux_21_4b(SW[3:0], SW[7:4], SW[8], d);
	FF_D_4b(d, KEY[0], LEDR[3:0]);
endmodule

module mux_21_4b(x, y, s, m);
	input [3:0]x, y;
	input s;
	output [3:0]m;
	
	assign m = s?y:x;
endmodule

module FF_D_4b(d, clk, q);
	input [3:0]d;
	input clk;
	output reg [3:0]q;
	
	always @(posedge clk)
		q <= d;
endmodule