for j in 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111 
do
    for i in 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
    do 
        iverilog BCD.v full_adder_4b.v full_adder_1b.v adder_1b.v mux.v
        vvp a.out +a=$i +b=$j

        rm a.out
    done    
done