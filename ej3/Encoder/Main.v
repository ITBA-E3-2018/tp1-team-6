module main;
//Input
reg a,b,c,d;
//Output
wire x,y;
//Nothing
reg dummy;
//because if not, it doesn't work
encoder codifire(a,b,c,d,x,y);
//Recibe the input
initial begin
  dummy = $value$plusargs("a=%b", a);
  dummy = $value$plusargs("b=%b", b);
  dummy = $value$plusargs("c=%b", c);
  dummy = $value$plusargs("d=%b", d);
  //Just in case
  #1;
  $display ("INPUT: %b %b %b %b",a,b,c,d);
  $display("OUTPUT OF X: %b",x);
  $display("OUTPUT OF Y: %b",y);
end
endmodule