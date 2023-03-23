`timescale 1ns / 1ps

module SISO_reg(
    input data_in,
    input clk,
	  output reg data_out
    );
    
     reg [3:0]q;
	 
	 always@(posedge clk)
	 begin
		q[3] <= data_in;
		q[2] <= q[3];
		q[1] <= q[2];
		q[0] <= q[1];
	data_out <= q[0];
	 end
endmodule
