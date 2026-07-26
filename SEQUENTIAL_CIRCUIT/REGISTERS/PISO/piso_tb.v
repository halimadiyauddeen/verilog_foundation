module piso_tb();

reg clk,mode;
reg [3:0] pi;
reg [3:0] q;
wire sout;

piso dut (clk,pi,mode,sout);

initial begin 
forever #5 clk=~clk;
end


initial begin
$monitor ("0t=%t,clk=%b,mode=%b,pi=%b,sout=%b,", $time,clk,mode,pi,sout);
clk = 0;
pi = 4'b0011;
mode=0; 

#10;
mode=1;
#50;
$finish;
end 
endmodule
