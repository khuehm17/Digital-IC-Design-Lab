module cau3(SW, LEDR, HEX0);
	input [0:9]SW;
	output [3:0]LEDR;
	output [6:0]HEX0;
	
	decode_10_4(SW, LEDR);
	display_0_9(LEDR, HEX0);
endmodule


module decode_10_4(i, f);
	input [9:0]i;
	output reg [3:0]f;
	
	always@(i)
	case(i)
		10'b1000000000: f = 4'b0000;
		10'b0100000000: f = 4'b0001;
		10'b0010000000: f = 4'b0010;
		10'b0001000000: f = 4'b0011;
		10'b0000100000: f = 4'b0100;
		10'b0000010000: f = 4'b0101;
		10'b0000001000: f = 4'b0110;
		10'b0000000100: f = 4'b0111;
		10'b0000000010: f = 4'b1000;
		10'b0000000001: f = 4'b1001;
	endcase
endmodule


module display_0_9(c,hex);
	input [3:0]c;
	output reg [6:0]hex;
	always@(c)
		case(c)
			4'b0000 :hex =7'b1000000;
			4'b0001 :hex =7'b1111001;
			4'b0010 :hex =7'b0100100;
			4'b0011 :hex =7'b0110000;
			4'b0100 :hex =7'b0011001;
			4'b0101 :hex =7'b0010010;
			4'b0110 :hex =7'b0000010;
			4'b0111 :hex =7'b1111000;
			4'b1000 :hex =7'b0000000;
			4'b1001 :hex =7'b0010000;
			default :hex =7'b1111111;
		endcase
endmodule


