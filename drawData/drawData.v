module drawData
	(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
        KEY,
        SW,
		  HEX0, HEX1, HEX2, HEX3, HEX5,
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK,						//	VGA BLANK
		VGA_SYNC,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B   						//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
	input   [0:0]   KEY;
	input	  [9:0]   SW;
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX5;
	

	// Declare your inputs and outputs here
	// Do not change the following outputs
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK;				//	VGA BLANK
	output			VGA_SYNC;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
	wire resetn;
	assign resetn = KEY[0];
	
	// Create the x, y and writeEn wires that are inputs to the controller.
	//connection between system clock and bubbles
	wire fps_enable;
	//connection between bubbles, player, and dataPrint
	wire [7:0] playerX, b1X, b2X; 
	wire [6:0] playerY, b1Y, b2Y;
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
			.VGA_BLANK(VGA_BLANK),
			.VGA_SYNC(VGA_SYNC),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "black.mif";
		
	// Put your code here. Your code should produce signals x, y, colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
    
	 // Instanciate fps counter
	sysClock s(CLOCK_50, fps_enable);
	 // Instanciate player "module", with outputs startX and startY
	player p1(fps_enable, SW[3:0], SW[3:0], playerX, playerY);
    // Instanciate bubble "modules", with outputs startX and startY
	bubble b1(fps_enable, SW[6:4], SW[6:4], b1X, b1Y);
	bubble b2(fps_enable, SW[9:7], SW[9:7], b2X, b2Y);
    // Instanciate FSM dataPrint
	dataPrint d(CLOCK_50, fps_enable, resetn, playerX, playerY, b1X, b1Y, b2X, b2Y, writeEn, xToVGA, yToVGA, cToVGA);
	 // Instanciate address of player and bubble 2 shown
	display player1one(playerX[3:0], HEX0);
	display player1two(playerY[3:0], HEX1);
	display bubble1one(b1X[3:0], HEX2);
	display bubble2one(b2X[3:0], HEX3);
	display colourdisplay({1'b0,cToVGA[2:0]}, HEX5);
	
	

endmodule
