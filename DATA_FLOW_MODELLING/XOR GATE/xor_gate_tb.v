// Halima Diyauddeen — 2026 — XOR Gate Testbench

/*
 * Module Name : xor_gate_tb
 * Description : Testbench for the XOR Gate DUT
 */

module xor_gate_tb;

    // Testbench signals
    reg a;
    reg b;
    wire y;

    // Instantiate the Design Under Test (DUT)
    xor_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Monitor the input and output signals
    initial
        $monitor("A = %b | B = %b | Y = %b", a, b, y);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
