module bubble_swimmer(input[0:0]KEY, input CLOCK_50, input [9:0]SW,
output [6:0]HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, output [9:0] LEDR, //LEDR to show loss and win
		// The ports below are for the VGA output.  Do not change.
		output VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,						//	VGA BLANK
		VGA_SYNC_N,						//	VGA SYNC
		output	[9:0]VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B,   						//	VGA Blue[9:0]
	// The ports below are for the Audio Controller
		input	AUD_ADCDAT,
		//bidirectionals
		inout	AUD_BCLK, AUD_ADCLRCK, AUD_DACLRCK, I2C_SDAT, PS2_CLK, PS2_DAT,
		//outputs
		output AUD_XCK, AUD_DACDAT, I2C_SCLK
	);

wire resetn;

assign resetn=KEY[0];	
wire gameWin; //active high 
wire delayT,frameS,doubleDT;


/*****************************************************************************
 *               			Keyboard input controller	  					           *
 *****************************************************************************/
wire [3:0] kb; //keyboard ~up, ~down, ~right, ~left

keyListener keyListen(CLOCK_50, resetn, PS2_CLK, PS2_DAT, kb);

/*****************************************************************************
 *                Behavioural control for game entities	  			           *
 *****************************************************************************/

wire natural,plotSwimmer, en_SX,en_SY, earseSwimmer ;//control signals--fsm_s
wire [6:0] collisionBS;
wire Ubound,animT;
wire [1:0]bubbleSpeed;

wire  [7:0]swimmerX0, bubbleX0,bubbleX1,bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6;
wire [6:0]swimmerY0,bubbleY0,bubbleY1,bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6;
wire [7:0]bX;
wire [8:0]bY;


swimmer_FSM   fsm_s(kb, CLOCK_50, resetn, delayT, frameS, doubleDT, 
                       natural,plotSwimmer, en_SX,en_SY,earseSwimmer //control signals 
							  ); 
 
 
swimmer_data_path   XY_s(kb, CLOCK_50 ,resetn,frameS,collisionBS,
                            natural, en_SX,en_SY,//control signals----fsm_s
									 bubbleSpeed, //from XY_b 
                            swimmerX0,swimmerY0, bX, bY,Ubound,animT,gameWin); //data_output 

									 
bubble  XY_b(CLOCK_50, resetn, delayT, frameS,Ubound, collisionBS, SW, 
              bubbleSpeed,
				  bubbleX0,bubbleX1,bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6,
				  bubbleY0,bubbleY1,bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6 );									 
									 
collisionDetect  detect0_BS(CLOCK_50, swimmerX0,bubbleX0,bubbleX1, bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6,
swimmerY0,bubbleY0, bubbleY1, bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6,
collisionBS);								 

/*****************************************************************************
 *                 Delay counters and rate splitters			                 *
 *****************************************************************************/
 
delay_counter cct0(CLOCK_50,resetn,  delayT);
frameS_counter cct1(delayT,resetn, frameS);
doubleDT_counter cct2(delayT,resetn, doubleDT);

/*****************************************************************************
 *              Oxygen counter and game state processing		                 *
 *****************************************************************************/
wire [3:0] oxygenLowDigit, oxygenHighDigit;
wire gameLoss; //active high
oxygen oxyTimeLeft(delayT, resetn, collisionBS, oxygenLowDigit, oxygenHighDigit, gameLoss);

/*****************************************************************************
 *                 			VGA-related objects			       		           *
 *****************************************************************************/
	//control signals between dataPrint and VGA adapter
	wire writeEn;
	wire [7:0] xToVGA;
	wire [6:0] yToVGA;
	wire [2:0] cToVGA;

	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(resetn),
			.clock(CLOCK_50),
			.colour(cToVGA),
			.x(xToVGA),
			.y(yToVGA),
			.plot(writeEn),
			// Signals for the DAC to drive the monitor. 
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK_N),
			.VGA_SYNC(VGA_SYNC_N),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "initialB2.mif";
		

/*****************************************************************************
 *                 		Image rendering module		       			           *
 *****************************************************************************/		
dataPrint  cct4(CLOCK_50, delayT, resetn, gameLoss,gameWin, swimmerX0, swimmerY0, 
                bX,bY,animT,
                bubbleX0,bubbleX1,bubbleX2,bubbleX3,bubbleX4,bubbleX5,bubbleX6, 
					 bubbleY0,bubbleY1,bubbleY2,bubbleY3,bubbleY4,bubbleY5,bubbleY6,
					 writeEn, xToVGA, yToVGA, cToVGA);

/*****************************************************************************
 *                 LED and HEX display controllers 			 	              *
 *****************************************************************************/
	display player1one(swimmerX0[3:0], HEX0);
	display player1two(swimmerY0[3:0], HEX1);
	display bubble1one(bubbleX0[3:0], HEX2);
	display bubble2one(bubbleY0[3:0], HEX3);
	display showTimeLow(oxygenLowDigit, HEX4);
	display showTimeHigh(oxygenHighDigit, HEX5);
	assign LEDR[0] = gameLoss;
	assign LEDR[1] = amIWinning;
	assign LEDR[9] = ~kb[0]; //left
	assign LEDR[8] = ~kb[2]; //down
	assign LEDR[7] = ~kb[3]; //up
	assign LEDR[6] = ~kb[1]; //right

/*****************************************************************************
 *                 		Audio-related objects  					                 *
 *****************************************************************************/					 
// Internal Wires
wire				audio_in_available;
wire		[31:0]	left_channel_audio_in;
wire		[31:0]	right_channel_audio_in;
wire				read_audio_in;

wire				audio_out_allowed;
wire		[31:0]	left_channel_audio_out;
wire		[31:0]	right_channel_audio_out;
wire				write_audio_out;
reg [7:0] sound;

assign read_audio_in			= audio_in_available & audio_out_allowed;
assign left_channel_audio_out	= 0 + sound;
assign right_channel_audio_out = 0 + sound;
assign write_audio_out			= audio_out_allowed; //audio_in_available & audio_out_allowed;

//time preservers
reg [7:0] lastTime;
reg [7:0] thisTime;

//game state preservers
reg didIWin;
reg amIWinning;

//incrementers for the sample location of tracks meant to be played
reg [18:0] delay_cnt;
reg [15:0] trackCount;
reg [15:0] shortCount;
wire [7:0] fullOxygen;
fullMusicMif trackFull(trackCount, CLOCK_50, 0, 0, fullOxygen);
wire [7:0] lowOxygen;
lowMusicMif trackLow(shortCount, CLOCK_50, 0, 0, lowOxygen);
wire [7:0] danger;
dangerMusicMif trackDanger(shortCount, CLOCK_50, 0, 0, danger);
wire [7:0] youWinM;
winMusicMif trackWin(trackCount, CLOCK_50, 0, 0, youWinM);
//wire [7:0] youLoseM;
//loseMusicMif trackLoss(trackCount, CLOCK_50, 0, 0, youLoseM);

initial begin 
	trackCount <= 0;
	shortCount <= 0;
	delay_cnt <= 0; 
	lastTime <= 0;
	thisTime <= 0;
	didIWin <= 0;
	amIWinning <= 0;
	end

always @(posedge CLOCK_50) begin
	if(!resetn) begin 
	trackCount <= 0;
	shortCount <= 0;
	delay_cnt <= 0;
	lastTime <= 0;
	thisTime <= 0;
	didIWin <= 0;
	amIWinning <= 0;
	end 
		else if(delay_cnt >= 19'd6250) begin //6250
			delay_cnt <= 0;
			
			if((amIWinning != didIWin) || (thisTime != lastTime)) begin //something may need to be changed
			
			if(amIWinning != didIWin) begin
			trackCount <= 0;
			shortCount <= 0;
			
			end //end of if(amIWinning)
			
			 else begin
			 //specific time state switcher ifs
				if(thisTime == 8'd25 && thisTime < 8'd12) begin //full oxygen
				trackCount <= 0;
				shortCount <= 0;
				
				end
			
				if(thisTime == 8'd11 && thisTime != lastTime) begin //low oxygen buildup
				trackCount <= 0;
				shortCount <= 0;
				
				end
			
				if(thisTime == 8'd7 && thisTime != lastTime) begin //danger
				trackCount <= 0;
				shortCount <= 0;
				
				end
				
				if(gameLoss && !gameWin) begin //game over
				trackCount <= 0;
				shortCount <= 0;
				
				end
			end //end of time state switcher ifs (else begin)
			
			end //end of all state switcher ifs (something may need to be changed)
			else begin 
				if(trackCount >= 16'd63999) trackCount <= 0;
				else trackCount <= trackCount + 1;
				if(shortCount >= 16'd31999) shortCount <= 0;
				else shortCount <= shortCount + 1;
				end
				
				
		lastTime <= thisTime;
		thisTime <= oxygenHighDigit*10 +  oxygenLowDigit;
			
		didIWin <= amIWinning;
		if (gameWin) amIWinning <= gameWin; //locks the win status
		
		end //end of if(delay == 6250)
		else delay_cnt <= delay_cnt + 1;
		
		
end

always @ (*) begin
	if(!resetn) sound = 0;
	else begin
			if(amIWinning) begin
			sound = {youWinM};
			end //end of if(amIWinning)
			
			 else begin
			 //specific time state switcher ifs
				if(thisTime < 8'd26 && thisTime >= 8'd12) begin //full oxygen

				sound = {fullOxygen};
				end
			
				if(thisTime < 8'd12 && thisTime >= 8'd8) begin //low oxygen buildup

				sound = {lowOxygen};
				end
			
				if(thisTime < 8'd8 && thisTime >= 8'd0) begin //danger

				sound = {danger};
				end
				
				if(gameLoss) begin //game over
				sound = 0;
				end
			end //end of time state switcher ifs (else begin)
			
	end		
end

Audio_Controller Audio_Controller (
	// Inputs
	.CLOCK_50						(CLOCK_50),
	.reset						(~resetn),

	.clear_audio_in_memory		(),
	.read_audio_in				(read_audio_in),
	
	.clear_audio_out_memory		(),
	.left_channel_audio_out		(left_channel_audio_out), //amplitude goes here
	.right_channel_audio_out	(right_channel_audio_out),
	.write_audio_out			(write_audio_out),

	.AUD_ADCDAT					(AUD_ADCDAT),

	// Bidirectionals
	.AUD_BCLK					(AUD_BCLK),
	.AUD_ADCLRCK				(AUD_ADCLRCK),
	.AUD_DACLRCK				(AUD_DACLRCK),


	// Outputs
	.audio_in_available			(audio_in_available),
	.left_channel_audio_in		(left_channel_audio_in),
	.right_channel_audio_in		(right_channel_audio_in),

	.audio_out_allowed			(audio_out_allowed),

	.AUD_XCK					(AUD_XCK),
	.AUD_DACDAT					(AUD_DACDAT)

);

avconf avc (
//avconf #(.USE_MIC_INPUT(1)) avc (
	.I2C_SCLK					(I2C_SCLK),
	.I2C_SDAT					(I2C_SDAT),
	.CLOCK_50					(CLOCK_50),
	.reset						(~resetn)
);					 
	
	
endmodule 