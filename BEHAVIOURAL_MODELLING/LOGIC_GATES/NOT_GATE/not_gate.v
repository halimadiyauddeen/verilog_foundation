// Halima Diyauddeen — 2026 — NOT Gate (DUT)

/*
 * Module Name : not_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module not_gate (
    input  a,

    output reg y
);

    always @(*) begin
        y = ~a;
    end

endmodule
