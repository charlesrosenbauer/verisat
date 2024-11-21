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
			
			
			end
			
			OP_RST_STATE : begin
			
			
			end
	
			OP_INS_CLAUSE : begin
			
			
			end
			
			OP_GET_STATE : begin
			
			
			end
			
			OP_WALK : begin
			
			
			end
		endcase
	end
endmodule
