module adder3
(
	input 		rst,
	input 		clk,
    input       [31:0]     A,
    input       [31:0]     B,
    input       [31:0]     C,
    output 		[31:0]     D
);

	reg signed [31:0] signed_output;
	
	assign D = signed_output;
	
	always @(negedge clk or negedge rst) begin
		if (!rst)
			signed_output <= 32'b0;
		else
			signed_output <= A + B + C;
	end

endmodule