library verilog;
use verilog.vl_types.all;
entity cau2_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end cau2_vlg_sample_tst;
