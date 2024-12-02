
module Butterfly2  
(
    input                   clk,
    input                   rst,
	//First complex input
    input       [31:0]     in0_r,
    input       [31:0]     in0_i,
	
	//Second complex input
    input       [31:0]     in1_r,
    input       [31:0]     in1_i,
	
	//twiddle factor
    input       [31:0]     twiddle_r,
    input       [31:0]     twiddle_i,

	//First complex output
    output      [31:0]     out0_r,
    output      [31:0]     out0_i,

	//Second complex output
    output      [31:0]     out1_r,
    output      [31:0]     out1_i
);

    wire        [31:0]     out1_mul_r;
    wire        [31:0]     out1_mul_i;
    wire        [31:0]     out2_mul_r;
    wire        [31:0]     out2_mul_i;

    wire        [31:0]     out5_m;
    wire        [31:0]     out6_m;
    wire        [31:0]     out7_m;
    wire        [31:0]     out8_m;


    wire        [31:0]     out2_m_neg;
    wire        [31:0]     out5_m_neg;
    wire        [31:0]     out6_m_neg;
    wire        [31:0]     out7_m_neg;

	
    // Multi complex number in1 and twiddle
    multiplier_fixed_point M1
    (
		.clk(clk),
		.rst(rst),
        .A(in1_r),
        .B(twiddle_r),
        .C(out1_mul_r)
    );

    multiplier_fixed_point M2
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_i),
        .C(out1_mul_i)
    );

    multiplier_fixed_point M3
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_i),
        .C(out2_mul_r)
    );

    multiplier_fixed_point M4
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_r),
        .C(out2_mul_i)
    );


    // Multi complex number in1 and twiddle
    multiplier_fixed_point M5
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_r),
        .C(out5_m)
    );

    multiplier_fixed_point M6
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_i),
        .C(out6_m)
    );

    multiplier_fixed_point M7
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_r),
        .C(out7_m)
    );

    multiplier_fixed_point M8
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_i),
        .C(out8_m)
    );




    // make the 2's complement
    negative neg1
    (
		.clk(clk),
		.rst(rst),
        .in(out2_mul_r),
        .out(out2_m_neg)
    );
    negative neg2
    (
		.clk(clk),
		.rst(rst),
        .in(out5_m),
        .out(out5_m_neg)
    );
    negative neg3
    (
		.clk(clk),
		.rst(rst),
        .in(out6_m),
        .out(out6_m_neg)
    );
    negative neg4
    (
		.clk(clk),
		.rst(rst),
        .in(out7_m),
        .out(out7_m_neg)
    );



    //First complex output 	o0 = i0 + i1 * twiddle
    adder3 A1
    (
        .clk(clk),
        .rst(rst),
        .A(in0_r),
        .B(out1_mul_r),
        .C(out1_mul_i),
        .D(out0_r)
    );

    adder3 A2
    (
        .clk(clk),
        .rst(rst),
        .A(in0_i),
        .B(out2_m_neg),
        .C(out2_mul_i),
        .D(out0_i)
    );

	//Second complex output o1 = i0 - i1 * twiddle
    adder3 A3
    (
        .clk(clk),
        .rst(rst),
        .A(in0_r),
        .B(out5_m_neg),
        .C(out6_m_neg),
        .D(out1_r)
    );

    adder3 A4
    (
        .clk(clk),
        .rst(rst),
        .A(in0_i),
        .B(out7_m_neg),
        .C(out8_m),
        .D(out1_i)
    );

endmodule
	
