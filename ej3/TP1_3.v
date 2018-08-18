module demux(x, S, W);
    input x;            //los inputs y outputs se definen como tales dentro del modulo !
    input [1:0] S;
    output reg [3:0] W; //ponemos reg porque lo cambiamos en un bloque always

    always @(x or S) begin  //dale begin
       //Evitamos hacer computaciones de más dado que si x es 0 su salida sera identicamente 0
        if(x == 1'b0)
            W = x;
        else
            case(S)
                0: W = x<<3;    //shifteamos el bit de entrada a la izquierda
                1: W = x<<2;    //segun el caso
                2: W = x<<1;    //Los valores 0,1,2,3 corresponden a los valores de S en binario
                3: W = x;
            endcase
    end
endmodule



module main;        // analogo al main de C

  reg x;            // futuros inputs
  reg [1:0] S;      
  wire [3:0] W;     // futuro outputs
  reg dummy;

  demux dut_demux(x, S, W);

  initial begin

    dummy = $value$plusargs("x=%b", x);
    dummy = $value$plusargs("S=%b", S);

    $display("Input values are: x=%b S=%b", x, S);
    #1;
    $finish;
  end

  initial begin
    $monitor("Output value is: %b", W) ;
  end
endmodule
