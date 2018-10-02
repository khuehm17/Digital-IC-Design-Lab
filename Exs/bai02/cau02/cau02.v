module cau02(SW, LEDR);
	// SW[8]     --- Cin
	// SW[3:0]   --- a0:a3
	// SW[7:4]   --- b0:b3
	// LEDR[3:0] --- s0:s3
	// LEDR[4]   --- cout 
	input [8:0]SW;
	output [4:0]LEDR;
	fulladder4bit(SW[3:0], SW[7:4], SW[8], LEDR[3:0], LEDR[4]);

endmodule

module fulladder4bit(a, b, cin, s, cout);
	input cin;
	input [3:0]a,b;
	output cout;
	output [3:0]s;
	wire [3:0]c;
	fulladder1bit stg0(a0, b0, cin, s0, c1);
	fulladder1bit stg1(a1, b1, c1, s1, c2);
	fulladder1bit stg2(a2, b2, c2, s2, c3);
	fulladder1bit stg3(a3, b3, c3, s3, cout);

endmodule

module fulladder1bit(a, b, cin, s, cout);
	input a, b, cin;
	output s;
	output cout;
	assign s = a^b^cin;
	assign cout = (a & b)|(a & cin)|(b & cin);
	
endmodule