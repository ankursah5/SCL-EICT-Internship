module fifo(clk,datain,dataout,mode,empty,full);
input clk;
output reg empty;
output reg full;
input [3:0]datain;
input [1:0]mode;
output reg [3:0]dataout;
parameter n=5;
integer front;
integer rear;
reg [3:0]store[0:5];

initial
begin
    front=-1;
    rear=-1;
    empty=1;
    full=0;
end

always @(posedge clk)
begin
    if(front==-1&rear==-1)   //empty check
        empty=1;
    else
        empty=0;
        
        
    if(((rear+1)%n) == front)   //full check
        full=1;
    else
        full=0;
        
        
    if(mode==2'b00);            //idle
    
    
    else if(mode==2'b01)        //insert
    begin 
        if(full==1);               //if full idle
        else if(empty==1)
        begin
            rear=rear+1;
            front=front+1;
            store[rear]=datain;
        end
        else
        begin
            rear=(rear+1)%n;
            store[rear]=datain;
        end
    end
    
      
    else if(mode==2'b10)   //pop
    begin   
        if(empty==1);
        else if(front==rear)
        begin
            dataout=store[front];
            rear=0;
            front=0;
        end
        else    
        begin    
            dataout=store[front];
            front=(front+1)%n;
        end
   end
end

endmodule
