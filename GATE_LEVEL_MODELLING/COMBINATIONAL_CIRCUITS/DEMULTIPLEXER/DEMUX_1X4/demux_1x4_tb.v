// Halima Diyauddeen — 2026 — 1x4 DEMUX Testbench

/*
 * Module Name : demux_1x4_tb
 * Description : Testbench for the 1x4 DEMUX DUT
 */

module demux_1x4_tb;

    // Testbench signals
    reg d;
    reg s1;
    reg s0;

    wire y0;
    wire y1;
    wire y2;
    wire y3;

    // Instantiate the Design Under Test (DUT)
    demux_1x4 dut (
        .d(d),
        .s1(s1),
        .s0(s0),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    // Monitor the input and output signals
    initial
        $monitor("D=%b | S1=%b | S0=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b",
                  d, s1, s0, y0, y1, y2, y3);

    // Apply test vectors
    initial begin
        d = 0; s1 = 0; s0 = 0; #10;
        d = 1; s1 = 0; s0 = 0; #10;
        d = 1; s1 = 0; s0 = 1; #10;
        d = 1; s1 = 1; s0 = 0; #10;
        d = 1; s1 = 1; s0 = 1; #10;
    end

endmodule
