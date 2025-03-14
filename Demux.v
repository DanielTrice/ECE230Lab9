module Demux(
    input [3:0] DataIn,
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib,
    output [3:0] FireDepartment, 
    output [3:0] School, 
    output [3:0] RibShack
    );

    assign local_lib = (Enable ? (Sel == 2'b00 ? DataIn: 0) : 0);
    assign FireDepartment = (Enable ? (Sel == 2'b01 ? DataIn: 0) : 0);
    assign School = (Enable ? (Sel == 2'b10 ? DataIn: 0) : 0);
    assign RibSchack = (Enable ? (Sel == 2'b11 ? DataIn: 0) : 0);
  
endmodule
