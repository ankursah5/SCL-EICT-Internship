module ffio_tb;
reg clk;
wire empty;
wire full;
reg [3:0]datain;
reg [1:0]mode;
wire [3:0]dataout;

fifo x1(clk,datain,dataout,mode,empty,full);

initial
begin
    mode=2'b00;
    clk=0;
end
always
#5 clk=~clk;

initial 
begin
    #15;
    mode=2'b01;
    datain=1010;
    
    #10;
    mode=2'b01;
    datain=1000;
    
    #10;
    mode=2'b01;
    datain=1110;
    
    #10;
    mode=2'b01;
    datain=0010;
    
    #10;
    mode=2'b10;
    
    
    #10;
    mode=2'b01;
    datain=1011;
    
    #10;
    mode=2'b01;
    datain=1111;
    
    #10;
    mode=2'b01;
    datain=0011;
    
    #10;
    mode=2'b01;
    datain=0111;
    
    #10;
    mode=2'b10;
    
    #10;
    mode=2'b10;
    
    
    
end
    




endmodule
