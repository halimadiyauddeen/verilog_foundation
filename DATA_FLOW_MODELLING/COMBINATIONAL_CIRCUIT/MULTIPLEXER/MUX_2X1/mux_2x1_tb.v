// Halima Diyauddeen — 2026 — 2x1 MUX Testbench

/*
 * Module Name : mux_2x1_tb
 * Description : Testbench for the 2x1 MUX DUT
 */

module mux_2x1_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg s;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_2x1 dut (
        .i0(i0),
        .i1(i1),
        .s(s),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("I0 = %b | I1 = %b | S = %b | Y = %b",
                  i0, i1, s, y);

    // Apply test vectors
    initial begin
        i0 = 0; i1 = 0; s = 0; #10;
        i0 = 0; i1 = 1; s = 0; #10;
        i0 = 1; i1 = 0; s = 0; #10;
        i0 = 1; i1 = 1; s = 0; #10;

        i0 = 0; i1 = 0; s = 1; #10;
        i0 = 0; i1 = 1; s = 1; #10;
        i0 = 1; i1 = 0; s = 1; #10;
        i0 = 1; i1 = 1; s = 1; #10;
    end

endmodule
