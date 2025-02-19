module Butterfly16
(
	input 		clk,
	input		rst,
	
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
	
	//9 complex input
    input       [31:0]     in8_r,
    input       [31:0]     in8_i,
	
	//10 complex input
    input       [31:0]     in9_r,
    input       [31:0]     in9_i,
	
	//11 complex input
	input       [31:0]     in10_r,
    input       [31:0]     in10_i,
	
	//12 complex input
	input       [31:0]     in11_r,
    input       [31:0]     in11_i,
	
	//13 complex input
    input       [31:0]     in12_r,
    input       [31:0]     in12_i,
	
	//14 complex input
    input       [31:0]     in13_r,
    input       [31:0]     in13_i,
	
	//15 complex input
	input       [31:0]     in14_r,
    input       [31:0]     in14_i,
	
	//16 complex input
	input       [31:0]     in15_r,
    input       [31:0]     in15_i,
	

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
	
	//5 twiddle factor
    input       [31:0]     twiddle4_r,
    input       [31:0]     twiddle4_i,

	//6 twiddle factor
	input       [31:0]     twiddle5_r,
    input       [31:0]     twiddle5_i,

	//7 twiddle factor
    input       [31:0]     twiddle6_r,
    input       [31:0]     twiddle6_i,

	//8 twiddle factor
	input       [31:0]     twiddle7_r,
    input       [31:0]     twiddle7_i,

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
    output      [31:0]     out7_i,

	//9 complex output
    output      [31:0]     out8_r,
    output      [31:0]     out8_i,

	//10 complex output
    output      [31:0]     out9_r,
    output      [31:0]     out9_i,
	
	//11 complex output
    output      [31:0]     out10_r,
    output      [31:0]     out10_i,
	
	//12 complex output
    output      [31:0]     out11_r,
    output      [31:0]     out11_i,

	//13 complex output
    output      [31:0]     out12_r,
    output      [31:0]     out12_i,

	//14 complex output
    output      [31:0]     out13_r,
    output      [31:0]     out13_i,
	
	//15 complex output
    output      [31:0]     out14_r,
    output      [31:0]     out14_i,

	//16 complex output
    output      [31:0]     out15_r,
    output      [31:0]     out15_i
);


Butterfly8 But8_0
(
	.clk(clk),
	.rst(rst),
	.in0_r(in0_r),
	.in0_i(in0_i),
	.in1_r(in1_r),
	.in1_i(in1_i),
	.in2_r(in2_r),
	.in2_i(in2_i),
	.in3_r(in3_r),
	.in3_i(in3_i),
	.in4_r(in8_r),
	.in4_i(in8_i),
	.in5_r(in9_r),
	.in5_i(in9_i),
	.in6_r(in10_r),
	.in6_i(in10_i),
	.in7_r(in11_r),
	.in7_i(in11_i),
	.twiddle0_r(twiddle0_r),
	.twiddle0_i(twiddle0_i),
	.twiddle1_r(twiddle1_r),
	.twiddle1_i(twiddle1_i),
	.twiddle2_r(twiddle2_r),
	.twiddle2_i(twiddle2_i),
	.twiddle3_r(twiddle3_r),
	.twiddle3_i(twiddle3_i),
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out1_r),
	.out1_i(out1_i),
	.out2_r(out2_r),
	.out2_i(out2_i),
	.out3_r(out3_r),
	.out3_i(out3_i),
	.out4_r(out8_r),
	.out4_i(out8_i),
	.out5_r(out9_r),
	.out5_i(out9_i),
	.out6_r(out10_r),
	.out6_i(out10_i),
	.out7_r(out11_r),
	.out7_i(out11_i)
);

Butterfly8 But8_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in4_r),
	.in0_i(in4_i),
	.in1_r(in5_r),
	.in1_i(in5_i),
	.in2_r(in6_r),
	.in2_i(in6_i),
	.in3_r(in7_r),
	.in3_i(in7_i),
	.in4_r(in12_r),
	.in4_i(in12_i),
	.in5_r(in13_r),
	.in5_i(in13_i),
	.in6_r(in14_r),
	.in6_i(in14_i),
	.in7_r(in15_r),
	.in7_i(in15_i),
	.twiddle0_r(twiddle4_r),
	.twiddle0_i(twiddle4_i),
	.twiddle1_r(twiddle5_r),
	.twiddle1_i(twiddle5_i),
	.twiddle2_r(twiddle6_r),
	.twiddle2_i(twiddle6_i),
	.twiddle3_r(twiddle7_r),
	.twiddle3_i(twiddle7_i),
	.out0_r(out4_r),
	.out0_i(out4_i),
	.out1_r(out5_r),
	.out1_i(out5_i),
	.out2_r(out6_r),
	.out2_i(out6_i),
	.out3_r(out7_r),
	.out3_i(out7_i),
	.out4_r(out12_r),
	.out4_i(out12_i),
	.out5_r(out13_r),
	.out5_i(out13_i),
	.out6_r(out14_r),
	.out6_i(out14_i),
	.out7_r(out15_r),
	.out7_i(out15_i)
);

endmodule