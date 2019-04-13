module cau1(SW,LEDR,HEX0,HEX1);
	input [2:0]SW;
	output [8:0]LEDR;
	output[6:0]HEX0,HEX1;
	wire [7:0]alu_out;
	wire [7:0]A=8'b11111111;
	wire [7:0]B=8'b11111111;
	alu_logic(A,B,SW[2:0],alu_out,LEDR[8]);
	assign LEDR[7:0]=alu_out;

	decoder (alu_out[3:0],HEX0);
	decoder (alu_out[7:4],HEX1);
endmodule


module alu_logic(A,B,opcode,alu_out,ovf);
	input [7:0]A,B;
	input [2:0]opcode;
	output reg[7:0]alu_out;
	output reg ovf;
	always @(*)
	begin
	case (opcode)
	3'b000: 
		begin
		alu_out=A+B;
		ovf=(A[7]&B[7]&~alu_out[7])|~(A[7]&~B[7]&alu_out[7])|(A[7]&B[7]&alu_out[7]);
		end
	3'b001:
		begin
		alu_out=A-B;
		ovf=0;
		end
	3'b010:
		begin
		alu_out =A-1;
		ovf=0;
		end
	3'b011: 
		begin
		alu_out=A+1;
		ovf=(A[7]&1&~alu_out[7])|~(A[7]&~1&alu_out[7])|(A[7]&1&alu_out[7]);
		end
	3'b100:
		begin
		alu_out=A&B;
		ovf = 0;
		end
	3'b101:
		begin
		alu_out=A|B;
		ovf=0;
		end
	default: 
		begin
		alu_out =~A;
		ovf=0;
		end
	endcase
	end
endmodule


module decoder(c,hex);
	input [7:0]c;
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
	4'b1010: hex = 7'b0001000; //A
	4'b1011: hex= 7'b0000011; //B
	4'b1100: hex = 7'b1000110; //C
	4'b1101: hex= 7'b0100001; //D
	4'b1110: hex = 7'b0000110; //E
	4'b1111: hex = 7'b0001110; //F	
	endcase
endmodule
