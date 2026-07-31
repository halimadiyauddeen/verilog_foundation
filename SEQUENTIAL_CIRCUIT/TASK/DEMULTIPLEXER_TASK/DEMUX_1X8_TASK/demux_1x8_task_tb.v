// Halima Diyauddeen — 2026 — 1×8 DEMUX Task (Testbench)

/*
 * Module Name : demux_1x8_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module demux_1x8_task_tb;

    // Testbench signals
    reg din;
    reg [2:0] sel;

    wire y0;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    wire y5;
    wire y6;
    wire y7;

    // Instantiate the Design Under Test (DUT)
    demux_1x8_task dut (

        .din(din),
        .sel(sel),
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
        $monitor("Time=%0t | DIN=%b | SEL=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b | Y4=%b | Y5=%b | Y6=%b | Y7=%b",
                  $time, din, sel,
                  y0, y1, y2, y3, y4, y5, y6, y7);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {din, sel} = $random;
            #10;

        end

    end

endmodule
