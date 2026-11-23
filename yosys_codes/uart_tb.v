`timescale 1ns/1ps
module uart_tx_tb();

reg clk;
reg rst_n;
reg start;
reg [7:0] data;
wire rs232_tx;
wire done_tx;

tx_uart t1 (.clk(clk),.rst_n(rst_n),.start(start),.data(data),.rs232_tx(rs232_tx),.done_tx(done_tx));
initial begin
   $dumpfile("dump.vcd");
   $dumpvars();
   #1200;
   $finish;
end
initial begin
clk=0;
forever #5 clk=~clk;
end 
initial begin
rst_n=1'b0;
start=0;
data=8'b10101010;
#6
rst_n=1'b1;
#80
start=1;
#80
start=0;
#134
data=8'b00101101;
#340
start=1;
#80
start=0;
end
endmodule
