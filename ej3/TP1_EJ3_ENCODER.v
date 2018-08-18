//***************************************ENCODER*******************************
module encoder(a,b,c,d,x,y);
    input a,b,c,d;
    output x,y;
    //The wire are use to connect all the logic doors
    wire x1,x2,x3,x4;
    wire y1,y2,y3,y4;
    //Outpu of X
    not(x1,c);
    not(x2,d);
    and(x3,x1,x2);
    or(x,x3,a);
    //Out of Y
    not(y1,a);
    not(y2,c);
    and(y3,a,y2);
    and(y4,c,y1);
    or(y,y3,y4);
endmodule

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
  #1
  $display ("INPUT: %b %b %b %b",a,b,c,d);
  $display("OUTPUT OF X: %b",x);
  $display("OUTPUT OF Y: %b",y);
end
endmodule
