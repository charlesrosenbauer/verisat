/*
	I want to build a simple blitter core to do 80s-style 2D graphics
	
	Handle:
	* write to pixel buffer
	* read from sprite buffer
	* read from icon buffer
	
	Thoughts:
	* double icon buffer
	* sprite buffer (multiple compression modes)
	* object buffer, limited objects, higher (x,y) resolution
	* image generator, configurable h/w, framerate
	* a couple drawing modes?
*/
module myModule();

initial
  begin
    $display("Hello World!");   // This will display a message
    $finish ; // This causes the simulation to end.  Without, it would go on..and on.
  end

endmodule
