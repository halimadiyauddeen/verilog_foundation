// Halima Diyauddeen — 2026 — 1×4 DEMUX (DUT)

/*
 * Module Name : demux_1x4
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module demux_1x4_func (

    input  d,
    input  [1:0] sel,

    output [3:0] y
);

    // Function definition
    function [3:0] demux_func;
        input d;
        input [1:0] sel;

        begin
            case (sel)
                2'b00: demux_func = {3'b000, d};
                2'b01: demux_func = {2'b00, d, 1'b0};
                2'b10: demux_func = {1'b0, d, 2'b00};
                2'b11: demux_func = {d, 3'b000};
            endcase
        end
    endfunction

    // Function call
    assign y = demux_func(d, sel);

endmodule
