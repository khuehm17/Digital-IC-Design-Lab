module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    integer i;

    always @(*) begin
        for (i = 0; i < 100; i = i + 1) begin
            //fulladder f_adder(.a(a[i]), .b(b[i]), .cin(cin), .sum(sum[i]), .cout(cout[i]));
            fulladder f_adder(.a(a[i]), .b(b[i]), .cin(cin), .sum(sum[i]), .cout(cout[i]));
        end
    end

endmodule


module fulladder(
    input a,
    input b,
    input cin,
    output sum,
    output cout);

    assign {cout, sum} = cin + a + b;

endmodule