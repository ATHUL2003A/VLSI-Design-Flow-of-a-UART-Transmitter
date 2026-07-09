`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2023 11:12:19 PM
// Design Name: 
// Module Name: uart_tx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tx_uart#(parameter clk_freq=10000,parameter baud_rate=2500)(
input clk,
input rst_n,
input start,
input [7:0]data,
output reg rs232_tx,
output reg done_tx
);

//reg state;
//reg [12:0] baud_cnt;
//reg bit_flag;
reg [3:0] bit_cnt;
reg [3:0] bit_cnta;
localparam clkcount=(clk_freq/baud_rate);
reg uclk=0;
integer count = 0;
always@(posedge clk)
    begin
      if(count < clkcount/2)
         count <= count + 1;
      else begin
        count <= 0;
        uclk <= ~uclk;
      end 
    end






always@ (posedge clk) begin
if (rst_n==1)
begin
bit_cnt<=4'd0;
end
else begin
bit_cnt<=bit_cnta;
end 
end 

always @(*) begin
rs232_tx <= 1'b1;
done_tx<=1'b0;
bit_cnta<=bit_cnt;
case(bit_cnt)
4'd0: begin
      done_tx<=1'b0; 
      rs232_tx <= 1'b0;
      bit_cnta<=bit_cnt+1'b1;
      end
4'd1: begin rs232_tx <= data[0];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd2: begin rs232_tx <= data[1];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd3: begin rs232_tx <= data[2];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd4: begin rs232_tx <= data[3];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd5: begin rs232_tx <= data[4];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd6: begin rs232_tx <= data[5];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd7: begin rs232_tx <= data[6];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd8: begin rs232_tx <= data[7];
      bit_cnta<=bit_cnt+1'b1;
      end
4'd9:begin
     rs232_tx <= 1'b1;
     done_tx<=1'b1;
     bit_cnta<=0;
     end
default:rs232_tx <= 1'b1;
endcase
end
endmodule















