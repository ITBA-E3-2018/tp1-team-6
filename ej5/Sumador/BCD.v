module sumadorBCD_4b(
  output error,
  output Co, 
  output [3:0] y, 
  input[3:0] a , 
  input[3:0] b);

    wire [3:0] i;
    wire ca , sel, axu1, aux2;
    wire [3:0]aux;

  assign aux1 = (a > 9);
  assign aux2 = (b > 9);
  or(error, aux1, aux2);

  full_adder_4b dut1(ca, i, a , b);
  
  assign sel = ca || (i > 9);

  mux_4b my_mux(4'b0000 , 4'b0110 , sel , aux);
  
  full_adder_4b dut2(Co , y , i , aux);

  // mux_4b dut2(0,6,Co,dummy2);
  // full_adder_4b dut3(Co, y, dummy1 , dummy2);

  //    assign y = (y > 9)? y+6:y;

endmodule



module main;
reg [3:0] a;
reg [3:0] b;

wire[3:0] y;
wire Co, error;

reg dummy;

sumadorBCD_4b dut(error, Co, y, a, b);

initial begin

    dummy = $value$plusargs("a=%b", a);
    dummy = $value$plusargs("b=%b", b);

    $display("Input values are: a=%b b=%b", a, b);
    #1;
    $finish;
  end

  initial begin
    $monitor("Output value are y: %b , Co: %b, error: %b", y, Co, error);
  end
endmodule