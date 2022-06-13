`timescale 1ns / 1ps

module and_helper(
	input a,
	input [3:0]b,
	output [3:0]p
);

	and(p[0], a, b[0]);
	and(p[1], a, b[1]);
	and(p[2], a, b[2]);
	and(p[3], a, b[3]);

endmodule

module bin_multiplier(
		input [3:0]num1,
		input [3:0]num2,
		output [7:0]p
	);

	wire [3:0]w0, w1;
	and_helper a0(num1[0], num2, w0);
	buf(p[0], w0[0]);
	and_helper a1(num1[1], num2, w1);

	wire [4:0]s0;
	bin_adder adder1(w1, {1'b0, w0[3], w0[2], w0[1]}, s0);
	buf(p[1], s0[0]);

	wire [3:0]w2;
	wire [4:0]s1;
	and_helper a2(num1[2], num2, w2);
	bin_adder adder2(w2, s0[4:1], s1);
	assign p[2] = s1[0];
	
	wire [3:0]w3;
	and_helper a3(num1[3], num2, w3);
	bin_adder adder3(w3, {s1[4],s1[3],s1[2],s1[1]}, {p[7], p[6], p[5], p[4], p[3]});

endmodule
