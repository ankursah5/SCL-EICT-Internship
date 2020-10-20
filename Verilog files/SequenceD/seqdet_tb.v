module seqdet_tb;
reg clk;
reg datain;
wire [5:0]count;
  

  seqdet x1(datain,clk,count);

initial
	clk = 1'b0; 

always
#5 clk = ~clk; 
always @(posedge clk)
    datain= $random;
  
 

  


always @(posedge clk)
  $display("datain =%d count= %d",datain,count);

initial
#2000 $finish;


endmodule