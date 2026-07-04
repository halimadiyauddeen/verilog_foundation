// Halima Diyauddeen — 2026 — NAND Gate (DUT)

/*
 * Module Name : nand_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module nand_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = ~(a & b);
    end

endmodule
