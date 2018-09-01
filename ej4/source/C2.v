//*************************************Complemento a 2*******************************
module Complemento_2(x,y);
//Definition of the output and input
    input [3:0] x;
    output [3:0] y;
//Definition of the wire use in a not and nots
    wire Neg1,Neg2,Neg3,Neg4;
    not(Neg1,x[3]);
    not(Neg2,x[2]);
    not(Neg3,x[1]);
    not(Neg4,x[0]);
//Logic gates of the C2
    //Firts bit
    wire x1,x2,x3,x4;
    and(x1,x[3],Neg2,Neg3,Neg4);
    and(x2,Neg1,x[2]);
    and(x3,Neg1,x[1]);
    and(x4,Neg1,x[0]);
    or(y[3],x1,x2,x3,x4);
    //Second bit
    wire y1,y2,y3;
    and(y1,x[2],Neg3,Neg4);
    and(y2,Neg2,x[1]);
    and(y3,Neg2,x[0]);
    or(y[2],y1,y2,y3);
    //Third bit
    wire w1,w2;
    and(w1,Neg3,x[0]);
    and(w2,Neg4,x[1]);
    or(y[1],w1,w2);
     //Last bit
    assign y[0]=x[0];
endmodule // End of Module Complemento_2
