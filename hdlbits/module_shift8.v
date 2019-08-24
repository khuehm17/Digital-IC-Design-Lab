module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q );

    wire [7:0] q1, q2, q3;

    my_dff8 dff1(.clk(clk), .d(d), .q(q1));
    my_dff8 dff2(.clk(clk), .d(q1), .q(q2));
    my_dff8 dff3(.clk(clk), .d(q2), .q(q3));

    always @(*)
    begin
        q = sel[1] ? (sel[0] ? q3 : q2) : (sel[0] ? q1 : d);
    end
    // case(sel)
    // 2'h0: q = d;
    // 2'h1: q = o1;
    // 2'h2: q = o2;
    // 2'h3: q = o3;
    // endcase

endmodule

// module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
//      // some code
// endmodule