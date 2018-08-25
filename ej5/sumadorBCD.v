module sumadorBCD(a , b , x);

input [3:0] a;
input [3:0] b;
output reg [7:0] x;

initial begin
    #1
    if(a > 9 || b > 9)
        $display("error. solo numeros de un digito, GIL");
    else begin
        if ((a + b) < 10)
            x = a + b;
        else            //como a y b son de un digito la suma sera de menor a 19
            x = (1<<4) - 10 + a + b;
    end
end

endmodule


module main;

reg [3:0] a0;
reg [3:0] b0;
wire [7:0] x;
reg dummy;

sumadorBCD dut(a, b, x);

integer a , b;

initial begin
    for (a = 0; a < 10; a = a + 1) begin
      for (b = 0; b < 10; b = b + 1) begin
          a0 = a ; b0 = b;
          $display("Input values are: %b %b %b", a0, b0, x);
          #1;
      end
    end
    $finish;
end

endmodule
