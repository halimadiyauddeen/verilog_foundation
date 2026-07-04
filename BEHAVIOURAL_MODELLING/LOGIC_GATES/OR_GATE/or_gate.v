// Halima Diyauddeen — 2026 — OR Gate (DUT)

/*
 * Module Name : or_gate
 * Modeling    : Behavioral
 * Description : Design Under Test (DUT)
 */

module or_gate (
    input  a,
    input  b,

    output reg y
);

    always @(*) begin
        y = a | b;
    end

endmodule
