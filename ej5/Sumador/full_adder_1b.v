module full_adder_1b(Co, y, a, b, Cin);
    input a, b, Cin;
    output Co, y;

    adder_1b dut1(co1, y1, a, b);
    adder_1b dut2(co2, y, y1, Cin);
    or(Co, co1, co2);

endmodule