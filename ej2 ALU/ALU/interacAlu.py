import os
import sys
import argparse

#Interfaz para ALU de 4 Bits.
#Se asume que el usuario tiene nociones del tema y se limitara a dar entradas validas siguiendo las instrucciones dadas
def process(data):   
    os.system("vvp alu +S="+str(data[0])+" +A="+str(data[1])+" +B="+str(data[2]))
    

def showOps():
    print('''
    +=======================+=======+=====+=====+=====+=====+=====+=======+
    |                       OPERACIONES ADMITIDAS                         |
    +=======================+=======+=====+=====+=====+=====+=====+=======+
    | SUMA    | RESTA   | AND   | OR    | NOT   | XOR   | CA2   | A<<1    |
    +-----------------------+-------+-----+-----+-----+-----+-----+-------+
    | 000     | 001     | 010   | 011   | 100   | 101   | 110   | 111     |
    +-----------------------+-------+-----+-----+-----+-----+-----+-------+
        ''')
def showWelcome():
    print("Bienvenido a Electro3 ALU")
    print("Esta ALU le permitira hacer operaciones unicamente con números de hasta 4 bits")
    print('''La siguiente tabla lo ayudara a seleccionar la operacion que desea realizar.
            ''')
    print("Para ejecutar el testBench escriba -T")

def main():
    quit = False
    showWelcome()
    showOps()
    backUp = []
    while(not quit):

        args = []
        args.append(input("Ingrese Selector (3bits) ").replace(" ",""))
        args.append(input("Ingrese valor Registro A (4bits) ").replace(" ",""))
        args.append(input("Ingrese valor Registro B (4bits) ").replace(" ",""))   
        process(args)
        showOps()


if __name__ == '__main__':
    main()
