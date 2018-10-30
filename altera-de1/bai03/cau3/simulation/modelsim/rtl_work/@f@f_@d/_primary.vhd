library verilog;
use verilog.vl_types.all;
entity FF_D is
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        Clk             : in     vl_logic
    );
end FF_D;
