// Halima Diyauddeen — 2026 — AND Gate Testbench

/*
 * Module Name : and_gate_tb
 * Description : Testbench for the AND Gate DUT
 */

module and_gate_tb;

    // Testbench signals
    reg a;
    reg b;

    wire y;

    integer i;

    // Instantiate the Design Under Test (DUT)
    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Y=%b",
                  a, b, y);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b} = $random;
            #10;
        end
    end

endmodule
