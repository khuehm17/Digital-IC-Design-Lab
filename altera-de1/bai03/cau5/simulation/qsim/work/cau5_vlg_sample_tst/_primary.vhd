library verilog;
use verilog.vl_types.all;
entity cau5_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(1 downto 0);
        SW              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end cau5_vlg_sample_tst;
