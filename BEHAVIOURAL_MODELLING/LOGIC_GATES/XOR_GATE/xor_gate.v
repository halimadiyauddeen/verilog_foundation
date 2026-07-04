// Halima Diyauddeen — 2026 — XOR Gate (DUT)

/*
 * Module Name : xor_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module xor_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = a ^ b;
    end

endmodule
