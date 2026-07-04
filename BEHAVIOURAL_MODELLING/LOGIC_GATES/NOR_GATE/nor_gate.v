// Halima Diyauddeen — 2026 — NOR Gate (DUT)

/*
 * Module Name : nor_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module nor_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = ~(a | b);
    end

endmodule
