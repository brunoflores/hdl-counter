`timescale 1ns / 1ps

module counter(
    input clk,
    input clear,
    input btn,
    output [3:0] counter_out
);

    reg [3:0] cnt;
    
    always @ (posedge clk) begin
        if (clear)
            cnt <= 4'h00;
        else if (btn)
            cnt <= cnt + 1'b1;
    end
    
    assign counter_out = cnt;

endmodule
