import os
import sys
import argparse

#Interfaz para ALU de 4 Bits.
#Se asume que el usuario tiene nociones del tema y se limitara a dar entradas validas siguiendo las instrucciones dadas
def process(data,backUp):
    temp = data
    if data[0] == '':
        temp[0] = backUp[0]
    if data[1] == '':
        temp[1] = backUp[1]
    if data[2] == '':
        temp[2] = backUp[2]  
        
    print("/////////////////////O U T P U T/////////////////////////////////") 
    os.system("vvp alu +S="+str(temp[0])+" +A="+str(temp[1])+" +B="+str(temp[2]))
    print("//////////////////////////////////////////////////////////////////////////") 
    

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

def main():
    quit = False
    showWelcome()
    showOps()
    backUp = []
    while(not quit):
        args = []
        args.append(input("Ingrese Selector (3bits) ").replace(" ",""))
        if(args[0] == "quit"):
            break
        args.append(input("Ingrese valor Registro A (4bits) ").replace(" ",""))
        if(args[1] == "quit"):
            break
        args.append(input("Ingrese valor Registro B (4bits) ").replace(" ",""))   
        if(args[2] == "quit"):
            break

        process(args,backUp)
        backUp = args
        showOps()


if __name__ == '__main__':
    main()
