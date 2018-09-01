module main;
//Input
reg [3:0] x;
//Output
wire [3:0] y;
//Nothing
reg dummy;
//because if not, it doesn't work
Complemento_2 C_2(x,y);
//Recibe the input
initial begin
    //The firts recive is guard in x[0] and the last in x[3]
    dummy = $value$plusargs("x=%b", x);
    //Showing the results
    #1;
    $display("Input:  %b",x);
    $display("Output: %b",y);
end
endmodule
