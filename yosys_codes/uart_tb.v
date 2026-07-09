module uart_tx_tb();

reg clk;
reg rst_n;
reg start;
reg [7:0] data;
wire rs232_tx;
wire done_tx;

uart_tx t1 (.clk(clk),.rst_n(rst_n),.start(start),.data(data),.rs232_tx(rs232_tx),.done_tx(done_tx));
initial begin
   $dumpfile("dump.vcd");
   $dumpvars();
   #1000;
   $finish;
end
initial begin
clk=0;
forever #5 clk=~clk;
end 
initial begin
rst_n=1'b1;
#6
rst_n=1'b0;
start=1;
#10
data=8'b10101010;
#90
data=8'b00101101;
end
endmodule
