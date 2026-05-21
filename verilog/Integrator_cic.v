//Verilog HDL for "Schematic_Mario", "Integrator_cic" "functional"
module Integrator_cic # (parameter WIDTH = 14)
(
	input signed [WIDTH -1 : 0] X,
	input clk, rst,
	output reg signed [WIDTH -1 : 0] Y);
always @(posedge rst or posedge clk)
 	begin
 		if (rst)
 			Y <= {WIDTH{1'b0}};
 		else
 			Y <= Y + X;
 	end
endmodule
