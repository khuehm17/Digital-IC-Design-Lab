module cau10(CLOCK_50,KEY,SW,HEX0, HEX1);
	input CLOCK_50;
	input [0:0]KEY;
	input [1:0]SW;
	output [6:0]HEX0, HEX1;
	wire [3:0]a,b;
		counter (CLOCK_50, KEY[0],SW[0],SW[1], a,b);
		display_0_9 (a, HEX0);
		display_0_9 (b, HEX1);
endmodule

module counter(CLOCK_50,reset,enable,select,BCD0, BCD1);
	input reset,CLOCK_50,enable,select;
	output reg[3:0]BCD0, BCD1;
	reg [25:0]delay;
	//tao delay 1s
	always @(posedge CLOCK_50)
		begin
			if(delay==49999999)
				delay<=0;
			else
			delay=delay+1;
		end
	always@(posedge CLOCK_50 or negedge reset)
		if(!reset)
			begin
				BCD0<=9;
				BCD1<=9;
			end
		else
		if (enable)
		begin
			if(select==0)
			begin
			if(delay==0)
					begin
						if(BCD0==0)
							begin
								BCD0<=9;
									if(BCD1==0)
										BCD1<=9;
									else
										BCD1<=BCD1-1;
							end
						else
							BCD0<=BCD0-1;
					end
					end
					
					else
						begin
			if(delay==0)
					begin
						if(BCD0==9)
							begin
								BCD0<=0;
									if(BCD1==9)
										BCD1<=0;
									else
										BCD1<=BCD1+1;
										
								end
						else
							BCD0<=BCD0+1;
					
					end
					end
					end
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
