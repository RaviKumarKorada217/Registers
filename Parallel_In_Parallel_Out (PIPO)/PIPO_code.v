`timescale 1ns / 1ps

module PIPO_reg(D, clk, Q);
	input [3:0]D;
	input clk;
	output reg [3:0]Q;
	always@(posedge clk)
		begin
			Q[0]<=D[0];
			Q[1]<=D[1];
			Q[2]<=D[2];
			Q[3]<=D[3];  // We can also assign Q<=D
		end
	
endmodule
