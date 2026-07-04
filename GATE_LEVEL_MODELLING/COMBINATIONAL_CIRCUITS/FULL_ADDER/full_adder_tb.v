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
    wire cout;

    // Instantiate the Design Under Test (DUT)
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Monitor the input and output signals
    initial
        $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                  a, b, cin, sum, cout);

    // Apply test vectors
    initial begin
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
    end

endmodule
