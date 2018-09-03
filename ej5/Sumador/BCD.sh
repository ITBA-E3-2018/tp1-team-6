iverilog BCD.v
vvp a.out +a=0001 +b=0001
vvp a.out +a=0101 +b=0101
vvp a.out +a=0111 +b=0011
vvp a.out +a=1111 +b=1011
vvp a.out +a=0101 +b=0101
vvp a.out +a=0111 +b=0010
vvp a.out +a=0100 +b=0110
vvp a.out +a=0010 +b=0011
vvp a.out +a=0110 +b=0111
vvp a.out +a=0111 +b=1000
vvp a.out +a=0110 +b=0100
vvp a.out +a=1000 +b=0000

rm a.out