// Halima Diyauddeen — 2026 — Full Adder Testbench

/*
 * Module Name : full_adder_tb
 * Description : Testbench for the Full Adder DUT
 */

module full_adder_tb;

    // Testbench signals
    reg a;
    reg b;
    reg cin;

    wire sum;
    wire carry;

    // Instantiate the Design Under Test (DUT)
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",
                  a, b, cin, sum, carry);

    // Apply random test vectors
    initial begin
        repeat (10) begin
            {a, b, cin} = $random;
            #10;
        end
    end

endmodule
