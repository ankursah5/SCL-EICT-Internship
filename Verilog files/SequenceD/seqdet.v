module seqdet(datain,clk,count);
input datain;
input clk;
output reg [5:0]count;

reg [3:0]chk;
initial 
begin
    chk=4'b0000;
    count=0;
end
    
 always @(posedge clk)
 begin  
 
    chk = chk << 1;
    chk[0]=datain;
    if(chk==4'b1010)
        count=count+1;
end     
endmodule
