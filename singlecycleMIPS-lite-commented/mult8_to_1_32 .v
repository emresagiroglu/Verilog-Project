module mult8_to_1_32(out,i0,i1,i2,i3,i4,i5,s0,s1,s2);
output [31:0] out;
input [31:0]i0,i1,i2,i3,i4,i5;
input s0,s1,s2;
//assign out = s0 ? i1:i0;

always @(*)
begin
	case(s0&s1&s2)
	3'b000: out=i0; 		
	3'b001: out=i1;	
	3'b010: out=i2;
	3'b011: out=i3;	
	3'b100: out=i4;		
	3'b101: out=i5;
	endcase
end
endmodule