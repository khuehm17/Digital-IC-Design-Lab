library verilog;
use verilog.vl_types.all;
entity RS_FF is
    port(
        R               : in     vl_logic;
        S               : in     vl_logic;
        clk             : in     vl_logic;
        Qa              : out    vl_logic;
        Qb              : out    vl_logic
    );
end RS_FF;
