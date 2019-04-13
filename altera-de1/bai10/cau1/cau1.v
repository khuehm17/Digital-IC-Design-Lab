module cau1(SW, LEDR);
	input [2:0]SW;
	output [0:0]LEDR;
	wire f0;
	
	//Cau a
	//mux2_1(SW[2], ~SW[2], SW[1], f0);
	//mux2_1(f0, ~f0, SW[0], LEDR[0]);
	//Cau b
	mux2_1(SW[1]&SW[2], SW[1]|SW[2], SW[0], LEDR[0]);
endmodule

module mux2_1(x, y, s, m_out);
	input x, y, s;
	output m_out;
	
	assign m_out = s?y:x;
endmodule

