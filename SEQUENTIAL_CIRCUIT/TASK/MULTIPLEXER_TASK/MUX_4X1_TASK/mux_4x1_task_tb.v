// Halima Diyauddeen — 2026 — 4×1 MUX Task (Testbench)

/*
 * Module Name : mux_4x1_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module mux_4x1_task_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg [1:0] sel;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_4x1_task dut (

        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel(sel),
        .y(y)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | I0=%b | I1=%b | I2=%b | I3=%b | SEL=%b | Y=%b",
                  $time, i0, i1, i2, i3, sel, y);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {i0, i1, i2, i3, sel} = $random;
            #10;

        end

    end

endmodule// Halima Diyauddeen — 2026 — 4×1 MUX Task (Testbench)

/*
 * Module Name : mux_4x1_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module mux_4x1_task_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg [1:0] sel;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_4x1_task dut (

        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel(sel),
        .y(y)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | I0=%b | I1=%b | I2=%b | I3=%b | SEL=%b | Y=%b",
                  $time, i0, i1, i2, i3, sel, y);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {i0, i1, i2, i3, sel} = $random;
            #10;

        end

    end

endmodule// Halima Diyauddeen — 2026 — 4×1 MUX Task (Testbench)

/*
 * Module Name : mux_4x1_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module mux_4x1_task_tb;

    // Testbench signals
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg [1:0] sel;

    wire y;

    // Instantiate the Design Under Test (DUT)
    mux_4x1_task dut (

        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel(sel),
        .y(y)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | I0=%b | I1=%b | I2=%b | I3=%b | SEL=%b | Y=%b",
                  $time, i0, i1, i2, i3, sel, y);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            {i0, i1, i2, i3, sel} = $random;
            #10;

        end

    end

endmodule
