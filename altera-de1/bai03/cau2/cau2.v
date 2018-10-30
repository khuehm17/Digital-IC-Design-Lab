module cau2(SW,LEDR);        
	input [1:0]SW;         
	output [1:0]LEDR;           
	D_LATCH (LEDR[0], LEDR[1], SW[0],SW[1]); 
	// led0-Qa..led1-Qb..sw0-clk..sw1..D
endmodule

module D_LATCH(Qa, Qb, clk, D);  
	input D, clk;  
	output wire Qa, Qb;  
	wire R_g, S_g;  
	nand (S_g, D, clk);  
	nand (R_g, ~D, clk);  
	nand (Qa, S_g, Qb);  
	nand (Qb, R_g, Qa);   
endmodule
