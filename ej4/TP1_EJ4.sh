iverilog TP1_EJ4.v
#Realizamos un testeo de la tabla completa
echo Tabla de Verdad
vvp a.out +x=0000 rm a.out
vvp a.out +x=0001 rm a.out
vvp a.out +x=0010 rm a.out
vvp a.out +x=0011 rm a.out
vvp a.out +x=0100 rm a.out
vvp a.out +x=0101 rm a.out
vvp a.out +x=0110 rm a.out
vvp a.out +x=0111 rm a.out
vvp a.out +x=1000 rm a.out
vvp a.out +x=1001 rm a.out
vvp a.out +x=1010 rm a.out
vvp a.out +x=1011 rm a.out
vvp a.out +x=1100 rm a.out
vvp a.out +x=1101 rm a.out
vvp a.out +x=1110 rm a.out
vvp a.out +x=1111 rm a.out
