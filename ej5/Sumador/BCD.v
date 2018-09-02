module sumadorBCD_4b(Co, y, a , b);
    input [3:0] a;
    input [3:0] b;
    output [3:0] y;
    output Co;
  //  reg [3:0] dummy;
 //   reg co6;

    full_adder_4b dut1(Co, y, a , b);

    initial begin
 //   #1
        if (y > 9 || Co == 1)
           y = y + 6;
           Co = 1;
        end
  //      else
  //          y = dummy;
  //      end
  //  $finish;
    end

endmodule



module main;
reg [3:0] a;
reg [3:0] b;

wire [3:0] y;
wire Co;

sumadorBCD_4b dut(Co, y, a, b);

initial begin

    a=4'b0110;
    b=4'b0110;

    $display("Input values are: a=%b b=%b", a, b);
    #1;
    $finish;
  end

  initial begin
    $monitor("Output value is: %b", y);
  end
endmodule