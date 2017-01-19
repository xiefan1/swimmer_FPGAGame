module dataPrint(clock, fps, resetn, playerX, playerY, b1X, b1Y, b2X, b2Y, plot, xToVGA, yToVGA, cToVGA);
input clock, fps, resetn;
input [7:0] playerX, b1X, b2X;
input [6:0] playerY, b1Y, b2Y;

output reg plot;
output reg [7:0] xToVGA;
output reg [6:0] yToVGA;
output reg [2:0] cToVGA;

reg [3:0] select, presentState, nextState; //selects which entity we retrieve data from
reg [14:0] count; //15 bits -> 32k
reg [3:0] bXcount, bYcount; //10x10 bubble
reg [2:0] pXcount, pYcount; //4x4 player
reg [7:0] clearXcount;
reg [6:0] clearYcount; //256x256 clear

parameter [3:0] RESET_S = 4'b0000, LOAD_S = 4'b0001, DRAWB1_S = 4'b0010, DRAWB2_S = 4'b0011, 
					DRAWP_S = 4'b0100, SWITCH_S = 4'b0101, CLEAR_S = 4'b0110, EXIT_S = 4'b0111; 
					//two bubbles

initial begin
	select <= 4'd0;
	count <= 15'd0;
	bXcount <= 4'd0; 
	bYcount <= 4'd0;
	pXcount <= 3'd0; 
	pYcount <= 3'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
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
		if (bXcount >= 4'd9 && bYcount >= 4'd9) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim
		else nextState = DRAWB1_S;
		end
	DRAWB2_S: begin
		if (bXcount >= 4'd9 && bYcount >= 4'd9) nextState = SWITCH_S; //9 and 9 for realsies, 2 and 2 for sim (3x3)
		else nextState = DRAWB2_S;
		end
	DRAWP_S: begin
		if (pXcount >= 3'd3 && pYcount >= 3'd3) nextState = SWITCH_S; //4x4 player
		else nextState = DRAWP_S;
		end
	SWITCH_S: begin
		if (select >= 4'd3) //number of entities
			nextState = EXIT_S;
		else begin
			if (select == 4'd2) nextState = DRAWP_S;
			else if (select == 4'd1) nextState = DRAWB2_S;
			else nextState = DRAWB1_S;
			end
		end
	EXIT_S: begin //finished drawing entities, now going to wait until fps to clear
		if (fps) nextState = CLEAR_S;
		else nextState = EXIT_S;
		end
	CLEAR_S: begin
		if (clearYcount >= 7'd119 && clearXcount >= 8'd159) nextState = LOAD_S; //119 and 159 for realsies, 11 and 15 for sim (12x16) box
		else nextState = CLEAR_S;
		end
endcase
end

//present state logic
always @(posedge clock) begin

if (resetn) presentState <= nextState;
else presentState <= RESET_S;

if (presentState == RESET_S) begin
	select <= 4'd0;
	count <= 15'd0;
	bXcount <= 4'd0; 
	bYcount <= 4'd0;
	pXcount <= 3'd0; 
	pYcount <= 3'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
	end

if (presentState == DRAWB1_S || presentState == DRAWB2_S) begin
	count <= count + 15'd1;
	if(bXcount >= 4'd9) begin //9 for realsies, 2 for sim
		bXcount <= 4'd0;
		bYcount <= bYcount + 4'd1;
		end
	else bXcount <= bXcount + 4'd1;
	end

if (presentState == DRAWP_S) begin
	count <= count + 15'd1;
	if (pXcount >= 3'd3) begin
		pXcount <= 3'd0;
		pYcount <= pYcount + 3'd1;
		end
	else pXcount <= pXcount + 3'd1;
	end

if (presentState == SWITCH_S) begin
	select <= select + 1'd1;
	count <= 15'd0;
	bXcount <= 4'd0; 
	bYcount <= 4'd0;
	pXcount <= 3'd0; 
	pYcount <= 3'd0;
   clearXcount <= 8'd0; 
	clearYcount <= 7'd0;
	end

if (presentState == CLEAR_S) begin
	count <= count + 15'd1;
	if(clearXcount >= 8'd159) begin //159 for realsies, 15 for sim
		clearXcount <= 8'd0;
		clearYcount <= clearYcount + 7'd1;
		end
	else clearXcount <= clearXcount + 8'd1;
	end
	
if (presentState == LOAD_S)
	select <= 4'd0;

end

//output logic
always @(*) begin
case (presentState)

LOAD_S: begin
	xToVGA = playerX;
	yToVGA = playerY;
	cToVGA = 3'd0;
	plot = 1'b0;
	end 
DRAWB1_S: begin
	xToVGA = b1X + bXcount;
	yToVGA = b1Y + bYcount;
	cToVGA = 3'b001;
	plot = 1'b1;
	end
DRAWB2_S: begin
	xToVGA = b2X + bXcount;
	yToVGA = b2Y + bYcount;
	cToVGA = 3'b001;
	plot = 1'b1;
	end
DRAWP_S: begin
	xToVGA = playerX + pXcount;
	yToVGA = playerY + pYcount;
	cToVGA = 3'b010;
	plot = 1'b1;
	end
CLEAR_S: begin
	xToVGA = clearXcount;
	yToVGA = clearYcount;
	cToVGA = 3'd0;
	plot = 1'b1;
	end
default: begin //RESET_S, SWITCH_S, EXIT_S
	xToVGA = 8'd0;
	yToVGA = 7'd0;
	cToVGA = 3'd0;
	plot = 1'b0;
	end
endcase
end

endmodule
