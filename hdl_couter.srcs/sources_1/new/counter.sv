`timescale 1ns / 1ps

module counter(
    input clk,
    input clear,
    output [7:0] counter_out
);

    reg [7:0] cnt;
    
    always @ (posedge clk) begin
        if (!clear)
            cnt <= 8'h00;
        else
            cnt <= cnt + 1'b1;
    end
    
    assign counter_out = cnt;

endmodule
