module cau5(SW,LEDR);
	input [8:0] SW;
	output [4:0] LEDR;
	add4bit(SW[4], SW[3:0], SW[8:5], LEDR[3:0], LEDR[4]);
endmodule


module add4bit(cin,a,b,s,c);
	input cin;
	input [3:0]a,b;
	output [3:0]s;
	output [4:1] c;
	fulladder(cin, a[0], b[0], s[0], c[1]);
	fulladder(c[1:1], a[1:1], b[1:1], s[1:1], c[2:2]);
	fulladder(c[2:2], a[2:2], b[2:2], s[2:2], c[3:3]);
	fulladder(c[3:3], a[3:3], b[3:3], s[3:3], c[4:4]);
endmodule


module fulladder(cin,a,b,s,cout);
	input cin,a,b;
	output s,cout;
	assign s=a^b^cin;
	assign cout=(a&b)|(cin&a)|(cin&b);
endmodule
