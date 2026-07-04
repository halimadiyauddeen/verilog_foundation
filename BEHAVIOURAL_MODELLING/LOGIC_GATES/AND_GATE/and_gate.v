// Halima Diyauddeen — 2026 — AND Gate (DUT)

/*
 * Module Name : and_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module and_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = a & b;
    end

endmodule
