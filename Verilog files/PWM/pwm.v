module pwm(clk,duty,timep,q);
input clk;
input [6:0]timep;
input [6:0] duty;
output reg q;

reg [7:0]counter1;
reg [7:0]counter2;
wire q1;

initial
begin 
    q=1;
    counter1=0;
    counter2=0;
end

always @(posedge clk)
begin
    if(counter1==timep-1)
    begin
        q=1;
        counter1=0;
        counter2=0;
    end
        
        
    else if(counter1<timep-1)
    begin
    
        if(counter2==duty-1)
        begin
            q=0;
            counter1=counter1+1;
            counter2=counter2+1;
        end
        
        else if(counter2<duty-1)
        begin 
            counter1=counter1+1;
            counter2=counter2+1;
        end 
        else if(counter2>duty-1)
            counter1=counter1+1;
    end
end


endmodule