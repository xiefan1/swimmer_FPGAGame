module player(input fps_enable, input [3:0] xInit, input [3:0] yInit, output reg [7:0] xOut, output reg [6:0] yOut);

//user enter location
always @(posedge fps_enable) begin
xOut <= {3'b110, xInit};
yOut <= {2'b01, yInit};
end

endmodule