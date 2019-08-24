module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] result);

    wire c1, c2;
    wire [31:0] b_xor;

    assign b_xor[31:0] = b[31:0] ^ {32{sub}};
    add16 add16_1(.a(a[15:0]), .b(b_xor[15:0]), .cin(sub), .sum(result[15:0]), .cout(c1));
    add16 add16_2(.a(a[31:16]), .b(b_xor[31:16]), .cin(c1), .sum(result[31:16]), .cout(c2));

endmodule

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
//     // some code
// endmodule
