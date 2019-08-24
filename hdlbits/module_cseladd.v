module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum);

    wire c0, c1, c2;
    wire [15:0] sum_mux_1, sum_mux_2;

    add16 add16_0(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(c0));
    add16 add16_1(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_mux_1), .cout(c1));
    add16 add16_2(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_mux_2), .cout(c2));

    assign sum[31:16] = c0 ? sum_mux_2 : sum_mux_1;
endmodule

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
// // some code
// endmodule
