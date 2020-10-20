
module MatrixMul(a,b);
  input [71:0]a;
  input [71:0]b;  // a whole 8bit X 9 elements of array for input as verilog
  				  //doesn't supports multi dimension array as input
  
  reg [7:0]aa[0:2][0:2];
  reg [7:0]bb[0:2][0:2];
  reg [7:0]cc[0:2][0:2]; 
  integer i,j,k;
  always @(a or b)
  begin
    
    {aa[0][0],aa[0][1],aa[0][2],aa[1][0],aa[1][1],aa[1][2],aa[2][0],aa[2][1],aa[2][2]}=a;
    {bb[0][0],bb[0][1],bb[0][2],bb[1][0],bb[1][1],bb[1][2],bb[2][0],bb[2][1],bb[2][2]}=b;
    
    for(i=0;i<3;i++)
	begin
      for(j=0;j<3;j++)
		begin
			cc[i][j]=0;
          for(k=0;k<3;k++)
              cc[i][j]=cc[i][j]+aa[i][k]*bb[k][j];
			
        end
    end
    
    for(i=0;i<3;i=i+1)
    begin
      for(j=0;j<3;j=j+1)
        $display("aa[%0d][%0d] = %0d",i,j,aa[i][j]);
    end
    
    
    for(i=0;i<3;i=i+1)
    begin
      for(j=0;j<3;j=j+1)
        $display("bb[%0d][%0d] = %0d",i,j,bb[i][j]);
    end
    
    
    for(i=0;i<3;i=i+1)
    begin
      for(j=0;j<3;j=j+1)
        $display("cc[%0d][%0d] = %0d",i,j,cc[i][j]);
    end
  end
endmodule

  
  