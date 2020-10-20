module pwm_tb;

reg [6:0]timep;
reg [6:0]duty;
reg clk;
wire q;


pwm  x1(clk,duty,timep,q);

initial
clk=0;
always
#5 clk = ~clk;

initial 
begin

    duty=2;
    timep=8;
    
    #200;
    duty=4;
    timep=8;
  end
endmodule

