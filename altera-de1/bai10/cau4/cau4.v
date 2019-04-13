module cau4(SW, HEX0, HEX1);        
	input [3:0]SW;         
	output [0:6]HEX0, HEX1;           
	seg70(SW[3:0], HEX0, HEX1); 
endmodule


module seg70(bcd, led0, led1);  
	input [3:0] bcd;   
	output reg [0:6]led0, led1;     
	
	always @(bcd) 
	if (bcd<10)
		begin
		led1 = 7'b1111111;
		case (bcd)       //abcdefg    
			0: led0 = 7'b0000001;       
			1: led0 = 7'b1001111;    
			2: led0 = 7'b0010010;    
			3: led0 = 7'b0000110;    
			4: led0 = 7'b1001100;    
			5: led0 = 7'b0100100;    
			6: led0 = 7'b0100000;    
			7: led0 = 7'b0001111;    
			8: led0 = 7'b0000000;    
			9: led0 = 7'b0000100;  
			default: led0 = 7'b1111111;
		endcase
		end
	else 
		begin
		led1 = 7'b1001111;
		case (bcd)
			10: led0 = 7'b0000001;
			11: led0 = 7'b1001111;
			12: led0 = 7'b0010010;
			13: led0 = 7'b0000110;
			14: led0 = 7'b1001100; 
			15: led0 = 7'b0100100;   
		endcase
		end
endmodule

