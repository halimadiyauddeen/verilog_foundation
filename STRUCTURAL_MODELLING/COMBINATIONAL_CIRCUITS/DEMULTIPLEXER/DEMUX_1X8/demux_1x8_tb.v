// Halima Diyauddeen — 2026 — 1×8 DEMUX Testbench

/*
 * Module Name : demux_1x8_tb
 * Description : Testbench for the 1×8 DEMUX DUT
 */

module demux_1x8_tb;

    // Testbench signals
    reg d;
    reg s2;
    reg s1;
    reg s0;

    wire y0;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    wire y5;
    wire y6;
    wire y7;

    // Instantiate the Design Under Test (DUT)
    demux_1x8 dut (
        .d(d),
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );

    // Monitor the input and output signals
    initial
        $monitor("D=%b | S2=%b | S1=%b | S0=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b | Y4=%b | Y5=%b | Y6=%b | Y7=%b",
                  d, s2, s1, s0,
                  y0, y1, y2, y3,
                  y4, y5, y6, y7);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {d, s2, s1, s0} = $random;
            #10;
        end
    end

endmodule
