// Halima Diyauddeen — 2026 — 1×2 DEMUX Testbench

/*
 * Module Name : demux_1x2_tb
 * Description : Testbench for the 1×2 DEMUX DUT
 */

module demux_1x2_tb;

    // Testbench signals
    reg in;
    reg sel;

    wire y0;
    wire y1;

    // Instantiate the Design Under Test (DUT)
    demux_1x2 dut (
        .in(in),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    // Monitor the input and output signals
    initial
        $monitor("IN=%b | SEL=%b | Y0=%b | Y1=%b",
                  in, sel, y0, y1);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {in, sel} = $random;
            #10;
        end
    end

endmodule
