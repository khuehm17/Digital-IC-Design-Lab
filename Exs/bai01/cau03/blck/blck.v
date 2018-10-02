module blck (ck,data_in,data_out); 
	input ck; 
	input [7:0] data_in; 
	output [7:0] data_out; 
	reg [7:0] data_out; 
	reg [7:0] stage_1; 
	reg [7:0] stage_2; 
	reg [7:0] stage_3; 
	always @ (posedge ck)  begin 
		stage_1 = data_in; 
		stage_2 = stage_1; 
		stage_3 = stage_2; 
		data_out= stage_3; 
	end 
endmodule
