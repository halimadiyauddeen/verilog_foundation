// Halima Diyauddeen — 2026 — NOT Gate Testbench

/*
 * Module Name : not_gate_tb
 * Description : Testbench for the NOT Gate DUT
 */

module not_gate_tb;

    // Testbench signals
    reg a;
    wire y;

    // Instantiate the Design Under Test (DUT)
    not_gate dut (
        .a(a),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("A = %b | Y = %b", a, y);

    // Apply test vectors
    initial begin
        a = 0; #10;
        a = 1; #10;
    end

endmodule
