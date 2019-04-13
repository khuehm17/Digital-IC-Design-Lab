module cau2(SW,LEDR,HEX0);
	input [2:0]SW;
	output [3:0]LEDR;
	output [6:0]HEX0;
	wire [3:0]A = 4'b0110;
	wire [3:0]B = 4'b0101;
	
	alu(A, B, SW[2:0], LEDR);
	decoder(LEDR, HEX0);
endmodule


module alu(A, B, opcode, ALU_OUT);
	input [2:0]opcode;
	input wire [3:0]A,B;
	output reg [3:0]ALU_OUT;
	
	always@(*)
	case (opcode)
		3'b000: ALU_OUT = ~A;
		3'b001: ALU_OUT = A & B;
		3'b010: ALU_OUT = A | B;
		3'b100: ALU_OUT = A ^ B;
		default: ALU_OUT = 4'b0000;
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
		4'b 0101: hex = 7'b 0010010;
		4'b 0110: hex = 7'b 0000010;
		4'b 0111: hex = 7'b 1111000;
		4'b 1000: hex = 7'b 0000000;
		4'b 1001: hex = 7'b 0010000;
	endcase
endmodule