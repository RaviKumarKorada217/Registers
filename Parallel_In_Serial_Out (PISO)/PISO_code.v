`timescale 1ns / 1ps

module PISO_reg(
    input [3:0] D,
    input clk,
	input load,
    output reg [3:0] Q
    );
	 always@(posedge clk)
		if(load)
		begin                // if load=1, serial output is obtained
			Q[0]<=D[0];
			Q[1]<=Q[0];
			Q[2]<=Q[1];
			Q[3]<=Q[2];
		end
		else
		begin               // if load=0, parallel input is loaded
			Q[0]<=D[0];
			Q[1]<=D[1];
			Q[2]<=D[2];
			Q[3]<=D[3];
		end
endmodule
