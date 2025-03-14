module top(
input [15:0] sw,
input btnL, btnU, btnD, btnR, btnC
output [15:0] led
    );
    
  wire [3:0] muxOutput; 
myMux mux_inst (
.CEO(sw[2:0]),
.You(sw[7:4]),
.Fred(sw[11:8]),
.Jill(sw[15:12]),
.Enable(btnC),
.y(muxOutput)
);

/* Demux Instance */
Demux demux_inst(
.In(muxOutput),
.Sel({btnR, btnD}),
.Enable(btnC),
.local_lib(led[3:0]),
.FireDepartment(led[7:4]),
.School(led[11:8]),
.RibShack(led[15:12]),
);

endmodule
