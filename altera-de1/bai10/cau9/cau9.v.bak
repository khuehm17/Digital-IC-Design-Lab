module cau8(SW, KEY, HEX0, HEX1);
	input [1:0]SW;
	input [1:0]KEY;
	output [6:0]HEX0;
	output [6:0]HEX1;
	wire [7:0]bcd;
	
	counter(SW[0], SW[1], KEY[1], KEY[0], bcd);
	Decoder_HEX(bcd[3:0], HEX0);	
	Decoder_HEX(bcd[7:4], HEX1);	
endmodule


module counter(en, s, rst, clk, bcd);
	parameter n = 8; 
	input s, en, rst, clk;
	output reg [n-1:0]bcd;
	
	always@(posedge clk or negedge rst)
		if(!rst)
			bcd <= 0;
		else if(en)
			bcd <= bcd + (s?1:-1);
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

