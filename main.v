/*
	Okay, actually I'm going to build something more interesting.
	I want to build a verilog SAT solver
	
	There is a command buffer, and some input/output buffers.
	Also outputs for sat and unsat, to signal completion.
	
	There are some commands for reseting state, initializing clauses, and evaluating the problem, and extracting the final state.
*/

`define OP_RST_MODEL	0
`define OP_RST_STATE	1
`define OP_INS_CLAUSE	2
`define OP_GET_STATE	3
`define OP_WALK			4

module solver(
	input wire			clk,
	input wire	[7:0]	bus_a,
	input wire	[7:0]	bus_b,
	input wire	[7:0]	bus_c,
	input wire	[7:0]	cmd,
	
	output reg			sat,
	output reg			unsat,
	output reg	[7:0]	exbus
);
	reg			[127:0]	here_state;
	reg			[127:0] prev_state;
	
	
	
	
	

endmodule
