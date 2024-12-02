module Butterfly8
(
    input                   clk,
    input                   rst,
	
	//1 complex input
    input       [31:0]     in0_r,
    input       [31:0]     in0_i,
	
	//2 complex input
    input       [31:0]     in1_r,
    input       [31:0]     in1_i,
	
	//3 complex input
	input       [31:0]     in2_r,
    input       [31:0]     in2_i,
	
	//4 complex input
	input       [31:0]     in3_r,
    input       [31:0]     in3_i,
	
	//5 complex input
    input       [31:0]     in4_r,
    input       [31:0]     in4_i,
	
	//6 complex input
    input       [31:0]     in5_r,
    input       [31:0]     in5_i,
	
	//7 complex input
	input       [31:0]     in6_r,
    input       [31:0]     in6_i,
	
	//8 complex input
	input       [31:0]     in7_r,
    input       [31:0]     in7_i,
	
	//1 twiddle factor
    input       [31:0]     twiddle0_r,
    input       [31:0]     twiddle0_i,

	//2 twiddle factor
	input       [31:0]     twiddle1_r,
    input       [31:0]     twiddle1_i,

	//3 twiddle factor
    input       [31:0]     twiddle2_r,
    input       [31:0]     twiddle2_i,

	//4 twiddle factor
	input       [31:0]     twiddle3_r,
    input       [31:0]     twiddle3_i,


	//1 complex output
    output      [31:0]     out0_r,
    output      [31:0]     out0_i,

	//2 complex output
    output      [31:0]     out1_r,
    output      [31:0]     out1_i,
	
	//3 complex output
    output      [31:0]     out2_r,
    output      [31:0]     out2_i,
	
	//4 complex output
    output      [31:0]     out3_r,
    output      [31:0]     out3_i,

	//5 complex output
    output      [31:0]     out4_r,
    output      [31:0]     out4_i,

	//6 complex output
    output      [31:0]     out5_r,
    output      [31:0]     out5_i,
	
	//7 complex output
    output      [31:0]     out6_r,
    output      [31:0]     out6_i,

	//8 complex output
    output      [31:0]     out7_r,
    output      [31:0]     out7_i
);

	Butterfly4 But4_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in0_r),
		.in0_i(in0_i),
		.in1_r(in1_r),
		.in1_i(in1_i),
		.in2_r(in4_r),
		.in2_i(in4_i),
		.in3_r(in5_r),
		.in3_i(in5_i),
		.twiddle0_r(twiddle0_r),
		.twiddle0_i(twiddle0_i),
		.twiddle1_r(twiddle1_r),
		.twiddle1_i(twiddle1_i),
		.out0_r(out0_r),
		.out0_i(out0_i),
		.out1_r(out1_r),
		.out1_i(out1_i),
		.out2_r(out4_r),
		.out2_i(out4_i),
		.out3_r(out5_r),
		.out3_i(out5_i)
	);
	
	Butterfly4 But4_1
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in2_r),
		.in0_i(in2_i),
		.in1_r(in3_r),
		.in1_i(in3_i),
		.in2_r(in6_r),
		.in2_i(in6_i),
		.in3_r(in7_r),
		.in3_i(in7_i),
		.twiddle0_r(twiddle2_r),
		.twiddle0_i(twiddle2_i),
		.twiddle1_r(twiddle3_r),
		.twiddle1_i(twiddle3_i),
		.out0_r(out2_r),
		.out0_i(out2_i),
		.out1_r(out3_r),
		.out1_i(out3_i),
		.out2_r(out6_r),
		.out2_i(out6_i),
		.out3_r(out7_r),
		.out3_i(out7_i)
	);
	
endmodule