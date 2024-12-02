module Butterfly32
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
	
	//17 complex input
    input       [31:0]     in16_r,
    input       [31:0]     in16_i,
	
	//18 complex input
    input       [31:0]     in17_r,
    input       [31:0]     in17_i,
	
	//19 complex input
	input       [31:0]     in18_r,
    input       [31:0]     in18_i,
	
	//20 complex input
	input       [31:0]     in19_r,
    input       [31:0]     in19_i,
	
	//21 complex input
    input       [31:0]     in20_r,
    input       [31:0]     in20_i,
	
	//22 complex input
    input       [31:0]     in21_r,
    input       [31:0]     in21_i,
	
	//23 complex input
	input       [31:0]     in22_r,
    input       [31:0]     in22_i,
	
	//24 complex input
	input       [31:0]     in23_r,
    input       [31:0]     in23_i,
	
	//25 complex input
    input       [31:0]     in24_r,
    input       [31:0]     in24_i,
	
	//26 complex input
    input       [31:0]     in25_r,
    input       [31:0]     in25_i,
	
	//27 complex input
	input       [31:0]     in26_r,
    input       [31:0]     in26_i,
	
	//28 complex input
	input       [31:0]     in27_r,
    input       [31:0]     in27_i,
	
	//29 complex input
    input       [31:0]     in28_r,
    input       [31:0]     in28_i,
	
	//30 complex input
    input       [31:0]     in29_r,
    input       [31:0]     in29_i,
	
	//31 complex input
	input       [31:0]     in30_r,
    input       [31:0]     in30_i,
	
	//32 complex input
	input       [31:0]     in31_r,
    input       [31:0]     in31_i,
	
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

	//9 twiddle factor
    input       [31:0]     twiddle8_r,
    input       [31:0]     twiddle8_i,

	//10 twiddle factor
	input       [31:0]     twiddle9_r,
    input       [31:0]     twiddle9_i,

	//11 twiddle factor
    input       [31:0]     twiddle10_r,
    input       [31:0]     twiddle10_i,

	//12 twiddle factor
	input       [31:0]     twiddle11_r,
    input       [31:0]     twiddle11_i,
	
	//13 twiddle factor
    input       [31:0]     twiddle12_r,
    input       [31:0]     twiddle12_i,

	//14 twiddle factor
	input       [31:0]     twiddle13_r,
    input       [31:0]     twiddle13_i,

	//15 twiddle factor
    input       [31:0]     twiddle14_r,
    input       [31:0]     twiddle14_i,

	//16 twiddle factor
	input       [31:0]     twiddle15_r,
    input       [31:0]     twiddle15_i,

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
    output      [31:0]     out15_i,
	
	//17 complex output
    output      [31:0]     out16_r,
    output      [31:0]     out16_i,

	//18 complex output
    output      [31:0]     out17_r,
    output      [31:0]     out17_i,
	
	//19 complex output
    output      [31:0]     out18_r,
    output      [31:0]     out18_i,
	
	//20 complex output
    output      [31:0]     out19_r,
    output      [31:0]     out19_i,

	//21 complex output
    output      [31:0]     out20_r,
    output      [31:0]     out20_i,

	//22 complex output
    output      [31:0]     out21_r,
    output      [31:0]     out21_i,
	
	//23 complex output
    output      [31:0]     out22_r,
    output      [31:0]     out22_i,

	//24 complex output
    output      [31:0]     out23_r,
    output      [31:0]     out23_i,

	//25 complex output
    output      [31:0]     out24_r,
    output      [31:0]     out24_i,

	//26 complex output
    output      [31:0]     out25_r,
    output      [31:0]     out25_i,
	
	//27 complex output
    output      [31:0]     out26_r,
    output      [31:0]     out26_i,
	
	//28 complex output
    output      [31:0]     out27_r,
    output      [31:0]     out27_i,

	//29 complex output
    output      [31:0]     out28_r,
    output      [31:0]     out28_i,

	//30 complex output
    output      [31:0]     out29_r,
    output      [31:0]     out29_i,
	
	//31 complex output
    output      [31:0]     out30_r,
    output      [31:0]     out30_i,

	//32 complex output
    output      [31:0]     out31_r,
    output      [31:0]     out31_i
);


Butterfly16 But16_0
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
	.in4_r(in4_r),
	.in4_i(in4_i),
	.in5_r(in5_r),
	.in5_i(in5_i),
	.in6_r(in6_r),
	.in6_i(in6_i),
	.in7_r(in7_r),
	.in7_i(in7_i),
	.in8_r(in16_r),
	.in8_i(in16_i),
	.in9_r(in17_r),
	.in9_i(in17_i),
	.in10_r(in18_r),
	.in10_i(in18_i),
	.in11_r(in19_r),
	.in11_i(in19_i),
	.in12_r(in20_r),
	.in12_i(in20_i),
	.in13_r(in21_r),
	.in13_i(in21_i),
	.in14_r(in22_r),
	.in14_i(in22_i),
	.in15_r(in23_r),
	.in15_i(in23_i),
	.twiddle0_r(twiddle0_r),
	.twiddle0_i(twiddle0_i),
	.twiddle1_r(twiddle1_r),
	.twiddle1_i(twiddle1_i),
	.twiddle2_r(twiddle2_r),
	.twiddle2_i(twiddle2_i),
	.twiddle3_r(twiddle3_r),
	.twiddle3_i(twiddle3_i),
	.twiddle4_r(twiddle4_r),
	.twiddle4_i(twiddle4_i),
	.twiddle5_r(twiddle5_r),
	.twiddle5_i(twiddle5_i),
	.twiddle6_r(twiddle6_r),
	.twiddle6_i(twiddle6_i),
	.twiddle7_r(twiddle7_r),
	.twiddle7_i(twiddle7_i),
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out1_r),
	.out1_i(out1_i),
	.out2_r(out2_r),
	.out2_i(out2_i),
	.out3_r(out3_r),
	.out3_i(out3_i),
	.out4_r(out4_r),
	.out4_i(out4_i),
	.out5_r(out5_r),
	.out5_i(out5_i),
	.out6_r(out6_r),
	.out6_i(out6_i),
	.out7_r(out7_r),
	.out7_i(out7_i),
	.out8_r(out16_r),
	.out8_i(out16_i),
	.out9_r(out17_r),
	.out9_i(out17_i),
	.out10_r(out18_r),
	.out10_i(out18_i),
	.out11_r(out19_r),
	.out11_i(out19_i),
	.out12_r(out20_r),
	.out12_i(out20_i),
	.out13_r(out21_r),
	.out13_i(out21_i),
	.out14_r(out22_r),
	.out14_i(out22_i),
	.out15_r(out23_r),
	.out15_i(out23_i)
);

Butterfly16 But16_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in8_r),
	.in0_i(in8_i),
	.in1_r(in9_r),
	.in1_i(in9_i),
	.in2_r(in10_r),
	.in2_i(in10_i),
	.in3_r(in11_r),
	.in3_i(in11_i),
	.in4_r(in12_r),
	.in4_i(in12_i),
	.in5_r(in13_r),
	.in5_i(in13_i),
	.in6_r(in14_r),
	.in6_i(in14_i),
	.in7_r(in15_r),
	.in7_i(in15_i),
	.in8_r(in24_r),
	.in8_i(in24_i),
	.in9_r(in25_r),
	.in9_i(in25_i),
	.in10_r(in26_r),
	.in10_i(in26_i),
	.in11_r(in27_r),
	.in11_i(in27_i),
	.in12_r(in28_r),
	.in12_i(in28_i),
	.in13_r(in29_r),
	.in13_i(in29_i),
	.in14_r(in30_r),
	.in14_i(in30_i),
	.in15_r(in31_r),
	.in15_i(in31_i),
	.twiddle0_r(twiddle8_r),
	.twiddle0_i(twiddle8_i),
	.twiddle1_r(twiddle9_r),
	.twiddle1_i(twiddle9_i),
	.twiddle2_r(twiddle10_r),
	.twiddle2_i(twiddle10_i),
	.twiddle3_r(twiddle11_r),
	.twiddle3_i(twiddle11_i),
	.twiddle4_r(twiddle12_r),
	.twiddle4_i(twiddle12_i),
	.twiddle5_r(twiddle13_r),
	.twiddle5_i(twiddle13_i),
	.twiddle6_r(twiddle14_r),
	.twiddle6_i(twiddle14_i),
	.twiddle7_r(twiddle15_r),
	.twiddle7_i(twiddle16_i),
	.out0_r(out8_r),
	.out0_i(out8_i),
	.out1_r(out9_r),
	.out1_i(out9_i),
	.out2_r(out10_r),
	.out2_i(out10_i),
	.out3_r(out11_r),
	.out3_i(out11_i),
	.out4_r(out12_r),
	.out4_i(out12_i),
	.out5_r(out13_r),
	.out5_i(out13_i),
	.out6_r(out14_r),
	.out6_i(out14_i),
	.out7_r(out15_r),
	.out7_i(out15_i),
	.out8_r(out24_r),
	.out8_i(out24_i),
	.out9_r(out25_r),
	.out9_i(out25_i),
	.out10_r(out26_r),
	.out10_i(out26_i),
	.out11_r(out27_r),
	.out11_i(out27_i),
	.out12_r(out28_r),
	.out12_i(out28_i),
	.out13_r(out29_r),
	.out13_i(out29_i),
	.out14_r(out30_r),
	.out14_i(out30_i),
	.out15_r(out31_r),
	.out15_i(out31_i)
);

endmodule