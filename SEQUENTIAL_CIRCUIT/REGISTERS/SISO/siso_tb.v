module siso_tb();
reg clk,rst,si;
wire so;

siso dut(clk,rst,si,so);


//clock generation
initial begin
forever #5 clk=~clk;
end

initial begin
$monitor ("0t=%t,clk=%b,rst=%b,si=%b,so=%b,", $time,clk,rst,si,so);

rst=0; rst=1;
#10;

si=1; #5;
si=0; #5;
si=0; #5;
si=1; #5;
$finish;
end 
endmodule
