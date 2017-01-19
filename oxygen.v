///***oxygen counter, this is new, you just need to instantiate this one
module oxygen(input fps, resetn, input [6:0] collisions, 
	output reg [3:0] lowerDigit, upperDigit, output reg gameOver);

parameter second = 6'd59;
parameter startingUpper = 4'd2, startingLower = 4'd5; //set your initial oxygen level here
reg [5:0] count;
wire inBubble; //boolean; if we are in a bubble refill oxygen
assign inBubble = (|(collisions));
	
initial begin
	count <= 6'd0;
	gameOver <= 1'd0;
	lowerDigit <= startingLower;
	upperDigit <= startingUpper;
	end

//implement rough counter
always @(posedge fps, negedge resetn) begin
if(!resetn) begin //active low reset, go into reset state
	count <= 6'd0;
	gameOver <= 1'd0;
	upperDigit <= startingUpper; 
	lowerDigit <= startingLower; 
end

else if(count == second) begin
	count <= 6'd0;
	if(inBubble) begin //refill oxygen we are in bubble
		lowerDigit <= startingLower;
		upperDigit <= startingUpper;
		end
	else begin //count down
		if(lowerDigit == 1'd0) begin
			upperDigit <= upperDigit - 1'd1;
			lowerDigit <= 4'd9;
			end
		else lowerDigit <= lowerDigit - 1'd1;
		end //end of count down
		if(lowerDigit == 1'd0 && upperDigit == 1'd0) gameOver <= 1'b1;
	end //end of if (count == second)
else count <= count + 1'd1;

end //end of always block

endmodule
