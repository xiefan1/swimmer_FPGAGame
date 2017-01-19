module collisionDetect(input clock, input [7:0] swimmerX0,bubbleX0,bubbleX1,bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6,
 input [6:0]swimmerY0,bubbleY0, bubbleY1,bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6,
 output[6:0]collisionBS);

collB b0(swimmerX0, bubbleX0, {1'b0,swimmerY0},{1'b0,bubbleY0},clock, collisionBS[0]);
collB b1(swimmerX0, bubbleX1, {1'b0,swimmerY0},{1'b0,bubbleY1},clock, collisionBS[1]);
collB b2(swimmerX0, bubbleX2, {1'b0,swimmerY0},{1'b0,bubbleY2},clock, collisionBS[2]);
collB b3(swimmerX0, bubbleX3, {1'b0,swimmerY0},{1'b0,bubbleY3},clock, collisionBS[3]);
collB b4(swimmerX0, bubbleX4, {1'b0,swimmerY0},{1'b0,bubbleY4},clock, collisionBS[4]);
collB b5(swimmerX0, bubbleX5, {1'b0,swimmerY0},{1'b0,bubbleY5},clock, collisionBS[5]);
collB b6(swimmerX0, bubbleX6, {1'b0,swimmerY0},{1'b0,bubbleY6},clock, collisionBS[6]);

endmodule 


//add 1 more bit to Y in case carry on to a signed number
module collB(input [7:0] swimmerX0,bubbleX0, input [7:0]swimmerY0,bubbleY0, input clock, output reg collisionBS );

wire [7:0]centerPX,centerPY;
wire [7:0]bottomB,rightB;
wire [7:0]dxL,dxR,dyU,dyB;
wire [2:0]data;
	 wire overwrite;
	 assign overwrite=1'b0;
	 wire [2:0]colourB;
wire [9:0]addressB;
wire [4:0]bYcount,bXcount;

assign centerPX=swimmerX0+3'd4;
assign centerPY=swimmerY0+4'd9;
assign bottomB=bubbleY0+5'd27;
assign rightB =bubbleX0+5'd27;

assign dxL=centerPX-bubbleX0;
assign dyU=centerPY-bubbleY0;
assign dxR=rightB-centerPX;
assign dyB=bottomB-centerPY;

assign bYcount=dyU[4:0];
assign bXcount=dxL[4:0];
assign addressB={1'b0,bYcount,4'b0}+{1'b0,bYcount,3'b0}+{1'b0,bYcount,2'b0}+bXcount;
bluebubble bram0(addressB,clock,data,overwrite,colourB);

always@(posedge clock)
begin 
//check the left and up boundary side of the bubble
if((dxL[7]==1'b1)||(dyU[7]==1'b1)) //if dx,dy are negative
collisionBS=1'b0;
else begin 
//check the bottom and right boundary side of the bubble 
if((dxR[7]==1'b1)||(dyB[7]==1'b1)) //if negative 
collisionBS=1'b0;
else begin 
//the swimmer is in the bubble_square_region 
//need to check the color is not pink, 101
if(colourB==3'b101) collisionBS=1'b0;
else collisionBS=1'b1;

end
end 
end 

endmodule 
