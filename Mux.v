module Mux(

    input [3:0] Ceo, You, Fred, Jill,
    input [1:0] Sel,
    input Enable,
    output [3:0] y
);
    
    
  assign y = Enable ? (Sel == 2'b00 ? Ceo:(Sel == 2'b01 ? You : (Sel == 2'b10 ? Fred : Jill))) :  4'b0000; 

endmodule
