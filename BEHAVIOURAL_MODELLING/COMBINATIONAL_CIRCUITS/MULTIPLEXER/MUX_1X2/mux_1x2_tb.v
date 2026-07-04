// Halima Diyauddeen — 2026 — 2×1 MUX Testbench

/*
 * Module Name : mux_2x1_tb
 * Description : Testbench for the 2×1 MUX DUT
 */

module mux_2x1_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg sel;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_2x1 dut (
        .i0(i0),
        .i1(i1),
        .sel(sel),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("I0=%b | I1=%b | SEL=%b | Y=%b",
                  i0, i1, sel, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {i0, i1, sel} = $random;
            #10;
        end
    end

endmodule
