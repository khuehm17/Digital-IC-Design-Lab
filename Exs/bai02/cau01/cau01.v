module cau01(SW, LEDG);
	// SW     2 1 0 --- a b cin
	// LEDG   1 0   --- s cout
	input [2:0]SW;
	output [1:0]LEDG;
	fulladder1bit(SW[0], SW[1], SW[2], LEDG[0], LEDG[1]);

endmodule

module fulladder1bit(a, b, cin, s, cout);
	input a, b, cin;
	output s;
	output cout;
	assign s = a^b^cin;
	assign cout = (a & b)|(a & cin)|(b & cin);

endmodule
	