module cau1(SW,HEX0);        
	input [3:0]SW;         
	output [0:6]HEX0;           
	seg7 (SW[3:0],HEX0); 
endmodule
module seg7(bcd, leds);  
	input [3:0] bcd;  
	output reg [0:6]leds;     
	always @(bcd)   
	case (bcd)       //abcdefg    
	0: leds = 7'b0000001;       
	1: leds = 7'b1001111;    
	2: leds = 7'b0010010;    
	3: leds = 7'b0000110;    
	4: leds = 7'b1001100;    
	5: leds = 7'b0100100;    
	6: leds = 7'b0100000;    
	7: leds = 7'b0001111;    
	8: leds = 7'b0000000;    
	9: leds = 7'b0000100;   
	10: leds = 7'b0001001;   
	11: leds = 7'b0000000;    
	12: leds = 7'b0110001;    
	13: leds = 7'b0000001;    
	14: leds = 7'b0110000;    
	15: leds = 7'b0111000;    
	default: leds = 7'b1111111;   
	endcase    
endmodule
