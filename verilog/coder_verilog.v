//Verilog HDL for "Schematic_Mario", "coder_verilog" "functional"
module coder_verilog #(parameter CN = 14) (
input x,
output reg[CN-1:0] data_out
);
always @ (x)
 	begin
 	case(x)
 	1'b1: data_out = 14'b00000000000000;
 	1'b0: data_out = 14'b11111111111111;
		default:data_out = 14'b11111111111111;
 	endcase
 	end
endmodule

