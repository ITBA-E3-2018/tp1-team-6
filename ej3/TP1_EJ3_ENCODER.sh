iverilog TP1_EJ3_ENCODER.v
echo 1° Caso
vvp a.out +a=0 +b=0 +c=0 +d=1 rm a.out
echo 2° Caso
vvp a.out +a=0 +b=0 +c=1 +d=0 rm a.out
echo 3° Caso
vvp a.out +a=0 +b=1 +c=0 +d=0 rm a.out
echo 4° Caso
vvp a.out +a=1 +b=0 +c=0 +d=0 rm a.out
echo 5° Caso
vvp a.out +a=1 +b=1 +c=1 +d=1 rm a.out