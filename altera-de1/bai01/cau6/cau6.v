module  cau6(SW, HEX0, HEX1, HEX2, HEX3); 
	input [9:7] SW;  
	output [0:6]HEX0, HEX1, HEX2, HEX3;    
	DECODER_HEX0 (SW[9:7],HEX0);  
	DECODER_HEX1 (SW[9:7],HEX1);  
	DECODER_HEX2 (SW[9:7],HEX2);  
	DECODER_HEX3 (SW[9:7],HEX3);  
endmodule
module  DECODER_HEX0 (c,led0);         
	input [9:7]c;         
	output reg [0:6]led0;
	always @(c)      
	begin        
		case (c)               
		3'b 000 : led0 = 7'b0001000; //A               
		3'b 011 : led0 = 7'b0100001;//G               
		3'b 010 : led0 = 7'b0011000; //P               
		3'b 001 : led0 = 7'b0111000; //F               
		default : led0 = 7'b1111111;                             
		endcase      
	end 
endmodule
module  DECODER_HEX1 (c,led1);         
	input [9:7]c;         
	output reg [0:6]led1;
	always @(c)      
	begin        
		case (c)               
		3'b 001 : led1 = 7'b0001000; //A               
		3'b 000 : led1 = 7'b0100001;//G               
		3'b 011 : led1 = 7'b0011000; //P               
		3'b 010 : led1 = 7'b0111000; //F               
		default : led1 = 7'b1111111;                             
		endcase      
	end 
endmodule
module  DECODER_HEX2 (c,led2);         
	input [9:7]c;         
	output reg [0:6]led2;
	always @(c)      
	begin        
		case (c)               
		3'b 010 : led2 = 7'b0001000;//A               
		3'b 001 : led2 = 7'b0100001;//G               
		3'b 000 : led2 = 7'b0011000;//P               
		3'b 011 : led2 = 7'b0111000;//F               
		default : led2 = 7'b1111111;                             
		endcase      
	end 
endmodule
module  DECODER_HEX3 (c,led3);         
	input [9:7]c;         
	output reg [0:6]led3;
	always @(c)      
	begin        
		case (c)               
		3'b 011 : led3 = 7'b0001000;//A               
		3'b 010 : led3 = 7'b0100001;//G               
		3'b 001 : led3 = 7'b0011000;//P               
		3'b 000 : led3 = 7'b0111000;//F               
		default : led3 = 7'b1111111;                             
		endcase      
	end 
endmodule
