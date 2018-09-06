import os
import sys
import argparse


def process(data, backUp):   
    os.system("vvp alu +S="+str(temp[0])+" +A="+str(temp[1])+" +B="+str(temp[2]))
    

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
        args.append(input("Ingrese Selector ").replace(" ",""))
        args.append(input("Ingrese valor Registro A ").replace(" ",""))
        args.append(input("Ingrese valor Registro B ").replace(" ",""))   
        backUp = args 
        print(args)
        process(args,backUp)
        showOps()


if __name__ == '__main__':
    main()
