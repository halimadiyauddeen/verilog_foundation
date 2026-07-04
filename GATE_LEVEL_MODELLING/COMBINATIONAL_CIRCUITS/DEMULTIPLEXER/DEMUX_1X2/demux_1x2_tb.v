// Halima Diyauddeen — 2026 — 1x2 DEMUX Testbench

/*
 * Module Name : demux_1x2_tb
 * Description : Testbench for the 1x2 DEMUX DUT
 */

module demux_1x2_tb;

    // Testbench signals
    reg d;
    reg s;

    wire y0;
    wire y1;

    // Instantiate the Design Under Test (DUT)
    demux_1x2 dut (
        .d(d),
        .s(s),
        .y0(y0),
        .y1(y1)
    );

    // Monitor the input and output signals
    initial
        $monitor("D=%b | S=%b | Y0=%b | Y1=%b",
                  d, s, y0, y1);

    // Apply test vectors
    initial begin
        d = 0; s = 0; #10;
        d = 0; s = 1; #10;
        d = 1; s = 0; #10;
        d = 1; s = 1; #10;
    end

endmodule// Halima Diyauddeen — 2026 — 1x2 DEMUX Testbench

/*
 * Module Name : demux_1x2_tb
 * Description : Testbench for the 1x2 DEMUX DUT
 */

module demux_1x2_tb;

    // Testbench signals
    reg d;
    reg s;

    wire y0;
    wire y1;

    // Instantiate the Design Under Test (DUT)
    demux_1x2 dut (
        .d(d),
        .s(s),
        .y0(y0),
        .y1(y1)
    );

    // Monitor the input and output signals
    initial
        $monitor("D=%b | S=%b | Y0=%b | Y1=%b",
                  d, s, y0, y1);

    // Apply test vectors
    initial begin
        d = 0; s = 0; #10;
        d = 0; s = 1; #10;
        d = 1; s = 0; #10;
        d = 1; s = 1; #10;
    end

endmodule
