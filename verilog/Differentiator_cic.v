//Verilog HDL for "Schematic_Mario", "Differentiator_cic" "functional"
module Differentiator_cic # (parameter WIDTH = 14)
(
	input signed [WIDTH -1 : 0] X,
	input clk, rst,
	output reg signed [WIDTH -1 : 0] Y);
	reg signed [WIDTH -1 : 0] Q;
always @(posedge rst or posedge clk)
 	begin
 		if (rst)
 			begin
 			Y <= {WIDTH{1'b0}};
 			Q <= {WIDTH{1'b0}};
 			end
 		else
 			begin
 			Q <= X;
 			Y <= X-Q;
 			end
 	end
endmodule
