`timescale 1ns / 1ps

module counter_top(
    input wire sysclk,
    input wire clear,
    input wire btn,
    output wire seg_a,
    output wire seg_b,
    output wire seg_c,
    output wire seg_d,
    output wire seg_e,
    output wire seg_f,
    output wire seg_g
);

    counter counter(
        clk_out,
        clear,
        btn,
        counter_out
    );
    
    Binary_To_7Segment seg(
        clk_out,
        counter_out,
        seg_a,
        seg_b,
        seg_c,
        seg_d,
        seg_e,
        seg_f,
        seg_g
    );
    
    clk_gen clk_gen(
        clk_out,
        sysclk
    );
    
endmodule
