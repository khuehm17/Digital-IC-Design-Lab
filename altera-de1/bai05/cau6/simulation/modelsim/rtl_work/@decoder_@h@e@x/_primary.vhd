library verilog;
use verilog.vl_types.all;
entity Decoder_HEX is
    port(
        c               : in     vl_logic_vector(3 downto 0);
        HEX             : out    vl_logic_vector(6 downto 0)
    );
end Decoder_HEX;
