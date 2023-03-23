/* 
 In Universal Shift Register (USR), we can perform different operations depends on selection line
 
 if sel=00, then no change
 if sel=01, then shift right
 if sel=10, then shift left
 if sel=11, then parallel loading
 
 USR can be acts as SISO, SIPO, PISO and PIPO
*/

`timescale 1ns / 1ps
module Universal_Shift_Register( clk, D, data_in_sr, data_in_sl, sel, q  );
   input clk, data_in_sr, data_in_sl;
   input [1:0]sel;
   input [3:0]D;
   output reg [3:0]q;
   
   always@(posedge clk)
   begin
    case(sel)
        2'b00   :   begin
                        q[3] <= q[3];
                        q[2] <= q[2];
                        q[1] <= q[1];
                        q[0] <= q[0];
                    end
        2'b01   :   begin
                        q[3] <= data_in_sr;
                        q[2] <= q[3];
                        q[1] <= q[2];
                        q[0] <= q[1];
                    end
        2'b10   :   begin
                        q[0] <= data_in_sl;
                        q[1] <= q[0];
                        q[2] <= q[1];
                        q[3] <= q[2];
                    end
        2'b11   :   begin
                        q[0] <= D[0];
                        q[1] <= D[1];
                        q[2] <= D[2];
                        q[3] <= D[3];
                    end
      endcase
    end
endmodule
