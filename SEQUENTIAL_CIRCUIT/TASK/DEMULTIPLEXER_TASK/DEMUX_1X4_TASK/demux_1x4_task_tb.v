// Halima Diyauddeen — 2026 — 1×4 DEMUX Task (Testbench)

/*
 * Module Name : demux_1x4_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module demux_1x4_task_tb;

    // Testbench signals
    reg din;
    reg [1:0] sel;

    wire y0;
    wire y1;
    wire y2;
    wire y3;

    // Instantiate the Design Under Test (DUT)
    demux_1x4_task dut (

        .din(din),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | DIN=%b | SEL=%b | Y0=%b | Y1=%b | Y2=%b | Y3=%b",
                  $time, din, sel, y0, y1, y2, y3);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {din, sel} = $random;
            #10;

        end

    end

endmodule
