import argparse
from argparse import Namespace

def parseArgs():
    parser = argparse.ArgumentParser(usage = "Fixed Point Number -h --signo SIGNO --intBits INTBITS --fracBits FRACBITS",prog = "Fixed Point Number",description='Find out Range and Resolution of Fixed Point Number.', add_help = True) 
    parser.add_argument('--signo',required = True,type = checkSign,help ="0 --> unsigned | 1 --> signed")
    parser.add_argument('--intBits',required = True,type = checkIntFrac,help = "Number of bits for Integer part")
    parser.add_argument('--fracBits',required = True,type = checkIntFrac,help ="Number of bits for Fractional part")
    parser.add_argument('--test',required = False,type = checktests,help ="write 'yes' to begin testsing")
    args = parser.parse_args()
    return args

def checktests(tests):
    if(tests.lower() == "yes"):
        return(tests)

def checkSign(signo): 
    num = int(signo)
    if(num != 0 and  num != 1):
        raise argparse.ArgumentTypeError("ERROR")
    return num

def checkIntFrac(data):
    num = int(data)
    if num < 0 or  not data.isnumeric():
        raise argparse.ArgumentTypeError("ERROR")
    return num

def dataOk(num):
    if type(num) is not int:
         raise argparse.ArgumentTypeError("ERROR")
        
def process(args):      
    #print(args.signo)       
    if (args.signo == 0):     
        #rango = (2**args.intBits -1) + (1-0.5**fracBits)
        rango = 2**args.intBits  - 0.5**args.fracBits   
        res = 0.5**args.fracBits
        print("\nRes:\t"+ str(res) + " | Ran:\t"+str(rango)+"\n")
    elif( args.signo == 1):
        maxN = (2**(args.intBits-1)  - 0.5**args.fracBits)
        minN = -2**(args.intBits-1)
        rango = maxN - minN
        res = 0.5**args.fracBits
        print("\nRes:\t"+ str(res) + " | Ran:\t"+str(rango)+"\n")

def runTests(cant):
    tests = []
    if (cant == 0 or cant == None):
        tests.append(Namespace(signo = 0, intBits = 4, fracBits = 5, test = "no"))
        tests.append(Namespace(signo = 1, intBits = 4, fracBits = 5, test = "no"))
        tests.append(Namespace(signo = -1, intBits = 4, fracBits = 5, test = "no"))
        tests.append(Namespace(signo = 0, intBits = -4, fracBits = 5, test = "no"))
        tests.append(Namespace(signo = 0, intBits = 4, fracBits = -5, test = "no"))
        tests.append(Namespace(signo = -0, intBits = -4, fracBits = -5, test = "no"))
        tests.append(Namespace(signo = "a", intBits = "b", fracBits = "c", test = "no"))
    for t in tests:
        process(t)




def main():
    args = parseArgs()
    #print(args)
    if(str(args.test).lower() == "yes"):
        runTests(0)
    process(args)
    #code
    pass

if __name__ == "__main__":
    main()



# module punto1;
# integer signo =8; // 0 (no signado), 1 (signado)
# real bitsParteEntera =  4; //cantidad de bits de parte entera
# real bitsParteFraccionaria =  2; //Cantidad de bits para la parte fraccionaria
# real max = 0;
# real min = 0;
# real res = 0; //Resolucion
# //Tener en cuenta que la suma de la cantidad de bits se 
# //tendra que mantener en algun cierto tipo de constrain
# integer tests;
# initial 
#     begin
#         if(bitsParteEntera < 0 || bitsParteFraccionaria < 0 || (signo != 0 && signo != 1))
#             $display("ERROR");       
#         if(signo == 0)
#             begin
#                 //              Parte Entera             Parte Fraccionaria 
#                 // max = (2**(bitsParteEntera)-1) + (1-(0.5)**bitsParteFraccionaria);
#                 max = 2**(bitsParteEntera) - 0.5**bitsParteFraccionaria;
#                 $display("\nRes:\t%f | Ran:\t%f\n", 0.5**bitsParteFraccionaria,max);
#             end
#         else if(signo == 1)
#             begin
#                 // max = (2**(bitsParteEntera-1)-1) + (1-(0.5)**bitsParteFraccionaria);
#                 max = 2**(bitsParteEntera-1) - 0.5**bitsParteFraccionaria;
#                 min = -2**(bitsParteEntera-1);
#                 $display("\nRes:\t%f | Ran:\t%f\n", 0.5**bitsParteFraccionaria,max-min);
#     end
# end
# endmodule