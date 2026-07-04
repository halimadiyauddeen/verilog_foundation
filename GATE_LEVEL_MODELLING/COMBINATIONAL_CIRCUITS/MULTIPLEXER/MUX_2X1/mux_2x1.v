// Halima Diyauddeen — 2026 — 2x1 MUX (DUT)

/*
 * Module Name : mux_2x1
 * Modeling    : Gate-Level
 * Description : Design Under Test (DUT)
 */

module mux_2x1 (
    input  i0,         // Input 0
    input  i1,         // Input 1
    input  s,          // Select input

    output y           // MUX output
);

    wire not_s;
    wire w0;
    wire w1;

    // Generate complement of the select input
    not (not_s, s);

    // Generate intermediate outputs
    and (w0, i0, not_s);
    and (w1, i1, s);

    // Generate final output
    or (y, w0, w1);

endmodule
