module Matrix_tb;
  
  reg [71:0]a;
  reg [71:0]b;
  MatrixMul x1(a,b);
  
   initial 
     begin
        // Apply Inputs
       a = {8'd1,8'd2,8'd3,8'd1,8'd2,8'd3,8'd1,8'd2,8'd3};
       b = {8'd1,8'd2,8'd3,8'd1,8'd2,8'd3,8'd1,8'd2,8'd3};
 
     end
endmodule