// Halima Diyauddeen — 2026 — 1-Bit Comparator Testbench

/*
 * Module Name : comparator_1bit_tb
 * Description : Testbench for the 1-Bit Comparator DUT
 */

module comparator_1bit_tb;

    // Testbench signals
    reg a;
    reg b;

    wire greater;
    wire equal;
    wire less;

    // Instantiate the Design Under Test (DUT)
    comparator_1bit dut (
        .a(a),
        .b(b),
        .greater(greater),
        .equal(equal),
        .less(less)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Greater=%b | Equal=%b | Less=%b",
                  a, b, greater, equal, less);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
