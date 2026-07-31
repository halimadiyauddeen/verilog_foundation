module jk_ff_tb();

reg clk,rst,j,k;
wire q;

jk_ff dut (clk,rst,j,k,q);
initial begin
forever #5 clk=~clk;
end

initial begin
$monitor("0t=%b,clk=%b,rst=%b,j=%b,k=%b,q=%b", $time,clk,rst,j,k,q);

clk=0; rst=0;
 j=0; k=0;
 #10;
 rst=1;
repeat(5) begin
{ j,k} = $random; 
#10;
end
$finish;
end
endmodule
