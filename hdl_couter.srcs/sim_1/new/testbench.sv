`timescale 1ns / 1ns

module testbench;

    parameter ClockPeriod = 83.33;
    
    reg sysclk;
    wire [7:0] counter_out;
    wire clk_out;
    reg clear;
    
    // Clock gen
    initial begin
      sysclk = 1'b0;
      clear = 1;
      forever sysclk = #(ClockPeriod / 2) ~ sysclk;
    end
    
    initial begin
        #100
        clear = 0;
        #37700
        clear = 1;
        #9999999 $stop;
    end
    
    always @(*)
        $strobe("[@%0t] counter_out = %d", $time, counter_out);
    
    counter_top dut(
        .sysclk(sysclk),
        .clear(clear),
        .counter_out(counter_out),
        .clk_out(clk_out)
    );
    
endmodule
