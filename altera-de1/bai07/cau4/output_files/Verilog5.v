module B1(CLOCK_50,KEY,HEX0,HEX1,LEDR,LEDG);
	input CLOCK_50;
	input [0:0]KEY;
	output [0:6]HEX0,HEX1;
	output [0:0]LEDR,LEDG;
	wire [3:0]giay0,giay1;
	count (CLOCK_50,KEY[0],giay0,giay1,LEDG[0],LEDR[0]);
	decoder_BCD dv (giay0,HEX0);
decoder_BCD ch (giay1,HEX1);
endmodule

module count (CLK,CLR,giay0,giay1,green,red);
	input CLK,CLR;
	output reg [3:0]giay0,giay1;
	output reg green,red;
	reg [26:0]count;
	always @ (posedge CLK)
		if (count==10000000) count <= 0;
		else count <= count+1;

	always @ (posedge CLK)
	begin
		if (!CLR) 
			begin giay0 <=0;
				  giay1 <=0;
				  green <=1;
				  red <=0;
			end
		else if (count==0) 
					if (giay0==0)
						begin 
							giay0 <=9;
							if (giay1==0) 
								begin 
									giay1 <=2;
									green <=~green;
									red <=~red;
								end
							else	
								giay1 <=giay1-1;
						end
					else giay0 <=giay0-1;			
	end 
endmodule
module decoder_BCD (i,led); 
	input [3:0]i;
	output reg [6:0]led;
	always @(i)
	case(i)
	0:led=7'b0000001;
	1:led=7'b1001111;
	2:led=7'b0010010;
	3:led=7'b0000110;
	4:led=7'b1001100;
	5:led=7'b0100100;
	6:led=7'b0100000;
	7:led=7'b0001111;
	8:led=7'b0000000;
	9:led=7'b0000100;
	10:led=7'b0001000;
	11:led=7'b1100000;
	12:led=7'b0110001;
	13:led=7'b1000010;
	14:led=7'b0110000;
	15:led=7'b0111000;
	endcase
endmodule