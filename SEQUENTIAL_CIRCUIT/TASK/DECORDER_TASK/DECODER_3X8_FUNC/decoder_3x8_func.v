// Halima Diyauddeen — 2026 — 3×8 Decoder (DUT)

/*
 * Module Name : decoder_3x8
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module decoder_3x8_func (

    input  [2:0] in,

    output [7:0] y
);

    // Function definition
    function [7:0] decoder_func;
        input [2:0] in;

        begin
            case (in)
                3'b000: decoder_func = 8'b00000001;
                3'b001: decoder_func = 8'b00000010;
                3'b010: decoder_func = 8'b00000100;
                3'b011: decoder_func = 8'b00001000;
                3'b100: decoder_func = 8'b00010000;
                3'b101: decoder_func = 8'b00100000;
                3'b110: decoder_func = 8'b01000000;
                3'b111: decoder_func = 8'b10000000;
            endcase
        end
    endfunction

    // Function call
    assign y = decoder_func(in);

endmodule
