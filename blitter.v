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

/*
	framecounter = 0
	x = 0
	y = 0
	always @ clk {
		if(x+1 < W)
			x++
		else if(y+1 < H)
			x = 0, y++
		else
			wait
			
		if(!wait){
			draw pixel
		}
		if(framecounter == limit)
			x = 0, y = 0, framecounter = 0
	}
*/


initial
  begin
    $display("Hello World!");   // This will display a message
    $finish ; // This causes the simulation to end.  Without, it would go on..and on.
  end

endmodule
