module newcomponent(aluResult,z,n);//ALU operation according to the ALU control line values
output [31:0] sum;
input [31:0] a,b; 
input [2:0] gin;//ALU control line
reg [31:0] sum;
reg [31:0] less;
output z,n;
assign z = ~(&aluResult);
assign n = aluResult[31]; 
endmodule
