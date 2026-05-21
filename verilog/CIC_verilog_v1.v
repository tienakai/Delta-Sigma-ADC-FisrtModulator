//Verilog HDL for "Schematic_Mario", "CIC_verilog_v1" "functional"
module CIC_verilog_v1 # (parameter WIDTH = 14, K = 16, CLKDIV_WIDTH = 6)
(
input wire X, clk, rst,
output wire signed [WIDTH -1 : 0] ADC_out
);
wire signed [WIDTH -1 : 0] I1, I2, I3, D1, D2, X_coded, Y;
wire clk_div;
Clock_divider_cic # (.K(K), .WIDTH(CLKDIV_WIDTH)) Decimator_clk (.clk(clk),
.rst(rst),.clk_out(clk_div));
coder_verilog # (.CN(WIDTH)) coder_0(.x(X), .data_out(X_coded));
Integrator_cic # (.WIDTH(WIDTH)) integrator_0 (.X(X_coded), .clk(clk),
.rst(rst), .Y(I1));
Integrator_cic # (.WIDTH(WIDTH)) integrator_1 (.X(I1), .clk(clk), .rst(rst),
.Y(I2));
Integrator_cic # (.WIDTH(WIDTH)) integrator_2(.X(I2), .clk(clk), .rst(rst),
.Y(I3));
Differentiator_cic # (.WIDTH(WIDTH)) differentiator_0 (.X(I3), .clk(clk_div),
.rst(rst), .Y(D1));
Differentiator_cic # (.WIDTH(WIDTH)) differentiator_1 (.X(D1), .clk(clk_div),
.rst(rst), .Y(D2));
Differentiator_cic # (.WIDTH(WIDTH)) differentiator_2 (.X(D2), .clk(clk_div),
.rst(rst), .Y(Y));
assign ADC_out = (Y -10500);
endmodule
