// Halima Diyauddeen — 2026 — 1x2 Decoder (DUT)

/*
 * Module Name : decoder_1x2
 * Modeling    : Dataflow
 * Description : Design Under Test (DUT)
 */

module decoder_1x2 (
    input  a,        // Input
    output y0,       // Output 0
    output y1        // Output 1
);

    // Generate decoder outputs
    assign y0 = ~a;
    assign y1 =  a;

endmodule
