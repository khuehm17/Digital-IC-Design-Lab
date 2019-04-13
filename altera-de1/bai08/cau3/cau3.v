module cau3(SW,LEDR,HEX0,HEX1);
	input [2:0]SW;
	output [7:0]LEDR;
	output [6:0]HEX0,HEX1;
	wire [7:0]A = 8'b01010110;
	wire [7:0]B = 8'b10110101;
	alu(A, B, SW[2:0], LEDR[7:0]);
	decoder(LEDR[3:0], HEX0);
	decoder(LEDR[7:4], HEX1);
endmodule


module alu(A, B, opcode, ALU_OUT);
	input [2:0]opcode;
	input wire [7:0]A,B;
	output reg [7:0]ALU_OUT;
	
	always@(*)
	case (opcode)
		3'b000: ALU_OUT = ~A;
		3'b001: ALU_OUT = A & B;
		3'b010: ALU_OUT = A | B;
		3'b100: ALU_OUT = A ^ B;
		default: ALU_OUT = 4'b00000000;
	endcase 
endmodule


module decoder(c,hex);
	input [3:0]c;
	output reg [6:0]hex;
	always@(c)
	case (c)
		4'b 0000: hex = 7'b 1000000; 
		4'b 0001: hex = 7'b 1111001; 
		4'b 0010: hex = 7'b 0100100; 
		4'b 0011: hex = 7'b 0110000; 
		4'b 0100: hex = 7'b 0011001; 
		4'b 0101: hex = 7'b 0100100; 
		4'b 0110: hex = 7'b 0100000; 
		4'b 0111: hex = 7'b 1111000; 
		4'b 1000: hex = 7'b 0000000; 
		4'b 1001: hex = 7'b 0011000; 
		4'b 1010: hex = 7'b 0001000; 
		4'b 1011: hex = 7'b 0000011; 
		4'b 1100: hex = 7'b 1000110; 
		4'b 1101: hex = 7'b 0100001; 
		4'b 1110: hex = 7'b 0000110; 
		4'b 1111: hex = 7'b 0001110; 
	endcase
endmodule