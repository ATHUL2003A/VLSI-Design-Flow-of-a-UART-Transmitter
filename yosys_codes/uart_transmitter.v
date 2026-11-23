







`timescale 1ns/1ps

module tx_uart #(
    parameter clk_freq  = 10000,
    parameter baud_rate = 2500
)(
    input clk,
    input rst_n,
    input start,
    input [7:0] data,

    output reg rs232_tx,
    output reg done_tx
);

localparam clkcount = clk_freq/baud_rate;

//-------------------------------------------------
// Baud clock generation
//-------------------------------------------------
reg uclk;
integer count;

always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        count <= 0;//initial condition
        uclk  <= 0; //initial
    end
    else
    begin
        if(count == (clkcount/2)-1)
        begin
            count <= 0; //reset to initial condition
            uclk  <= ~uclk; //uclk generated from clk to trigger data transfer as per baud rate
        end
        else
            count <= count + 1;
    end
end

//-------------------------------------------------
// Registers
//-------------------------------------------------
reg [3:0] bit_cnt;
reg [7:0] tx_data;
reg busy;
reg [7:0] tx_dataq;

//-------------------------------------------------
// UART transmitter
//-------------------------------------------------
always @(posedge uclk or negedge rst_n)
begin
    if(!rst_n)
    begin
        bit_cnt  <= 0;
        busy     <= 0;
        rs232_tx <= 1'b1;
        done_tx  <= 1'b0;
        tx_data  <= 8'd0;
        tx_dataq <=8'd0;
    end
    else
    begin
        done_tx <= 1'b0;//default value

        // Idle
        if(!busy)
        begin
            rs232_tx <= 1'b1;

            if(start)
            begin
                busy    <= 1'b1;
                tx_data <= tx_dataq;
                bit_cnt <= 0;
            end
            else 
            begin
               tx_dataq<=data;
            end
        end
        else
        begin
            case(bit_cnt)

            4'd0: begin
                rs232_tx <= 1'b0;      // Start bit
                bit_cnt  <= 1;
            end

            4'd1: begin rs232_tx <= tx_data[0]; bit_cnt <= 2; end
            4'd2: begin rs232_tx <= tx_data[1]; bit_cnt <= 3; end
            4'd3: begin rs232_tx <= tx_data[2]; bit_cnt <= 4; end
            4'd4: begin rs232_tx <= tx_data[3]; bit_cnt <= 5; end
            4'd5: begin rs232_tx <= tx_data[4]; bit_cnt <= 6; end
            4'd6: begin rs232_tx <= tx_data[5]; bit_cnt <= 7; end
            4'd7: begin rs232_tx <= tx_data[6]; bit_cnt <= 8; end
            4'd8: begin rs232_tx <= tx_data[7]; bit_cnt <= 9; end

            4'd9:
            begin
                rs232_tx <= 1'b1;      // Stop bit
                done_tx  <= 1'b1;
                busy     <= 1'b0;
                bit_cnt  <= 0;
            end

            default:
            begin
                rs232_tx <= 1'b1;
                busy     <= 1'b0;
                bit_cnt  <= 0;
            end

            endcase
        end
    end
end

endmodule
