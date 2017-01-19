module dataPrint(clock, delayT, resetn, gameLoss,gameWin, playerX, playerY, bX,bY, animT,
  b1X, b2X,b3X, b4X,b5X, b6X,b7X,
  b1Y,b2Y,b3Y, b4Y, b5Y, b6Y,b7Y, 
  plot, xToVGA, yToVGA, cToVGA);
input clock, delayT, resetn, gameLoss,gameWin;
input [7:0] playerX, b1X, b2X,b3X, b4X,b5X, b6X,b7X;
input [6:0] playerY, b1Y, b2Y,b3Y, b4Y, b5Y, b6Y,b7Y;
input [7:0]bX;
input [8:0]bY;
input animT;
output reg plot;
output [7:0] xToVGA;
output [6:0] yToVGA;
output reg [2:0] cToVGA;

reg [3:0] select, presentState, nextState; //selects which entity we retrieve data from
reg [4:0] bXcount, bYcount; // bubble
reg [3:0] pXcount;//player
reg [4:0] pYcount; 
reg [7:0] clearXcount, lossXcount,winXcount;
reg [6:0] clearYcount, lossYcount,winYcount; //256x256 clear
reg enL;

//BRAM_parameters
    wire [8:0]addressP;
	 wire [10:0]addressB;
	 wire [16:0]addressG;
	 wire [14:0]addressLoss, addressWin;
	// wire [14:0]addressG;
	 wire [2:0]data;
	 wire overwrite;
	 assign overwrite=1'b0;
	 wire [2:0]colourP,colourP2,colourB,colourG1,colourG2, colourLoss, colourWin1,colourWin2;

assign addressP={1'b0,pYcount,3'b0}+{1'b0,pYcount,1'b0}+pXcount;
m3 cct1(addressP,clock,data,overwrite,colourP);
m2 cct0(addressP,clock,data,overwrite,colourP2);

assign addressB={1'b0,bYcount,4'b0}+{1'b0,bYcount,3'b0}+{1'b0,bYcount,2'b0}+bXcount;
bluebubble cct2(addressB,clock,data,overwrite,colourB);




/*
assign addressG={1'b0,clearYcount,7'b0}+{1'b0,clearYcount,5'b0}+clearXcount;
initialB2 cct3(addressG,clock,data,overwrite,colourG1);
*/
wire [7:0]bramX;
wire [8:0]bramY;
assign bramY=clearYcount+bY;
assign bramX=clearXcount+bX; 
assign addressG={1'b0,bramY,7'b0}+{1'b0,bramY,5'b0}+bramX;
B1 cct3(addressG,clock,data,overwrite,colourG1);
B2 cct4(addressG,clock,data,overwrite,colourG2);


assign addressLoss={1'b0,lossYcount,7'b0}+{1'b0,lossYcount,5'b0}+lossXcount;
gameOverScreen cct5(addressLoss,clock,data,overwrite,colourLoss);


assign addressWin={1'b0,winYcount,7'b0}+{1'b0,winYcount,5'b0}+winXcount;
winB cct6(addressWin,clock,data,overwrite,colourWin1);
winB2 cct7(addressWin,clock,data,overwrite,colourWin2);


parameter [3:0] RESET_S = 4'b0000, LOAD_S = 4'b0001, DRAWB1_S = 4'b0010, DRAWB2_S = 4'b0011, 
					DRAWP_S = 4'b0100, SWITCH_S = 4'b0101, CLEAR_S = 4'b0110, EXIT_S = 4'b0111,
					DRAWB3_S = 4'b1000, DRAWB4_S  = 4'b1001, DRAWB5_S = 4'b1010, DRAWB6_S = 4'b1011, 
					DRAWB7_S = 4'b1100, LOSS_S = 4'b1101,WIN_S=4'b1110;
					//7 bubbles

initial begin
	select <= 4'd0;
	bXcount <= 5'd0; 
	bYcount <= 5'd0;
	pXcount <= 4'd0; 
	pYcount <= 5'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
	lossXcount <= 8'd0; 
	lossYcount <= 7'd0;
	winXcount <= 8'd0; 
	winYcount <= 7'd0;
end

//next state logic
always @(*) begin
case (presentState)
	RESET_S: begin
		if (resetn) nextState = LOAD_S;
		else nextState = RESET_S;
		end
	LOAD_S: begin
		nextState = DRAWB1_S;
		end
	DRAWB1_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim
		else nextState = DRAWB1_S;
		end
	DRAWB2_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB2_S;
		end
		DRAWB3_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB3_S;
		end
			DRAWB4_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim
		else nextState = DRAWB4_S;
		end
	DRAWB5_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB5_S;
		end
		DRAWB6_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB6_S;
		end
		DRAWB7_S: begin
		if (bYcount >= 5'd28) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB7_S;
		end
	DRAWP_S: begin
		if (pYcount >= 5'd20) nextState = SWITCH_S; //4x4 player
		else nextState = DRAWP_S;
		end
	SWITCH_S: begin
		if (select >= 4'd8) //number of entities
			nextState = EXIT_S;
		else begin
			if (select == 4'd7) nextState = DRAWP_S;
			else if (select == 4'd1) nextState = DRAWB2_S;
			else if (select == 4'd2) nextState = DRAWB3_S;
			else if (select == 4'd3) nextState = DRAWB4_S;
			else if (select == 4'd4) nextState = DRAWB5_S;
			else if (select == 4'd5) nextState = DRAWB6_S;
			else if (select == 4'd6) nextState = DRAWB7_S;
			else nextState = DRAWB1_S;
			end
		end
	EXIT_S: begin //finished drawing entities, now going to wait until delayT to clear
		if (delayT) nextState = CLEAR_S;
		else nextState = EXIT_S;
		end
	CLEAR_S: begin
		if (clearYcount >= 7'd119 && clearXcount >= 8'd159) begin
			if (gameLoss) nextState = LOSS_S;
			else if(gameWin) nextState=WIN_S;
			else nextState = LOAD_S; //119 and 159 for realsies, 11 and 15 for sim (12x16) box
			end
		else nextState = CLEAR_S;
		end
	LOSS_S: begin
		if(!resetn) nextState = RESET_S;
		else nextState = LOSS_S;
		end
	WIN_S: begin 
		if(!resetn) nextState=RESET_S;
		else nextState=WIN_S;
		end 
	/*
	STAY_C:begin 
		if(delayT==1'b1) nextState=LOAD_S;
		else nextState=STAY_C;
		end 
		*/
endcase
end

//present state logic
always @(posedge clock) begin

if (resetn) presentState <= nextState;
else presentState <= RESET_S;

if (presentState == RESET_S) begin
	select <= 4'd0;
	bXcount <= 5'd0; 
	bYcount <= 5'd0;
	pXcount <= 4'd0; 
	pYcount <= 5'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
	lossXcount <= 8'd0; 
	lossYcount <= 7'd0;
	//enL<=1'b0;
	end
if (presentState == LOAD_S)begin 
	select <= 4'd0;
	//enL<=1'b1;
end 

/*
if (presentState == STAY_S)begin 
	enL<=1'b0;
end 
*/

if (presentState == DRAWB1_S || presentState == DRAWB2_S||presentState == DRAWB3_S || presentState == DRAWB4_S||
presentState == DRAWB5_S || presentState == DRAWB6_S||presentState == DRAWB7_S ) begin
	if(bXcount >= 5'd28) begin //9 for realsies, 2 for sim
		bXcount <= 5'd0;
		bYcount <= bYcount + 5'd1;
		end
	else bXcount <= bXcount + 5'b1;
	end

if (presentState == DRAWP_S) begin
	if (pXcount >= 4'd10) begin
		pXcount <= 4'd0;
		pYcount <= pYcount + 5'd1;
		end
	else pXcount <= pXcount + 4'd1;
	end

if (presentState == SWITCH_S) begin
	select <= select + 1'd1;
	bXcount <= 5'd0; 
	bYcount <= 5'd0;
	pXcount <= 4'd0; 
	pYcount <= 5'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
	end

if (presentState == CLEAR_S) begin
	if(clearXcount >= 8'd159) begin //159 for realsies, 15 for sim
		clearXcount <= 8'd0;
		clearYcount <= clearYcount + 7'd1;
		end
	else clearXcount <= clearXcount + 8'd1;
	end
	
if (presentState == LOSS_S) begin
	if(lossYcount >= 7'd119 && lossXcount >= 8'd159) begin
		lossXcount <= 1'd0; lossYcount <= 1'd0;
		end
		
	else begin
		if(lossXcount >= 8'd159) begin //159 for realsies, 15 for sim
			lossXcount <= 8'd0;
			lossYcount <= lossYcount + 7'd1;
			end
		else lossXcount <= lossXcount + 8'd1;
		end
	end
	
		if (presentState == WIN_S) begin
		if(winYcount>=7'd119 && winXcount>=8'd159) begin 
		winXcount<=8'd0;
		winYcount<=7'd0;
		end 
	else begin 	
if(winXcount>=8'd159) begin 
winXcount<=8'b0;
winYcount<=winYcount+7'd1;
end 
else winXcount<=winXcount+8'd1;
end 
end 


end


reg [7:0]wx;
reg [6:0]wy;

ff_8 x_FF(clock,resetn,wx, xToVGA);
ff_7 y_FF(clock,resetn,wy, yToVGA);


//output logic
always @(*) begin
case (presentState)

LOAD_S: begin
	wx = playerX;
	wy = playerY;
	cToVGA = 3'd0;
	plot = 1'b0;
	end 
DRAWB1_S: begin
	wx = b1X + bXcount;
	wy = b1Y + bYcount;
	cToVGA = colourB;
	if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
DRAWB2_S: begin
	wx = b2X + bXcount;
	wy = b2Y + bYcount;
	cToVGA = colourB;
if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
	DRAWB3_S: begin
	wx= b3X + bXcount;
	wy = b3Y + bYcount;
	cToVGA = colourB;
	if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
DRAWB4_S: begin
	wx = b4X + bXcount;
	wy = b4Y + bYcount;
	cToVGA = colourB;
	if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
DRAWB5_S: begin
	wx = b5X + bXcount;
	wy = b5Y + bYcount;
	cToVGA = colourB;
	if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
DRAWB6_S: begin
	wx = b6X + bXcount;
	wy = b6Y + bYcount;
	cToVGA = colourB;
if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
	DRAWB7_S: begin
	wx = b7X + bXcount;
	wy = b7Y + bYcount;
	cToVGA = colourB;
if(colourB==3'b101||colourB==3'b001) plot = 1'b0;
	else plot=1'b1;
	end
DRAWP_S: begin
	wx = playerX + pXcount;
	wy = playerY + pYcount;
	if(animT) cToVGA = colourP;
	else cToVGA = colourP2;
if(cToVGA==3'b101) plot = 1'b0;
	else plot=1'b1;
	end
CLEAR_S: begin
	wx = clearXcount;
	wy = clearYcount;
	if(animT) cToVGA = colourG1;
	else cToVGA=colourG2;
	plot = 1'b1;
	end
LOSS_S: begin
	wx = lossXcount;
	wy = lossYcount;
	cToVGA = colourLoss;
	plot = 1'b1;
	end
	WIN_S: begin
	wx = winXcount;
	wy = winYcount;
	if(animT) cToVGA = colourWin1;
	else cToVGA=colourWin2;
	plot = 1'b1;
	end
default: begin //RESET_S, SWITCH_S, EXIT_S
	wx = 8'd0;
	wy = 7'd0;
	cToVGA = 3'd0;
	plot = 1'b0;
	end
endcase
end

endmodule











/*
wire [7:0] wpx, wb1X, wb2X,wb3X, wb4X,wb5X, wb6X,wb7X;
wire [6:0] wpy, wb1Y, wb2Y,wb3Y, wb4Y, wb5Y, wb6Y,wb7Y;

ff_delay d1(clock, resetn, (b1X + bXcount),(b1Y + bYcount), wb1X, wb1Y);
ff_delay d2(clock, resetn, (b2X + bXcount),(b1Y + bYcount), wb1X, wb1Y);
*/




//**********8_bit_FF***********
module ff_8(input clock,resetn,input [7:0]D, output reg [7:0] Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 8'b0;
else Q<=D;
end
endmodule 

//**********7_bit_FF***********
module ff_7(input clock,resetn,input [6:0]D, output reg [6:0] Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 7'b0;
else Q<=D;
end
endmodule 


//******15_bit_load_flip_flop***********
module load_ff15(input clock,resetn,enL,input [14:0]D, output reg [14:0] Q);
always @(posedge clock)
begin
if (!resetn)
Q<= 15'b0;
else if(enL) Q<=D;
end
endmodule 

module ff_delay(input clock, resetn, input [7:0]x,input[6:0]y, output reg [7:0]Qx, output reg [6:0]Qy);
always@(posedge clock)
begin 
if(!resetn) begin Qx=8'b0; Qy=7'b0; end 
else begin 
 Qx<=x;
Qy<=y;
end 
end 
endmodule 