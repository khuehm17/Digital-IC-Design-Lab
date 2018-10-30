module cau4(SW, LEDR);
	input [1:0]SW;
	output [2:0]LEDR;
	FF_D_Ex(SW[1], SW[0], LEDR[0], LEDR[1], LEDR[2]);
endmodule

module FF_D_Ex(d, clk, q1, q2, q3);
	input d, clk;
	output reg q1, q2, q3;
	always @(clk)
		if(clk)
			q1 <= d;
	always @(posedge clk)
		q2 <= d;
	always @(negedge clk)
		q3 <= d;
endmodule
			
	