library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        n               : integer := 4
    );
    port(
        en              : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        bcd             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end counter;
