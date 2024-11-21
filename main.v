/*
	Okay, actually I'm going to build something more interesting.
	I want to build a verilog SAT solver
	
	There is a command buffer, and some input/output buffers.
	Also outputs for sat and unsat, to signal completion.
	
	There are some commands for reseting state, initializing clauses, and evaluating the problem, and extracting the final state.
*/

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
	reg			[128:0]	here_state;
	reg			[128:0] prev_state;
	
	
	parameter	OP_RST_MODEL	= 0,
				OP_RST_STATE	= 1,
				OP_INS_CLAUSE	= 2,
				OP_GET_STATE	= 3,
				OP_WALK			= 4;
	
	always @(posedge clk) begin
		case (cmd)
			OP_RST_MODEL : begin
				// reset clauses
			end
			
			OP_RST_STATE : begin
				assign here_state =  0;
				assign prev_state = -1;
			end
	
			OP_INS_CLAUSE : begin
				// insert clause, pulling from bus_a, bus_b, and bus_c
			end
			
			OP_GET_STATE : begin
				// index byte from here_state[bus_a], write to exbus
			end
			
			OP_WALK : begin
				// this is complicated, and is the bulk of what needs to get done
				
				// I'm thinking it might be a good idea to, for this solver, just use big bit tables for clauses
				// That essentially makes this full SAT, albeit with a maximum of 128 variables
				// And probably a max of 256 or so clauses.
				
				// For each clause, calculate the step size
				//		this requires tracking if any of the constraints are satisfied
				//		and if none are, then return a step based on incrementing to flip the smallest constraint
				// Then, increment by the maximum step
				// If there is no difference from the previous step, set SAT high
				// If a bit one above the largest variable is set, set UNSAT high
			end
		endcase
	end
endmodule
