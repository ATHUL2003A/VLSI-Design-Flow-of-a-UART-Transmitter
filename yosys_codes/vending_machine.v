module vent(input clk,input rstn,input coin,input select,output reg product);

reg [2:0] state;
reg [2:0] next_state;
parameter idle=3'd0;
parameter select_prod=3'd1;
parameter dispense=3'd3;
reg [3:0] balance;
reg [7:0] itenary;
parameter priceA=1;
parameter priceB=2;
parameter priceC=3;

always @(posedge clk) begin
if (rstn==1'b1)
begin
state<=idle;
product<=0;
balance<=4'b0;
itenary=8'b11111111;
end
else begin
state<=next_state;
end
end


always @(*) begin
case (state)
idle: begin
      if (coin)  begin
      next_state<=select_prod;
      balance<=balance+10;
      end
      else begin 
      if (balance>0) 
      next_state<=select_prod;
      else
      next_state<=idle;
      end
      end
select_prod: begin
      if (select&&itenary>0) begin
          if (balance >= priceA) begin
          next_state<=dispense;
          end
      end
      else begin
      next_state<=idle;
      end
      end
dispense: begin
       balance<=balance-priceA*select;
       itenary<=itenary-select;
       product<=1;
       next_state<=idle;
       end
endcase 
end
endmodule



module vent_tb();
reg clk,rstn,coin,select;
wire product;

vent v1(.clk(clk),.rstn(rstn),.coin(coin),.select(select),.product(product));
initial begin
$dumpfile("dump.vcd");
$dumpvars();
#500;
$finish;
end




initial begin
clk=0;
rstn=1;
coin=0;
#10;
rstn=0;
#5 coin=1;
#5 select=1;
end
always begin
#1 clk=~clk;
end
endmodule
      




 
