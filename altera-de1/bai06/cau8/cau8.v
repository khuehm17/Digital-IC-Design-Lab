module cau8(SW, HEX0, HEX1, HEX2, CLOCK_50, KEY);
	input [0:0]SW;
	input [0:0]KEY;
	input CLOCK_50;
	output [6:0]HEX0, HEX1, HEX2;
	wire [3:0]a, b,c;
	counter(CLOCK_50, KEY[0], a, b, c, SW[0]);
	display_0_9(a, HEX0);
	display_0_9(b, HEX1);
	display_0_9(c, HEX2);
endmodule


module counter(clock,reset,BCD0, BCD1, BCD2, enable);
	input reset,clock, enable;
	output reg[3:0]BCD0, BCD1,BCD2;
	reg [25:0]count;
	always @(posedge clock)
			begin
				if(count==1000000)
					count<=0;
				else
					count=count+1;
			end
	always@(posedge clock)
		if(!reset)
			begin
				BCD0<=0;
				BCD1<=0;
				BCD2<=0;
			end
		else
			if(enable)//mach dem len
			begin
				if(count==0)
					begin
						if(BCD0==9)
							begin
								if(BCD1==9)
									begin
										if (BCD2==9)
											begin
												BCD2<=0;
												BCD1<=0;
												BCD0<=0;
											end
										else
											begin
												BCD2<=BCD2+1;
												BCD1<=0;
												BCD0<=0;
											end
									end
								else
									begin
										BCD1<=BCD1+1;
										BCD0<=0;
									end
							end
						else
							BCD0<=BCD0+1;
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
