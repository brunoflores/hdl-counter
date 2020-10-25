`timescale 1ns / 1ps

module counter_top(
    input wire  sysclk,
    input wire clear,
    output wire [7:0] counter_out,
    output wire clk_out
);
    
    counter counter(
        clk_out,
        clear,
        counter_out
    );
       
    clk_wiz_0 clk_wiz(
        clk_out,
        sysclk
    );
    
endmodule
