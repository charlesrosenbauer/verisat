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
	reg			[127:0]	here_state;
	reg			[127:0] prev_state;
	
	
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
			end
		endcase
	end
endmodule
