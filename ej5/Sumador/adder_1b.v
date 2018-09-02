module adder_1b(Co, y, a, b);
    input a, b;
    output Co, y;

    xor(y,a,b);
    and(Co,a,b);

endmodule