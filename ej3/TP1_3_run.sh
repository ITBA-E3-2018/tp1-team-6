iverilog TP1_3.v
vvp a.out +x=1 +S=00
vvp a.out +x=1 +S=01
vvp a.out +x=1 +S=10
vvp a.out +x=1 +S=11

vvp a.out +x=0 +S=00
vvp a.out +x=0 +S=01
vvp a.out +x=0 +S=10
vvp a.out +x=0 +S=11
rm a.out