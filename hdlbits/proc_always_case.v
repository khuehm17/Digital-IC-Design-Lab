// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case (sel)
            3'b101: begin
                out[3:0] = data5[3:0]; 
            end
            3'b100: begin
                out[3:0] = data4[3:0];  
            end
            3'b011: begin
                out[3:0] = data3[3:0];
            end
            3'b010: begin
                out[3:0] = data2[3:0];
            end
            3'b001: begin
                out[3:0] = data1[3:0];
            end
            3'b000: begin
                out[3:0] = data0[3:0];
            end
            default: out[3:0] = 4'b0000;
        endcase
    end

endmodule
