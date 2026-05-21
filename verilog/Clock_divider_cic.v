//Verilog HDL for "Schematic_Mario", "Clock_divider_cic" "functional"
//Output with duty cycle 50%
module Clock_divider_cic # (parameter K = 16, WIDTH = 6)
(
	input clk, rst,
	output reg clk_out);
	reg[WIDTH -1 : 0] counter = {WIDTH{1'b0}};
	wire ovf_flag;
assign ovf_flag = (counter == K/2)?1'b1:1'b0;
always @(posedge rst or posedge clk)
	begin
		if (rst)
 			begin
			counter <= {WIDTH{1'b0}};
 			clk_out <= 1'b0;
 			end
 		else
 			begin
 
 			if(ovf_flag)
 			begin
 			counter <= {WIDTH{1'b0}};
 			clk_out <= ~clk_out;
 			end
 			else
 				counter <= counter + 1'b1;
 			end
 	end
endmodule
