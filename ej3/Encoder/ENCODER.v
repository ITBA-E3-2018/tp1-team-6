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