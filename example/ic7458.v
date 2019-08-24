module top_module_name(
input p1a, p1b, p1c, p1d, p1e, p1f,
output p1y,
input p2a, p2b, p2c, p2d,
output p2y);
wire p1and1, p1and2, p2and1, p2and2;

// Block p1
assign p1and1 = p1a & p1b & p1c;
assign p1and2 = p1d & p1e & p1f;
assign p1y = p1and1 | p1and2;

// Block p2
assign p2and1 = p2a & p2b;
assign p2and2 = p2c & p2d;
assign p2y = p2and1 | p2and2;
endmodule
