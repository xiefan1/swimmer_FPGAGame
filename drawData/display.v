module display(Inp, h);
input [3:0] Inp; //Inpitches 4 to 1, where 3 is w and 0 is z
output [6:0] h; // target 7-segment display

light cero( Inp[3] , Inp[2] , Inp[1] , Inp[0] , h[0], h[1], h[2], h[3], h[4], h[5], h[6]);

endmodule

//w x y z is 8 4 2 1 in decimal
//inversion to compensate for common anode grounding
module light (w, x, y, z, f0, f1, f2, f3, f4, f5, f6);
input w, x, y, z;
output f0, f1, f2, f3, f4, f5, f6;

// f0:(1)(4)(b)(d)
assign f0 = ~((w | x | y | ~z)&(w | ~x | y | z)&(~w | x | ~y | ~z)&(~w | ~x | y | ~z));
// f1:(b,F)(C,E)(6)(5)
assign f1 = ~((~w | ~y | ~z)&(~w | ~x | z)&(w | ~x | ~y | z)&(w | ~x | y | ~z));
// f2:(E,F)(2)(C)
assign f2 = ~((~w | ~x | ~y)&(w | x | ~y | z)&(~w | ~x | y | z));
// f3:(1,9)(4)(7,F)(A)
assign f3 = ~((x | y | ~z)&(w | ~x | y | z)&(~x | ~y | ~z)&(~w | x | ~y | z));
// f4:(3,1)(4)(7,5)(9)
assign f4 = ~((w | x | ~z)&(w | ~x | y | z)&(w | ~x | ~z)&(~w | x | y | ~z));
// f5:(2)(1,3)(7)(d)
assign f5 = ~((w | x | ~y | z)&(w | x | ~z)&(w | ~x | ~y | ~z)&(~w | ~x | y | ~z));
// f6:(0,1)(7)(C)
assign f6 = ~((w | x | y )&(w | ~x | ~y | ~z)&(~w | ~x | y | z));

endmodule

