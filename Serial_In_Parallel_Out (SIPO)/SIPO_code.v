`timescale 1ns / 1ps

module SIPO_reg(
    input data_in,
    input clk,
    output reg [3:0]Q
    );
	always@(posedge clk)
	begin
		Q[3]<=data_in;
		Q[2]<=Q[3];
		Q[1]<=Q[2];
		Q[0]<=Q[1];	
	end
endmodule
