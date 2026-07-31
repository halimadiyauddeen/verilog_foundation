module siso_tb();

reg clk, rst_n, si;
wire so;

siso dut(clk, rst_n, si, so);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("t=%0t clk=%b rst_n=%b si=%b so=%b",
             $time, clk, rst_n, si, so);

    rst_n = 0;
    si = 0;

    #10;
    rst_n = 1;

    #2  si = 1;
    #10 si = 0;
    #10 si = 0;
    #10 si = 1;

    #20;
    $finish;
end

initial begin
    $dumpfile("siso1.vcd");
    $dumpvars(0, siso_tb);
end

endmodule