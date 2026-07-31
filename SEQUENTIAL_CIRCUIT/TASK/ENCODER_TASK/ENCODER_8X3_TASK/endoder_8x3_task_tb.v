// Halima Diyauddeen — 2026 — 8×3 Encoder Task (Testbench)

/*
 * Module Name : encoder_8x3_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module encoder_8x3_task_tb;

    // Testbench signals
    reg [7:0] d;

    wire [2:0] y;

    // Instantiate the Design Under Test (DUT)
    encoder_8x3_task dut (

        .d(d),
        .y(y)

    );

    // Monitor the input and output signals
    initial
        $monitor("Time=%0t | D=%b | Y=%b",
                  $time, d, y);

    // Apply random test vectors
    initial begin

        repeat (10) begin

            d = 8'b00000001 << ($random % 8);
            #10;

        end

    end

endmodule
