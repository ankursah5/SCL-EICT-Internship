module counter4bit(clk,q,reset);
  input clk;
  input reset;
  output [3:0]q;
  parameter x =1;
  wire t2;
  wire t3;
  assign t2 = q[0] & q[1];
  assign t3 = t2 & q[2];
  tff x0(x,clk,q[0],reset);
  tff x1(q[0],clk,q[1],reset);
  tff x2(t2,clk,q[2],reset);
  tff x3(t3,clk,q[3],reset);
endmodule
  
  

module tff(t,clk,q,reset);
  input clk;
  input t;
  input reset;
  output reg q;
  
  always @(posedge clk)
  begin
    if(reset)
      q<=0;
    else if(t)
      q<=~q;
    else
      q<=q;
  end
endmodule