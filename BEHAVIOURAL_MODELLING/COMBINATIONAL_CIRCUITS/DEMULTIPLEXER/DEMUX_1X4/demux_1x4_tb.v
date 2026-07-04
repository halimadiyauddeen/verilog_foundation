// Halima Diyauddeen — 2026 — 1×4 DEMUX Testbench

/*
 * Module Name : demux_1x4_tb
 * Description : Testbench for the 1×4 DEMUX DUT
 */

module demux_1x4_tb;

    // Testbench signals
    reg in;
    reg [1:0] sel;

    wire y0;
    wire y1;
    wire y2;
    wire y3;

    // Instantiate the Design Under Test (DUT)
    demux_1x4 dut (
        .in(in),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    // Monitor the input and output signals
    initial
        $monitor("IN=%b | SEL=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b",
                  in, sel, y0, y1, y2, y3);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {in, sel} = $random;
            #10;
        end
    end

endmodule
