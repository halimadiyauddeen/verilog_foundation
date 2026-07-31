module d_ff_tb;

reg clk;
reg rst;
reg d;
wire q;

// DUT Instantiation
d_ff dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor Inputs and Output
initial begin
    $monitor(
        "Time=%0t clk=%b rst=%b d=%b q=%b",
        $time, clk, rst, d, q
    );
end

// Apply Test Vectors
initial begin
    rst = 0;
    d   = 0;

    #10;
    rst = 1;

    repeat (10) begin
        d = $random;
        #10;
    end

    $finish;
end

endmodule
