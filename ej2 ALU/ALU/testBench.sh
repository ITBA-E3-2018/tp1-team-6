iverilog -o alu alu.vl
echo Ejecutando TestBench
for j in 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111 
do
    for i in 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
    do 
        for k in 000 001  010 100 011 110 111
        vvp alu +S=k +A=i +B=j
    done    
done