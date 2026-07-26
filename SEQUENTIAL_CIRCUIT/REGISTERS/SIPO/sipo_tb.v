module sipo_tb;

reg clk;
reg rst;
reg si;
wire [3:0] q;

// DUT Instantiation
sipo dut(
    .clk(clk),
    .rst(rst),
    .si(si),
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
        "Time=%0t clk=%b rst=%b si=%b q=%b",
        $time, clk, rst, si, q
    );
end

// Stimulus
initial begin
    rst = 0;
    si = 0;

    #10;
    rst = 1;

    repeat (10) begin
        si = $random;
        #10;
    end

    $finish;
end

endmodule
