module cau3(LEDR,KEY,CLOCK_50,HEX0,HEX1,HEX2,HEX3);
	input [0:0]CLOCK_50,KEY;
	output [7:0]LEDR;
	output [6:0]HEX0,HEX1,HEX2,HEX3;
	wire [3:0]bcd0, bcd1, bcd2, bcd3, led0, led1;

	Counter(CLOCK_50,KEY[0],bcd0,bcd1,bcd2,bcd3,led0);
	decoder a (bcd0,HEX0);
	decoder b (bcd1,HEX1);
	decoder c (bcd2,HEX2);
	decoder d (bcd3,HEX3);
	assign LEDR[7:0] = led0;
endmodule


module Counter(clock,reset,bcd0,bcd1,bcd2,bcd3,led0);
	input clock,reset;
	output reg [3:0]bcd0,bcd1,bcd2,bcd3;
	output reg [7:0]led0;
	reg [25:0]count;

	always @(posedge clock)
			begin
				if (count==99999)
					count <=0;
				else
					count <= count + 1;
			end
	always@(posedge clock)
			begin
					if (!reset)
					begin
						bcd0<=0;
						bcd1<=0;
						bcd2<=0;
						bcd3<=0;
						led0<=0;
					end
					else
						if (count == 0)
						begin						
							if (bcd0 == 9)
							begin 
								bcd0 <= 0;
								if (bcd1 == 5)
									begin
									bcd1 <= 0;
										if (bcd2 == 9)
										begin
										bcd2 <= 0;
											if (bcd3 == 5)
												begin 
												bcd3 <= 0;
												if (led0 == 23)
													begin
														led0 <= 0;
														bcd0 <= 0;
														bcd1 <= 0;
														bcd2 <= 0;
														bcd3 <= 0;
													end
												else
													begin
														if (led0 == 23)
															led0 <= 0;
														else led0 <= led0 + 1;
													end
												end
											else bcd3 <= bcd3 + 1;
											end
											else bcd2 <= bcd2 + 1;
												end
											else bcd1 <= bcd1 + 1;
									end
								else bcd0 <= bcd0 + 1;
							end				
			end	
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
