module cau1(SW, LEDR);        
	input [2:0]SW;         
	output [1:0]LEDR;           
	RS_FF (SW[0], SW[1], SW[2], LEDR[0], LEDR[1]); 
endmodule

module RS_FF(R, S, clk, Qa, Qb);
	input R, S, clk;
	output wire Qa, Qb;
	wire R_g, S_g;
	and(R_g, R, clk);
	and(S_g, S, clk);
	nor(Qa, R_g, Qb);
	nor(Qb, S_g, Qa);
endmodule
