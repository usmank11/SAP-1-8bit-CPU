`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 07:04:56 PM
// Design Name: 
// Module Name: bin_bcd
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


module bin_bcd(
    input wire[7:0] bin,
    output reg[11:0] bcd
    );
    
    integer i;
    
    always @(bin) begin
        bcd = 0;
    
        for (i = 0; i < 8; i = i+1) begin
            if (bcd[3:0] > 4)
                bcd[3:0] = bcd[3:0] + 3;
            if (bcd[7:4] > 4)
                bcd[7:4] = bcd[7:4] + 3;
            if (bcd[11:8] > 4)
                bcd[11:8] = bcd[11:8] + 3;
            //Concatenate acts as a shift
            bcd = {bcd[10:0], bin[7-i]};
        end
    end
endmodule
