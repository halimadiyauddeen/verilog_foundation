// Halima Diyauddeen — 2026 — Half Adder Testbench

/*
 * Module Name : half_adder_tb
 * Description : Testbench for the Half Adder DUT
 */

module half_adder_tb;

    // Testbench signals
    reg a;
    reg b;

    wire sum;
    wire carry;

    // Instantiate the Design Under Test (DUT)
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Sum=%b | Carry=%b",
                  a, b, sum, carry);

    // Apply test vectors
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule
