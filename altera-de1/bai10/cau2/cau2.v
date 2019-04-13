module cau2(SW, LEDR);
	input [3:0]SW;
	output [3:0]LEDR;
	
	demux1_4(SW[0], SW[2:1], SW[3], LEDR);
endmodule


module demux1_4(d, s, en, f);
	input d, en;
	input [1:0]s;
	output reg [3:0]f;
	
	always@(en, s)
	if(~en)
		begin
			f[0] = 0;
			f[1] = 0;
			f[2] = 0;
			f[3] = 0;
		end
	else
		begin
			//always@(s)
			case(s)
				2'b00: f[0] = d;
				2'b01: f[1] = d;
				2'b10: f[2] = d;
				2'b11: f[3] = d;
			endcase
		end
endmodule

