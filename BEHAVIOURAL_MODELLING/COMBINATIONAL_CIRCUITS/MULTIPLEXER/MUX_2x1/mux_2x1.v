// Halima Diyauddeen — 2026 — 2×1 MUX (DUT)

/*
 * Module Name : mux_2x1
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module mux_2x1 (
    input  i0,
    input  i1,
    input  sel,

    output reg y
);

    always @(*) begin
        case (sel)
            1'b0: y = i0;
            1'b1: y = i1;
        endcase
    end

endmodule
