module t_ff_tb;

reg clk;
reg rst;
reg t;
wire q;

// DUT Instantiation
t_ff dut(
    .clk(clk),
    .rst(rst),
    .t(t),
    .q(q)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Monitor
initial begin
    $monitor(
        "Time=%0t clk=%b rst=%b t=%b q=%b",
        $time, clk, rst, t, q
    );
end

// Stimulus
initial begin
    rst = 0;
    t   = 0;

    #10;
    rst = 1;

    repeat (10) begin
        t = $random;
        #10;
    end

    $finish;
end

endmodule
