//Thực hiện nghịch đảo thông qua phép bù 2
module negative
(
	input rst,
	input clk,
	input 	[31:0] in,
	output 	[31:0] out
);
	reg [31:0] control;
	
	assign out = control;
	
	always @(negedge clk or negedge rst) begin
		if (!rst) begin
			control <= 0;
		end 
		else begin
			control <= ~in + 1'b1; 			//reverse the bit order
		end
	end
endmodule