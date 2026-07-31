// Halima Diyauddeen — 2026 — 8×1 MUX (DUT)

/*
 * Module Name : mux_8x1
 * Modeling    : Function
 * Description : Design Under Test (DUT)
 */

module mux_8x1_func (

    input  i0,
    input  i1,
    input  i2,
    input  i3,
    input  i4,
    input  i5,
    input  i6,
    input  i7,
    input  [2:0] sel,

    output y
);

    // Function definition
    function mux_func;
        input i0;
        input i1;
        input i2;
        input i3;
        input i4;
        input i5;
        input i6;
        input i7;
        input [2:0] sel;

        begin
            case (sel)
                3'b000: mux_func = i0;
                3'b001: mux_func = i1;
                3'b010: mux_func = i2;
                3'b011: mux_func = i3;
                3'b100: mux_func = i4;
                3'b101: mux_func = i5;
                3'b110: mux_func = i6;
                3'b111: mux_func = i7;
            endcase
        end
    endfunction

    // Function call
    assign y = mux_func(i0, i1, i2, i3, i4, i5, i6, i7, sel);

endmodule
