module cau4(CLOCK_50, KEY, SW, HEX0, HEX1, LEDR);
	input CLOCK_50;
	input [0:0]KEY;
	input [8:0]SW;
	output [6:0]HEX0, HEX1;
	output [9:0]LEDR;
	wire [3:0]a,b;

	counter (CLOCK_50, KEY[0],SW[8], a, b, SW[3:0], SW[7:4], LEDR);
	display_0_9 (a, HEX0);
	display_0_9 (b, HEX1);
endmodule

module counter(CLOCK_50, reset, enable, BCD0, BCD1, var0, var1, led);
	input reset,CLOCK_50,enable;
	input [3:0]var0, var1;
	output reg[3:0]BCD0, BCD1;
	output reg[9:0]led;
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
				BCD0 <= 9;
				BCD1 <= 9;
				led = 10'b0000000000;
			end
		else
		if (enable == 1)
		begin
			if(delay == 0)
				begin
					if(BCD0 == 0)
						begin
							BCD0 <= 9;
							if(BCD1 == 0)
								begin
								BCD1 <= 9;
								end
							else									
								BCD1 <= BCD1 - 1;
						end
					else
						BCD0 <= BCD0 - 1;
						if ((BCD0 == var0) && (BCD1 == var1)) 
						begin
							led = 10'b1111111111;
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
