
//**********control_path of the swimmer**********
module swimmer_FSM(input [3:0] kb, input clock, resetn, delayT, frameS, doubleDT, //doubleDT is not used, try it in C-state if code doesn't work well 
                   output reg natural,plot, en_SX,en_SY, earse 
						 );
parameter A=4'b0000, B=4'b0001, C=4'b0010, D=4'b0011, E=4'b0100,F=4'b0101;	

//state table
reg [3:0]s_c,S_N;
always@(*)
begin: state_table 
case(s_c) 
A: begin 
if(resetn==1'b1) S_N=B;
else S_N=A;
end 
B: begin if(resetn==1'b0) S_N=A;
else if(frameS==1'b1) S_N=C;
else S_N=B;
end 
C: begin if(resetn==1'b0) S_N=A; 
else if(delayT==1'b1) S_N=D;
else S_N=C;
end 
D: S_N=E;
E: begin if(delayT==1'b1) S_N=F;
else S_N=E;
end 
 F: begin if(frameS==1'b1) S_N=C;
 else S_N=F;
 end 
 default: S_N=A;
endcase 
end //state_table

//state_registers 
always@(posedge clock)
begin: state_FFs
if(resetn==1'b0)
s_c<=A;
else s_c<=S_N;
end //state_FFs 

//output logic 
always@(*) 
begin:output_logic 
case(s_c)
A:begin 
plot=1'b0;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b0;
end 
B: begin 
plot=1'b1;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b0;
end 
C: begin 
plot=1'b1;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b1;
end 
D: begin 
plot=1'b0;
en_SX=1'b1;
en_SY=1'b1;
earse=1'b0;
if(kb==4'b1111) natural=1'b1;
else natural=1'b0;
end 
E:  begin 
plot=1'b0;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b0;
end 
F:  begin 
plot=1'b1;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b0;
end 
default:  begin 
plot=1'b0;
natural=1'b0;
en_SX=1'b0;
en_SY=1'b0;
earse=1'b0;
end 
endcase 
end //output_logic

endmodule 






//input U,D,R,L is KEY[3:0], active low; 
//input U,D,R,L, active low;
//output the start coords of the swimmer 
//collisionBS: collision between the swimmer and a bubble
//collisionBB: collision between bubbles
module swimmer_data_path(input [3:0] kb, input clock ,resetn,frameS, input [6:0] collisionBS,
input natural, en_SX, en_SY,  //control signals from swimmer_FSM
input [1:0]bubbleSpeed, 
output [7:0]swimmerX,
output [6:0]swimmerY,
output reg [7:0]bX, //background_x
output reg [8:0]bY, //background_y
output reg Ubound, animT,gameWin);







//*****************background_x_y_counter**************
always@(posedge clock) begin 
if(!resetn)  begin 
bX=8'b0;
bY=9'd280;
end 
else if(en_SY && Ubound && ({1'b0,bY}>10'd0)) begin 
if(collisionBS[6:2]) bY<=bY-bubbleSpeed;
else if(!kb[3]) bY<=bY-2'b10;

end //en_SY
end //always 

//********T_FF for the sea wave animation*******
always@(posedge frameS) 
begin 
if (!resetn)
animT<= 1'b0;
else animT<=animT^1'b1;
end


//********find the colour in the background at the minion's postion****************
wire [2:0]data;
wire overwrite;
assign overwrite=1'b0;
wire [2:0]colourG,colourGD,colourGL,colourGR,colourTop;
wire [16:0]addressG, addressGL,addressGR,addressGD,addressTop;
wire [7:0]xaddress;
wire [8:0]yaddress,yaddressD,yaddressTop;

reg [7:0]Qx; //adjusted
reg [6:0]Qy;

assign xaddress=Qx+8'd5;
assign yaddress=Qy+9'd16+bY;
assign yaddressD=yaddress+9'b1;
assign addressG={1'b0,yaddress,7'b0}+{1'b0,yaddress,5'b0}+xaddress;
assign addressGD={1'b0,yaddressD,7'b0}+{1'b0,yaddressD,5'b0}+xaddress;
assign addressGR=addressG+1'b1;
assign addressGL=addressG-1'b1;
B1 cct0(addressG,clock,data,overwrite,colourG); //find the color in the background at the feet postition of the minion 
B1 cct1(addressGD,clock,data,overwrite,colourGD); //find the color in the background below the minion's feet 
B1 cct2(addressGR,clock,data,overwrite,colourGR); //find the color in the background right to the minion's feet 
B1 cct3(addressGL,clock,data,overwrite,colourGL); //find the color in the background right to the minion's feet 

assign yaddressTop=bY+Qy;
assign addressTop={1'b0,yaddressTop,7'b0}+{1'b0,yaddressTop,5'b0}+Qx; //find rhe colour in the background at the left top postion of the minion 
B1 cct4(addressTop,clock,data,overwrite,colourTop);

always@(*)
if(bY<=9'd2) gameWin=1'b1;
else gameWin=1'b0;

//*************enable/decide the moving direction of the minion***********
reg right_n, left_n, up_n, down_n;
reg Dbound;
wire w_direction[3:0]; //[3:0]--U,D,R,L ;
always@(*) begin 
if((Qx<=8'd149) &&(colourGR!=3'b010)) right_n=kb[1];
else right_n=1'b1; 
if((Qx>8'b0)&&(colourGL!=3'b010)) left_n=kb[0];
else left_n=1'b1;
if((Qy+5'd17<7'd120)&&(colourGD!=3'b010)) begin 
Dbound=1'b0;
down_n=kb[2];
end 
else begin 
Dbound=1'b1;
down_n=1'b1;
end 




//********moving_up********
if({1'b0,Qy}>=8'd40) begin 
up_n=kb[3];
Ubound=1'b0;
end 
else begin 
up_n=1'b1;
Ubound=1'b1;
end 
end 





mux2to1 mux0(1'b0,1'b1,left_n, w_direction[0]); 
mux2to1 mux1(1'b0,1'b1,right_n, w_direction[1]);
mux2to1 mux2(1'b0,1'b1,down_n, w_direction[2]); 
mux2to1 mux3(1'b0,1'b1,up_n, w_direction[3]);

//reg [7:0]Qx;
//reg [6:0]Qy;
 
//*******y_counter********
//bubble0 and bubble1 are falling_down_bubble
always@(posedge clock) 
begin 
if(resetn==1'b0) Qy<=7'd80;
else if(en_SY) begin 
if(collisionBS[1:0]&&!Dbound)  Qy<=Qy+bubbleSpeed;
else begin 
if(collisionBS[6:2]&&!Ubound) Qy<=Qy-bubbleSpeed;
else if(collisionBS[6:2]&&Ubound) Qy<=Qy;
else if(natural&&!Dbound)  Qy<=Qy+1'b1;
else Qy<=Qy+{w_direction[2],1'b0}-{w_direction[3],1'b0};
end 
end //en_SY
end  //always 

//********x_counter********
always@(posedge clock) 
begin 
if(resetn==1'b0) Qx<=8'd80;
else if (en_SX) 
Qx<=Qx+{w_direction[1],1'b0}-{w_direction[0],1'b0};
end 
assign swimmerX=Qx;
assign swimmerY=Qy;

endmodule //swimmer_datapath 




//**********2to1 mux**********
//if s==1, output c=a;
//if s==0, output c=b;
module mux2to1(input a,b,s, output c);
assign c=s?a:b;
endmodule 

//*********delay_counter********
//the delatT is 1/60 s
module delay_counter(input clock,resetn,output delayT);
parameter maxCount=20'd833_333;

reg [19:0]count;
always@(posedge clock)
begin 
if(resetn==1'b0)
count<=20'b0;

else if(count==maxCount)
count<=20'b0;

else count<=count+1'b1;
end 
 
assign delayT=(count==maxCount)?1:0;

endmodule 

//**********frameS_counter for the swimmer*********
//this counter determines the swimmer's speed 
//the clock is the delayT 
module frameS_counter(input clock,resetn,output frameS);
parameter maxCount=4'd15;
reg [3:0]count;
always@(posedge clock)
begin if(resetn==1'b0)
count<=4'b0;
else if(count==maxCount)
count<=4'b0;
else count<=count+1'b1;
end 

assign frameS=(count==maxCount)?1:0;
endmodule 

//**********double delayT_counter*******
module doubleDT_counter(input delayT,resetn,output doubleDT);
parameter maxCount=4'd2;

wire clock;
assign clock= delayT;

reg [3:0]count;
always@(posedge clock)
begin 
if(resetn==1'b0)
count<=4'b0;

else if(count==maxCount)
count<=4'b0;

else count<=count+1'b1;
end 
 
assign doubleDT=(count==maxCount)?1:0;

endmodule 



