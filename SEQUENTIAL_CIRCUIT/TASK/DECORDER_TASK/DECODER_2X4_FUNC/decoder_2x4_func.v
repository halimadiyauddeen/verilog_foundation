// Halima Diyauddeen — 2026 — 2×4 Decoder (DUT)

/*
 * Module Name : decoder_2x4
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module decoder_2x4_func (

    input  [1:0] in,

    output [3:0] y
);

    // Function definition
    function [3:0] decoder_func;
        input [1:0] in;

        begin
            case (in)
                2'b00: decoder_func = 4'b0001;
                2'b01: decoder_func = 4'b0010;
                2'b10: decoder_func = 4'b0100;
                2'b11: decoder_func = 4'b1000;
            endcase
        end
    endfunction

    // Function call
    assign y = decoder_func(in);

endmodule
