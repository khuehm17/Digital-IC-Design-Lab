module cau4(SW, KEY, LEDR);
	input [1:0]SW; 
	input [0:0]KEY; // j = SW0, k = SW1, clk = KEY0
	output [0:0]LEDR;   // q = LEDR
	
	FF_T(SW[0], SW[1], KEY[0], LEDR[0]);
endmodule



