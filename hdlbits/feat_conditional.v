module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] min_ab, min_cd;
    // assign intermediate_result1 = compare? true: false;
    two_way_min min1(.num1(a), .num2(b), .min(min_ab));
    two_way_min min2(.num1(c), .num2(d), .min(min_cd));
    two_way_min min3(.num1(min_ab), .num2(min_cd), .min(min));
endmodule

module two_way_min (
    input [7:0] num1, num2,
    output [7:0] min
);
    assign min = (num1 > num2) ? num2 : num1;
endmodule //   two_way_min 
