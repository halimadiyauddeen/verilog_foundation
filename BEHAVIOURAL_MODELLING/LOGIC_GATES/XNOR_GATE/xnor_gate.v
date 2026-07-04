// Halima Diyauddeen — 2026 — XNOR Gate (DUT)

/*
 * Module Name : xnor_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module xnor_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = ~(a ^ b);
    end

endmodule
