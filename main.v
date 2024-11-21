/*
	Okay, actually I'm going to build something more interesting.
	I want to build a verilog SAT solver
	
	There is a command buffer, and some input/output buffers.
	Also outputs for sat and unsat, to signal completion.
	
	There are some commands for reseting state, initializing clauses, and evaluating the problem, and extracting the final state.
*/

module solver(
	input wire			clk,
	input wire [7:0]	bus_a,
	input wire [7:0]	bus_b,
	input wire [7:0]	bus_c,
	input wire [7:0]	cmd,
	
	output reg			sat,
	output reg			unsat,
	output reg [7:0]	exbus
);

endmodule
