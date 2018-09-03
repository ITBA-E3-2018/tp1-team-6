 module mux_4b (a,b,sel,y);
   	  	input [3:0]a;
		input [3:0]b;
   	  	output [3:0]y;
   	  	input sel;
   	  //	wire [3:0]y;
   	  	 
   	  	assign y = (sel) ? b : a;
   	  	 
 endmodule