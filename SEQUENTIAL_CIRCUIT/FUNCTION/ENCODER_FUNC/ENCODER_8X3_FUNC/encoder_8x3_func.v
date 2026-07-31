// Halima Diyauddeen — 2026 — 8×3 Encoder (DUT)

/*
 * Module Name : encoder_8x3
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module encoder_8x3_func (

    input  d0,
    input  d1,
    input  d2,
    input  d3,
    input  d4,
    input  d5,
    input  d6,
    input  d7,

    output [2:0] y
);

    // Function definition
    function [2:0] encoder_func;
        input d0;
        input d1;
        input d2;
        input d3;
        input d4;
        input d5;
        input d6;
        input d7;

        begin
            if (d7)
                encoder_func = 3'b111;
            else if (d6)
                encoder_func = 3'b110;
            else if (d5)
                encoder_func = 3'b101;
            else if (d4)
                encoder_func = 3'b100;
            else if (d3)
                encoder_func = 3'b011;
            else if (d2)
                encoder_func = 3'b010;
            else if (d1)
                encoder_func = 3'b001;
            else
                encoder_func = 3'b000;
        end
    endfunction

    // Function call
    assign y = encoder_func(d0, d1, d2, d3, d4, d5, d6, d7);

endmodule
