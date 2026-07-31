// Halima Diyauddeen — 2026 — 4×2 Encoder Task (Testbench)

/*
 * Module Name : encoder_4x2_task_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module encoder_4x2_task_tb;

    // Testbench signals
    reg [3:0] d;

    wire [1:0] y;

    // Instantiate the Design Under Test (DUT)
    encoder_4x2_task dut (

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

            d = 4'b0001 << ($random % 4);
            #10;

        end

    end

endmodule
