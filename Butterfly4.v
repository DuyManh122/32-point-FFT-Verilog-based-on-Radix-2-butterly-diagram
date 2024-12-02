module Butterfly4  
(
    input                   clk,
    input                   rst,
	//First complex input
    input       [31:0]     in0_r,
    input       [31:0]     in0_i,
	
	//Second complex input
    input       [31:0]     in1_r,
    input       [31:0]     in1_i,
	
	//Third complex input
	input       [31:0]     in2_r,
    input       [31:0]     in2_i,
	
	//Fourth complex input
	input       [31:0]     in3_r,
    input       [31:0]     in3_i,
	
	
	//First twiddle factor
    input       [31:0]     twiddle0_r,
    input       [31:0]     twiddle0_i,

	//Second twiddle factor
	input       [31:0]     twiddle1_r,
    input       [31:0]     twiddle1_i,


	//First complex output
    output      [31:0]     out0_r,
    output      [31:0]     out0_i,

	//Second complex output
    output      [31:0]     out1_r,
    output      [31:0]     out1_i,
	
	//Third complex output
    output      [31:0]     out2_r,
    output      [31:0]     out2_i,
	
	//Fourth complex output
    output      [31:0]     out3_r,
    output      [31:0]     out3_i	
);

	Butterfly2 But2_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in0_r),
		.in0_i(in0_i),
		.in1_r(in2_r),
		.in1_i(in2_i),
		.twiddle_r(twiddle0_r),
		.twiddle_i(twiddle0_i),
		.out0_r(out0_r),
		.out0_i(out0_i),
		.out1_r(out2_r),
		.out1_i(out2_i)
	);
	
	Butterfly2 But2_1
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in1_r),
		.in0_i(in1_i),
		.in1_r(in3_r),
		.in1_i(in3_i),
		.twiddle_r(twiddle1_r),
		.twiddle_i(twiddle1_i),
		.out0_r(out1_r),
		.out0_i(out1_i),
		.out1_r(out3_r),
		.out1_i(out3_i)
	);
	
endmodule