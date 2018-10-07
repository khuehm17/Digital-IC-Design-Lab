module cau3(SW,LEDR);
	input [7:0]SW;
	output [0:0]LEDR;
	mux_2_1(SW[4:0],SW[7:5],  LEDR[0]);
endmodule
module mux_2_1(x, s, m_out);
	input [4:0]x;// 
	input [2:0]s;
	output m_out;
	wire[3:1]m;
	assign m[1] = ( x[2] & ~s[0]  |  x[3] & s[0] );
	assign m[2] = ( x[0] & ~s[0]  |  x[1] & s[0] );
	assign m[3] = ( m[2] & ~s[1]  |  m[1] & s[1] );
	assign m_out = ( m[3] & ~s[2]  | x[4] & s[2] );
endmodule
