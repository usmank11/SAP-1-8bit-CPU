`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 07:06:59 PM
// Design Name: 
// Module Name: top
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

`include "cpu.v"
`include "seven_seg.v"
`include "bin_bcd.v"

module top(
    input CLK_IN,
    input btn0,
    output reg ar6,
	output reg ar7, output reg ar8,
	output ar5, output reg ar9,
	output reg ar10, output ar4,
	output ar3, output reg ar11,
	output reg ar12, output ar2
    );
    
    wire[7:0] out;
    reg[23:0] clk;
    always @(posedge CLK_IN)
        clk <= clk + 1;
    
    cpu cpu0(
        .clk(clk[15]),
        .reset(btn0),
        .out(out)
    );
    
    reg[3:0] cathode = 4'b1110;
    wire[6:0] seg_ones;
    wire[6:0] seg_tens;
    wire[6:0] seg_hundreds;
    wire[11:0] bcd;
    
    
    bin_bcd bin_bcd0(out, bcd);
    
    seven_seg seven_seg_ones(
        .bcd(bcd[3:0]),
        .segment(seg_ones));
    
    seven_seg seven_seg_tens(
        .bcd(bcd[7:4]),
        .segment(seg_tens));
    
    seven_seg seven_seg_hundreds(
        .bcd(bcd[11:8]),
        .segment(seg_hundreds));
        
    always @(posedge clk[10])
        case (cathode)
            4'b1110: begin
                cathode = 4'b1011;
                {ar8, ar6, ar10, ar11, ar12, ar7, ar9} = seg_hundreds;
            end
            4'b1011: begin
                cathode = 4'b1101;
                {ar8, ar6, ar10, ar11, ar12, ar7, ar9} = seg_tens;
            end
            4'b1101: begin
                cathode = 4'b1110;
                {ar8, ar6, ar10, ar11, ar12, ar7, ar9} = seg_ones;
            end
            default: begin
                cathode = 4'b1111;
            end
        endcase

    assign {ar2, ar3, ar4, ar5} = cathode;
endmodule