// Halima Diyauddeen — 2026 — 4×2 Encoder (DUT)

/*
 * Module Name : encoder_4x2
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module encoder_4x2_func (

    input  d0,
    input  d1,
    input  d2,
    input  d3,

    output [1:0] y
);

    // Function definition
    function [1:0] encoder_func;
        input d0;
        input d1;
        input d2;
        input d3;

        begin
            if (d3)
                encoder_func = 2'b11;
            else if (d2)
                encoder_func = 2'b10;
            else if (d1)
                encoder_func = 2'b01;
            else
                encoder_func = 2'b00;
        end
    endfunction

    // Function call
    assign y = encoder_func(d0, d1, d2, d3);

endmodule
