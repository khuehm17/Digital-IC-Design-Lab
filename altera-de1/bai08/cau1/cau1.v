module cau1(SW,LEDR);
	input [2:0]SW;
	output [3:0]LEDR;
	wire [3:0]A = 4'b0110;
	wire [3:0]B = 4'b0101;
	alu(A, B, SW[2:0], LEDR);
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
