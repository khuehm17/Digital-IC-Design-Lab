library verilog;
use verilog.vl_types.all;
entity cau2 is
    port(
        SW              : in     vl_logic_vector(1 downto 0);
        LEDR            : out    vl_logic_vector(1 downto 0)
    );
end cau2;
