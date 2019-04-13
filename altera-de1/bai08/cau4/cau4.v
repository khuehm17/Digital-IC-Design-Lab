module cau4(SW,HEX0,HEX1,LEDR);
	input [5:0]SW;
	output [7:0]LEDR;
	output [6:0]HEX0,HEX1;
	wire [7:0]x=8'b01010110;
	wire [7:0]y=8'b10110101;
	alu(SW[4:0],SW[5],x,y,LEDR);
	decoder(LEDR[3:0],HEX0);
	decoder(LEDR[7:4],HEX1);
endmodule


module alu(sel,car_in,A,B,Y);
	input [4:0]sel;
	input car_in;
	input wire [7:0]A,B;
	output reg [7:0]Y;
	reg [7:0]alu_logic, alu_arith;
	always @ (sel or A or B or car_in)
	begin
	case (sel[1:0])
		2'b00:alu_logic=A&B;
		2'b01:alu_logic=A|B;
		2'b10:alu_logic=A^B;
		2'b11:alu_logic=!A;  
	endcase	
	case ({sel[1:0],car_in})
		3'b000:alu_arith=A;
		3'b001:alu_arith=A+1;
		3'b010:alu_arith=A+B;
		3'b011:alu_arith=A+B+1;
		3'b100:alu_arith= A+!B;
		3'b101:alu_arith=A-!B+1;
		3'b110:alu_arith=A-1;
		3'b111:alu_arith=A;
	endcase
	if(sel[2])
		Y = alu_logic;
	case(sel[4:3])
		2'b00: Y=alu_arith;
		2'b01: Y<= (A<<1);
		2'b10: Y<= (A>>1);
		2'b11: Y<=0;
	endcase
	end
endmodule


module decoder (bcd, HEX);  
input [3:0] bcd;  
output reg [6:0]HEX;     
always @(bcd)   
case (bcd)  
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
		4'b1010: HEX = 7'b0001000;
		4'b1011: HEX = 7'b0000011;
		4'b1100: HEX = 7'b1000110;
		4'b1101: HEX = 7'b0100001;
		4'b1110: HEX = 7'b0000110;
		4'b1111: HEX = 7'b0001110;
		default: HEX = 7'b1111111;
	endcase
endmodule
