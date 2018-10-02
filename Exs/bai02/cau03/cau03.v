module cau03(w, s, y);
	input [0:7] w;
	input [2:0] s ;
	output reg y;
	always @(w,s)
	case(s)
		3'b000:y = w[0];
		3'b001:y = w[2];
		3'b010:y = w[4];
		3'b011:y = w[6];
		3'b100:y = w[1];
		3'b101:y = w[3];
		3'b110:y = w[5];
		3'b111:y = w[7];
	endcase
endmodule

	