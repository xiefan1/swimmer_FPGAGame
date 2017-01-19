
module keyListener (
	// Inputs
	clock,
	resetn,

	// Bidirectionals
	PS2_CLK,
	PS2_DAT,
	
	// Outputs
	keysOut
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/
parameter [1:0] RESET_S = 2'b00, PRESS_S = 2'b01, EXIT_S = 2'b10;

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/

// Inputs
input				clock;
input		resetn;

// Bidirectionals
inout				PS2_CLK;
inout				PS2_DAT;

// Outputs
output [3:0] keysOut;



/*****************************************************************************
 *                 Internal Wires and Registers Declarations                 *
 *****************************************************************************/

// Internal Wires
wire		[7:0]	ps2_key_data;
wire				ps2_key_pressed;

// Internal Registers
reg			[7:0]	last_data_received;
reg 			[7:0] double_previous;
reg leftButton, downButton, upButton, rightButton;

// State Machine Registers

/*****************************************************************************
 *                         Finite State Machine(s)                           *
 *****************************************************************************/

//if command = 1c followed by 1c, turn A on
//if command = F0 followed by 1c, turn A off
reg [1:0] nextStateA;
reg [1:0] presentStateA;

always @(*) begin
//next-state logic for key A
case (presentStateA)
RESET_S: begin 
	if (ps2_key_pressed && ps2_key_data == 8'h1c) nextStateA = PRESS_S;
	else nextStateA = RESET_S;
end
PRESS_S: begin
	if (double_previous == 8'hf0 && last_data_received == 8'h1c) nextStateA = RESET_S;
	else nextStateA = PRESS_S;
end
endcase
end

always@(posedge clock) begin
if (!resetn) presentStateA <= RESET_S;
else presentStateA <= nextStateA;
end	

always @(*) begin
//output logic for A
case (presentStateA)
RESET_S: leftButton = 1'b0;
PRESS_S: leftButton = 1'b1;
default: leftButton = 1'b0;
endcase
end

//if command = 1b followed by 1b, turn S on
//if command = F0 followed by 1b, turn S off

reg [1:0] nextStateS;
reg [1:0] presentStateS;

always @(*) begin
//next-state logic for key S
case (presentStateS)
RESET_S: begin 
	if (ps2_key_pressed && ps2_key_data == 8'h1b) nextStateS = PRESS_S;
	else nextStateS = RESET_S;
end
PRESS_S: begin
	if (double_previous == 8'hf0 && last_data_received == 8'h1b) nextStateS = RESET_S;
	else nextStateS = PRESS_S;
end
endcase
end

always@(posedge clock) begin
if (!resetn) presentStateS <= RESET_S;
else presentStateS <= nextStateS;
end	

always @(*) begin
//output logic for S
case (presentStateS)
RESET_S: downButton = 1'b0;
PRESS_S: downButton = 1'b1;
default: downButton = 1'b0;
endcase
end

//if command = 1d followed by 1d, turn W on
//if command = F0 followed by 1d, turn W off

reg [1:0] nextStateW;
reg [1:0] presentStateW;

always @(*) begin
//next-state logic for key W
case (presentStateW)
RESET_S: begin 
	if (ps2_key_pressed && ps2_key_data == 8'h1d) nextStateW = PRESS_S;
	else nextStateW = RESET_S;
end
PRESS_S: begin
	if (double_previous == 8'hf0 && last_data_received == 8'h1d) nextStateW = RESET_S;
	else nextStateW = PRESS_S;
end
endcase
end

always@(posedge clock) begin
if (!resetn) presentStateW <= RESET_S;
else presentStateW <= nextStateW;
end	

always @(*) begin
//output logic for W
case (presentStateW)
RESET_S: upButton = 1'b0;
PRESS_S: upButton = 1'b1;
default: upButton = 1'b0;
endcase
end

//if command = 23 followed by 23, turn D on
//if command = F0 followed by 23, turn D off

reg [1:0] nextStateD;
reg [1:0] presentStateD;

always @(*) begin
//next-state logic for key D
case (presentStateD)
RESET_S: begin 
	if (ps2_key_pressed && ps2_key_data == 8'h23) nextStateD = PRESS_S;
	else nextStateD = RESET_S;
end
PRESS_S: begin
	if (double_previous == 8'hf0 && last_data_received == 8'h23) nextStateD = RESET_S;
	else nextStateD = PRESS_S;
end
endcase
end

always@(posedge clock) begin
if (!resetn) presentStateD <= RESET_S;
else presentStateD <= nextStateD;
end	

always @(*) begin
//output logic for D
case (presentStateD)
RESET_S: rightButton = 1'b0;
PRESS_S: rightButton = 1'b1;
default: rightButton = 1'b0;
endcase
end

/*****************************************************************************
 *                             Sequential Logic                              *
 *****************************************************************************/

always @(posedge clock)
begin
	if (resetn == 1'b0) begin
		last_data_received <= 8'h00;
		double_previous <= 8'h00;
		end
	else begin 
		if (ps2_key_pressed == 1'b1) begin 
		last_data_received <= ps2_key_data;		
		end	
	/*//A key
	if (double_previous == 8'h1c && last_data_received == 8'h1c) leftButton <= 1'b1;
	if (double_previous == 8'hf0 && last_data_received == 8'h1c) leftButton <= 1'b0;
	//S key
	if (double_previous == 8'h1b && last_data_received == 8'h1b) downButton <= 1'b1;
	if (double_previous == 8'hf0 && last_data_received == 8'h1b) downButton <= 1'b0;
	//W key
	if (double_previous == 8'h1d && last_data_received == 8'h1d) upButton <= 1'b1;
	if (double_previous == 8'hf0 && last_data_received == 8'h1d) upButton <= 1'b0;
	//D key
	if (double_previous == 8'h23 && last_data_received == 8'h23) rightButton <= 1'b1;
	if (double_previous == 8'hf0 && last_data_received == 8'h23) rightButton <= 1'b0;*/
	double_previous <= last_data_received;	
	end
end

/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/

PS2_Controller PS2 (
	// Inputs
	.CLOCK_50				(clock),
	.reset				(~resetn),

	// Bidirectionals
	.PS2_CLK			(PS2_CLK),
 	.PS2_DAT			(PS2_DAT),

	// Outputs
	.received_data		(ps2_key_data),
	.received_data_en	(ps2_key_pressed)
);

assign keysOut = {~upButton, ~downButton, ~rightButton, ~leftButton};
endmodule
