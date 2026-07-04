// Halima Diyauddeen — 2026 — Ripple Carry Adder Testbench

/*
 * Module Name : ripple_carry_adder_tb
 * Description : Testbench for the Ripple Carry Adder DUT
 */

module ripple_carry_adder_tb;

    reg a0, a1, a2, a3;
    reg b0, b1, b2, b3;
    reg cin;

    wire s0, s1, s2, s3;
    wire cout;

    // Instantiate DUT
    ripple_carry_adder dut (
        .a0(a0),
        .a1(a1),
        .a2(a2),
        .a3(a3),

        .b0(b0),
        .b1(b1),
        .b2(b2),
        .b3(b3),

        .cin(cin),

        .s0(s0),
        .s1(s1),
        .s2(s2),
        .s3(s3),

        .cout(cout)
    );

    // Monitor inputs and outputs
    initial
        $monitor("A=%b%b%b%b B=%b%b%b%b Cin=%b | Sum=%b%b%b%b Cout=%b",
                  a3,a2,a1,a0,
                  b3,b2,b1,b0,
                  cin,
                  s3,s2,s1,s0,
                  cout);

    // Apply test vectors
    initial begin
        a3=0; a2=0; a1=0; a0=0;
        b3=0; b2=0; b1=0; b0=0;
        cin=0; #10;

        a3=0; a2=0; a1=1; a0=1;
        b3=0; b2=0; b1=0; b0=1;
        cin=0; #10;

        a3=0; a2=1; a1=1; a0=1;
        b3=0; b2=0; b1=0; b0=1;
        cin=0; #10;

        a3=1; a2=1; a1=1; a0=1;
        b3=0; b2=0; b1=0; b0=1;
        cin=0; #10;

        a3=1; a2=1; a1=1; a0=1;
        b3=1; b2=1; b1=1; b0=1;
        cin=0; #10;
    end

endmodule
