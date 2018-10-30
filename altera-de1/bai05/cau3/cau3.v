module cau3(SW, KEY, HEX0, HEX1);
	input [0:0]SW;   // T
	input [1:0]KEY;  // clk = key0, rst = key1
	output [6:0]HEX0, HEX1;
	wire [7:0]q, t;
	
	// 4 High bits
	FF_T(SW[0], KEY[1], KEY[0], q[0]);
	and(t[1], SW[0], q[0]);
	FF_T(t[1], KEY[1], KEY[0], q[1]);
	and(t[2], t[1], q[1]);
	FF_T(t[2], KEY[1], KEY[0], q[2]);
	and(t[3], t[2], q[2]);
	FF_T(t[3], KEY[1], KEY[0], q[3]);
	// 4 Low bits
	and(t[4], t[3], q[3]);
	FF_T(t[4], KEY[1], KEY[0], q[4]);
	and(t[5], t[4], q[4]);
	FF_T(t[5], KEY[1], KEY[0], q[5]);
	and(t[6], t[5], q[5]);
	FF_T(t[6], KEY[1], KEY[0], q[6]);
	and(t[7], t[6], q[6]);
	FF_T(t[7], KEY[1], KEY[0], q[7]);
	
	
	Decoder_HEX(q[3:0], HEX0);
	Decoder_HEX(q[7:4], HEX1);
endmodule


module FF_T(t, rst, clk, q);
	input t, rst, clk;
	output reg q;
	
	always@(posedge clk or negedge rst)
		if(!rst)
			q <= 1'b0;
		else
			if(t)
				q <= ~q;
endmodule


module Decoder_HEX(c,HEX);
	input[3:0]c;
	output [6:0]HEX;
	reg[6:0]HEX;
	always@(c)
		case(c)
		4'b0000: HEX = 7'b1000000;
		4'b0001: HEX = 7'b1111001;
		4'b0010: HEX = 7'b0100100;
		4'b0011: HEX = 7'b0110000;
		4'b0100: HEX = 7'b0011001;
		4'b0101: HEX = 7'b0010010;
		4'b0110: HEX = 7'b0000010;
		4'b0111: HEX = 7'b1111000;
		4'b1000: HEX = 7'b0000000;
		4'b1001: HEX = 7'b0010000;
		4'b1010: HEX = 7'b0001000; //A
		4'b1011: HEX = 7'b0000011; //B
		4'b1100: HEX = 7'b1000110; //C
		4'b1101: HEX = 7'b0100001; //D
		4'b1110: HEX = 7'b0000110; //E
		4'b1111: HEX = 7'b0001110; //F
		default: HEX = 7'b1111111;
	endcase
endmodule

