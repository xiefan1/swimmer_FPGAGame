module bubble(input CLOCK_50, resetn, delayT, frameS,Ubound, input [6:0]collisionBS, input [9:0]SW,
              output [1:0]bubbleSpeed,
				  output [7:0]bubbleX0,bubbleX1,bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6,
				  output [6:0]bubbleY0,bubbleY1,bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6 ); 
wire existT;
wire loadSeed,load, en_B, earseBubble,plotBubble,resetExistn;				  //control signals-----fsm_b
wire [7:0] wx0,wx1,wx2,wx3,wx4,wx5,wx6;
wire [6:0] wy0, wy1,wy2,wy3,wy4,wy5,wy6;
 
bubble_FSM   fsm_b(CLOCK_50, resetn,existT,delayT,frameS,
   loadSeed,load, en_B, earseBubble,plotBubble,resetExistn //control signals-----fsm_b
	);
	
	
existT_counter cct0(CLOCK_50,resetExistn,en_B, existT);

//***********load XY_coords_FF here******************
//plotBubble is used as load_signal here
control_ffx ffx0(CLOCK_50,resetn,plotBubble, wx0, bubbleX0);
control_ffy ffy0(CLOCK_50,resetn,plotBubble, wy0, bubbleY0);
control_ffx ffx1(CLOCK_50,resetn,plotBubble, wx1, bubbleX1);
control_ffy ffy1(CLOCK_50,resetn,plotBubble, wy1, bubbleY1);
control_ffx ffx2(CLOCK_50,resetn,plotBubble, wx2, bubbleX2);
control_ffy ffy2(CLOCK_50,resetn,plotBubble, wy2, bubbleY2);
control_ffx ffx3(CLOCK_50,resetn,plotBubble, wx3, bubbleX3);
control_ffy ffy3(CLOCK_50,resetn,plotBubble, wy3, bubbleY3);
control_ffx ffx4(CLOCK_50,resetn,plotBubble, wx4, bubbleX4);
control_ffy ffy4(CLOCK_50,resetn,plotBubble, wy4, bubbleY4);
control_ffx ffx5(CLOCK_50,resetn,plotBubble, wx5, bubbleX5);
control_ffy ffy5(CLOCK_50,resetn,plotBubble, wy5, bubbleY5);
control_ffx ffx6(CLOCK_50,resetn,plotBubble, wx6, bubbleX6);
control_ffy ffy6(CLOCK_50,resetn,plotBubble, wy6, bubbleY6);

//**************data_path portion****************

assign bubbleSpeed=2'b11; //assign the collisionBS_speed here

	
wire [14:0]random, ran0,ran1,ran2,ran3,ran4,ran5,ran6,ran7;
parameter dirUP=1'b1, dirDOWN=1'b0;

ranReg reg0(SW, CLOCK_50,resetn,
                    loadSeed,//control signals from the bubble_FSM
                     random);

assign ran0=random;
assign ran1={random[8:0],random[14:9]};
assign ran2={1'b0,random[7:4],random[14:8],random[2:0]};
assign ran3={1'b1,random[14:11],random[6:2],random[11:7]};
assign ran4={2'b11,random[4:0],random[13:6]};
assign ran5={2'b11,random[12:10],random[14:13],random[8:1]};
assign ran6={1'b0,random[8],1'b1,random[13:11],random[7:0],random[9]};
	
bubble_data    falling_b0(CLOCK_50, resetn, ran0, dirDOWN, 
  collisionBS[0], Ubound, 
  load, en_B, //control signals----bubble_FSM 
wx0,wy0);

bubble_data    falling_b1(CLOCK_50, resetn, ran1, dirDOWN, 
  collisionBS[1],  Ubound, 
  load, en_B, //control signals----bubble_FSM 
wx1,wy1);

bubble_data    rising_b2(CLOCK_50, resetn, ran2, dirUP, 
  collisionBS[2],  Ubound, 
  load, en_B, //control signals----bubble_FSM
wx2,wy2);

bubble_data    rising_b3(CLOCK_50, resetn, ran3, dirUP, 
  collisionBS[3],  Ubound, 
  load, en_B, //control signals----bubble_FSM
wx3,wy3);

bubble_data    rising_b4(CLOCK_50, resetn, ran4, dirUP, 
  collisionBS[4],  Ubound, 
  load, en_B, //control signals----bubble_FSM
wx4,wy4);

bubble_data    rising_b5(CLOCK_50, resetn, ran5, dirUP, 
  collisionBS[5],  Ubound, 
  load, en_B, //control signals----bubble_FSM
wx5,wy5);

bubble_data    rising_b6(CLOCK_50, resetn, ran6, dirUP, 
  collisionBS[6],  Ubound, 
  load, en_B, //control signals----bubble_FSM
wx6,wy6);


endmodule 



module bubble_FSM(input clock, resetn,existT,delayT, frameS, output reg loadSeed,load, en_B, earse,plot,resetExistn  );

parameter A=4'b0000, B=4'b0001, C=4'b0010, D=4'b0011, E=4'b0100,F=4'b0101, G=4'b0110;	

//state table
reg [3:0]s_c,S_N;
always@(*)
begin: state_table 
case(s_c) 
A: begin 
if(resetn==1'b1) S_N=B;
else S_N=A;
end 
B: S_N=C;
C: S_N=D; 
D: begin 
if(frameS==1'b1) S_N=E;
else S_N=D;
end 
E: begin if(delayT==1'b1) S_N=F;
else S_N=E;
end 
F: S_N=G;
G: begin if(existT==1'b1) S_N=C;
else if(delayT==1'b1) S_N=D;
else S_N=G;
end 
default: S_N=A;
endcase 
end //state_table

//set existT_Flag 
/* always@(posedge clock)
begin if(resetn==1'b0)
existTFlag<=1'b0;
else if((s_c==G)&&(S_N==C))
existTFlag<=~existTFlag;
end 
*/ 


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
loadSeed=1'b0;
load=1'b0;
plot=1'b0;
en_B=1'b0;
earse=1'b0;
resetExistn=1'bx;
end 
B: begin 
loadSeed=1'b1;
load=1'b0;
plot=1'b0;
en_B=1'b0;
earse=1'b0;
resetExistn=1'bx;
end 
C: begin 
loadSeed=1'b0;
load=1'b1;
plot=1'b0;
en_B=1'b0;
earse=1'b0;
resetExistn=1'b0;
end 
D:begin 
loadSeed=1'b0;
load=1'b0;
plot=1'b1;
en_B=1'b0;
earse=1'b0;
resetExistn=1'b1;
end 
E:begin 
loadSeed=1'b0;
load=1'b0;
plot=1'b1;
en_B=1'b0;
earse=1'b1;
resetExistn=1'b1;
end 
F:begin 
loadSeed=1'b0;
load=1'b0;
plot=1'b0;
en_B=1'b1;
earse=1'b0;
resetExistn=1'b1;
end 
G: begin 
loadSeed=1'b0;
load=1'b0;
plot=1'b0;
en_B=1'b0;
earse=1'b0;
resetExistn=1'b1;
end 
default:begin 
loadSeed=1'b0;
load=1'b0;
plot=1'b0;
en_B=1'b0;
earse=1'b0;
resetExistn=1'b0;
end 
endcase 
end //output_logic

endmodule 

//******control_load_FF***********
module control_ffx(input clock,resetn,load,input[7:0] D, output reg [7:0]Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 8'b0;
else if(load) Q<=D;
end
endmodule 

//******control_load_FF***********
module control_ffy(input clock,resetn,load,input[6:0] D, output reg [6:0]Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 7'b0;
else if(load) Q<=D;
end
endmodule 


module bubble_data(input clock ,resetn,
input [14:0]random, input dirUP,
input collisionBS, Ubound,
input load, en_B, //control signals from the bubble_FSM
output [7:0]bubbleX,
output [6:0]bubbleY);

wire [7:0]xin;
reg [7:0]xout;
wire [6:0]yin;
reg [6:0]yout;



assign xin=random[14:7];
assign yin=random[6:0];


//*******x_counter********
always @(posedge clock)
begin
if (!resetn) xout<= 8'b0;
else if(load) xout<=xin;
end
//*******y_counter********
always@(posedge clock) 
begin 
if(resetn==1'b0) yout<=7'b0;
else if(load) yout<=yin;
else if(en_B) begin 

if(!dirUP) begin //*******falling_down
if(collisionBS) yout<=yout+2'b11;
else yout<=yout+1'b1; 
end 
else begin  //********rising_up
if(collisionBS && !Ubound) yout<=yout-2'b11;
else if(collisionBS&&Ubound) yout<=yout;
else if (!collisionBS && Ubound) yout<=yout+1'b1;
else if(!collisionBS&&!Ubound) yout<=yout-1'b1; 
end 

end  //en_B
end //always

assign bubbleY=yout;
assign bubbleX=xout;


endmodule 

/*
module counter_3s(input delayT, resetn, output t3s );
parameter maxCount=8'd179;
reg [7:0]count;
always@(posedge delayT)
begin 
if(resetn==1'b0)
count<=8'b0;

else if(count==maxCount)
count<=8'b0;

else count<=count+1'b1;
end 

assign t3s=(count==maxCount)?1:0;
endmodule 
*/


//**********existT_counter*******
//the bubble exists after moving 24 pixs 
module existT_counter(input clock,resetn,en_E, output reg existT);
parameter maxCount=5'd20;

reg [4:0]count;
always@(posedge clock)
begin 
if(resetn==1'b0)
count<=5'b0;

else if(en_E) begin 
if(count==maxCount)
count<=5'b0;

else count<=count+5'b1;
end 
end 

always@(*)
if(resetn==1'b0) existT=1'b0;
else existT=(count==maxCount)?1:0;


endmodule 


//******load_flip_flop***********
module load_ff(input clock,resetn,load,data,preQ, output reg Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 1'b0;
else if(load) Q<=data;
else Q<=preQ;
end
endmodule 

//******flip_flop***********
module D_ff(input clock,resetn, preQ, output reg Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 1'b0;
else Q<=preQ;
end
endmodule 


//**********15-bit_random_shift_reg******************
//load pattern 0,1,2,3,4....8,9
module ranReg(input [9:0]SW, input clock,resetn,load, output [14:0]random);  //SW---seed
wire [15:0]wq;

load_ff ff0(clock,resetn,load, SW[0],wq[15],wq[0]);
load_ff ff1(clock,resetn,load, SW[1],wq[0],wq[1]);
load_ff ff2(clock,resetn,load, SW[2],wq[1],wq[2]);
load_ff ff3(clock,resetn,load, SW[3],wq[2],wq[3]);
load_ff ff4(clock,resetn,load, SW[4],wq[3],wq[4]);
load_ff ff5(clock,resetn,load, SW[5],wq[4],wq[5]);
load_ff ff6(clock,resetn,load, SW[6],wq[5],wq[6]);
load_ff ff7(clock,resetn,load, SW[7],wq[6],wq[7]);
load_ff ff8(clock,resetn,load, SW[8],wq[7],wq[8]);
load_ff ff9(clock,resetn,load, SW[9],wq[8],wq[9]);
D_ff ff10(clock,resetn, wq[9],wq[10]);
D_ff ff11(clock,resetn, wq[10],wq[11]);
D_ff ff12(clock,resetn, wq[11],wq[12]);
D_ff ff13(clock,resetn, wq[12],wq[13]);
D_ff ff14(clock,resetn, wq[13],wq[14]);
assign wq[15]=wq[14]^wq[13];

assign random=wq[14:0];
endmodule 
