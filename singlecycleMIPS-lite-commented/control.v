module control(in,regdest,alusrc,memtoreg,regwrite,memread,memwrite,branch,aluop1,aluop2,func,
mux3signal2,mux3signal1,mux3signal0,signal31,linkaddressignal,signal29,pc4signal,addresmemorysignal);
input [5:0] in;
input [5:0] func;
output regdest,alusrc,memtoreg,regwrite,memread,memwrite,branch,aluop1,aluop2,
mux3signal2,mux3signal1,mux3signal0,signal31,linkaddressignal,signal29,pc4signal,addresmemorysignal;
wire rformat,lw,sw,beq;
assign rformat=~|in;
assign lw=in[5]& (~in[4])&(~in[3])&(~in[2])&in[1]&in[0];
assign sw=in[5]& (~in[4])&in[3]&(~in[2])&in[1]&in[0];
assign beq=~in[5]& (~in[4])&(~in[3])&in[2]&(~in[1])&(~in[0]);
assign regdest=rformat;
assign alusrc=lw|sw|((~in[5])& in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]));
assign memtoreg=lw;
assign regwrite=rformat|lw|((~in[5])& in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]))|(func[5]& (~func[4])&(~func[3])&(~func[2])&(~func[1])|((~func[5])& (~func[4])&func[3]&(~func[2])&(~func[1]);
assign memread=lw|((~in[5])& in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]))|((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0])|(func[5]& (~func[4])&(~func[3])&(~func[2])&(~func[1])&(~func[0]));
assign memwrite=sw|(~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0];
assign branch=beq;
assign aluop1=rformatassign;
assign aluop2=beq;
assign mux3signal2=((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0]))|((~in[5])& in[4]&(in[3])&(~in[2])&(~in[1])&in[0]));
assign mux3signal1=((~func[5])& func[4]&(~func[3])&func[2]&(~func[1])&(~func[0]))|(func[5]& (~func[4])&(~func[3])&(~func[2])&(~func[1])&(~func[0]));
assign mux3signal0=(func[5]& (~func[4])&(~func[3])&(~func[2])&(~func[1])&(~func[0]))|((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0]))|((~in[5])& in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]));
assign signal31=(func[5]& (~func[4])&(~func[3])&(~func[2])&(~func[1]);
assign linkaddressignal=((~in[5])& in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]));
assign signal29=((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0]));
assign pc4signal=((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0]));
assign addresmemorysignal=((~in[5])& in[4]&(~in[3])&(~in[2])&in[1]&in[0]));
endmodule
