module CIC_wrapper(
    input clk,
    input rst,
    input X,
    output [13:0] ADC_out
);

CIC_verilog_v1 uut (
    .X(X),
    .clk(clk),
    .rst(rst),
    .ADC_out(ADC_out)
);

endmodule
