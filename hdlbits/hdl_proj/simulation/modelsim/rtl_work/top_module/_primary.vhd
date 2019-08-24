library verilog;
use verilog.vl_types.all;
entity top_module is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        y               : out    vl_logic
    );
end top_module;
