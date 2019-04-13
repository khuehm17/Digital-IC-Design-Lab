module cau2(clock_50,KEY,HEX0,SW);
	input clock_50;
	input [0:0]KEY,SW;
	output [6:0]HEX0;
	wire [3:0]a;
	counter(SW[0],clock_50,KEY[0],a);
	seg70(a,HEX0);
endmodule


module counter(enable,clock,reset,count);
	input reset,clock,enable;
	output reg[3:0]count;
	reg [25:0]delay;
	always @(posedge clock)
	begin 
	if (delay==49999999)
		delay<=0;
		else
		delay<=delay+1;
	end
	always@(posedge clock , negedge reset)
	if(reset==0)
	count<=0;
	else 
	if (enable)
		if (delay==0)
			if(count==9)
				count<=0;
	else 
		count<=count+1;
endmodule


module seg70 (bcd, HEX);  
	input [3:0] bcd;  
	output reg [6:0]HEX;     
	always @(bcd)   
	case (bcd)       //abcdefg    
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
