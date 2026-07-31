// Halima Diyauddeen — 2026 — 1×8 DEMUX (DUT)

/*
 * Module Name : demux_1x8
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module demux_1x8_func (

    input  d,
    input  [2:0] sel,

    output [7:0] y
);

    // Function definition
    function [7:0] demux_func;
        input d;
        input [2:0] sel;

        begin
            case (sel)
                3'b000: demux_func = {7'b0000000, d};
                3'b001: demux_func = {6'b000000, d, 1'b0};
                3'b010: demux_func = {5'b00000, d, 2'b00};
                3'b011: demux_func = {4'b0000, d, 3'b000};
                3'b100: demux_func = {3'b000, d, 4'b0000};
                3'b101: demux_func = {2'b00, d, 5'b00000};
                3'b110: demux_func = {1'b0, d, 6'b000000};
                3'b111: demux_func = {d, 7'b0000000};
            endcase
        end
    endfunction

    // Function call
    assign y = demux_func(d, sel);

endmodule
