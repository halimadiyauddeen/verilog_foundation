// Halima Diyauddeen — 2026 — 4×1 MUX (DUT)

/*
 * Module Name : mux_4x1
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module mux_4x1_func (

    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  [1:0] sel,

    output y
);

    // Function definition
    function mux_func;
        input i0;
        input i1;
        input i2;
        input i3;
        input [1:0] sel;

        begin
            case (sel)
                2'b00: mux_func = i0;
                2'b01: mux_func = i1;
                2'b10: mux_func = i2;
                2'b11: mux_func = i3;
            endcase
        end
    endfunction

    // Function call
    assign y = mux_func(i0, i1, i2, i3, sel);

endmodule
