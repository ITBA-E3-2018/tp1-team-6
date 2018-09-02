module full_adder_4b(Co, y, a, b);
    input [3:0] a;
    input [3:0] b;
    output [3:0] y;
    output Co;

    full_adder_1b dut3(co3, y[0], a[0], b[0], 0);
    full_adder_1b dut4(co4, y[1], a[1], b[1], co3);
    full_adder_1b dut5(co5, y[2], a[2], b[2], co4);
    full_adder_1b dut6(Co, y[3], a[3], b[3], co5);

endmodule