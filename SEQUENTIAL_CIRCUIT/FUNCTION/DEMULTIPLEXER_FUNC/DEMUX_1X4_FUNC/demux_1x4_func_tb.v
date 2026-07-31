// Halima Diyauddeen — 2026 — 1×4 DEMUX (Testbench)

/*
 * Module Name : demux_1x4_tb
 * Description : Testbench for the Design Under Test (DUT)
 */

module demux_1x4_func_tb;

    // Testbench signals
    reg d;
    reg [1:0] sel;

    wire [3:0] y;

    // Instantiate the Design Under Test (DUT)
    demux_1x4_func dut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("D=%b | SEL=%b | Y=%b",
                  d, sel, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {d, sel} = $random;
            #10;
        end
    end

endmodule
