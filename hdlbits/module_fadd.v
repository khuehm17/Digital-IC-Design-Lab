module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum);
    wire c1, c2;

    add16 add16_1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(c1));
    add16 add16_2(.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout(c2));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
//     // some code
// endmodule