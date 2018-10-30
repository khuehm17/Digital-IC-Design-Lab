module cau5(SW, KEY, LEDR);
	input [0:0]SW; // d = SW0
	input [1:0]KEY;// clk = KEY0, r = KEY1
	output [3:0]LEDR; // q = LEDR0
	wire q1, q2, q3;
	
	FF_D(SW[0], KEY[1], KEY[0], LEDR[0]);
	FF_D(LEDR[0], KEY[1], KEY[0], LEDR[1]);
	FF_D(LEDR[1], KEY[1], KEY[0], LEDR[2]);
	FF_D(LEDR[2], KEY[1], KEY[0], LEDR[3]);
endmodule

module FF_D(d, r, clk, q);
	input d, r, clk;
	output reg q;
	
	always @(posedge clk)
		if(r == 0)
			q <= 0;
		else
			q <= d;
endmodule