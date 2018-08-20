import argparse

def parseArgs():
    parser = argparse.ArgumentParser(description='Compute Range and Resolution of Fixed Point Number.', add_help = True) 
    parser.add_argument('parameters', type = checkInput ,nargs='+',help = "SIGNO  INTBITS  FRACBITS") #checkInput is a custome check function. See below 
    args = parser.parse_args()
    validInput = checkArgs(args)  
    
    if validInput:
        return args
    else:
        return False
# Validation of raw input data (param is received as a string). Must be non-negative integer.
def checkInput(param):
    try:
        return int(param) #Return converted parameter
    except:
        return -1    #Return -1 if dataType doesn't match

#If datatypes are correct procced with arguments validation.
def checkArgs(args):
    argsOk = True
    #Check quantity of parameters 
    if(len(args.parameters) > 3):
        print("WARNING ONLY THE FIRST 3 TERMS WILL BE CONSIDERED")  
    if(len(args.parameters) < 3):
        argsOk = False

    for a in args.parameters:
        if (a < 0):
            argsOk = False
            
    if(args.parameters[0] >= 2):
        argsOk = False

    return argsOk

#Computes Range and Resolution. 
def process(args):
    intBits = args.parameters[1]
    fracBits = args.parameters[2]
    rango = 2**intBits  - 0.5**fracBits
    resolucion = 0.5**fracBits
    print("\nRes:\t"+ str(resolucion) + " | Ran:\t"+str(rango)+"\n")

def main():
    args = parseArgs()
    if args != False: #If everything is valid then compute
        process(args)
    else:
        print("ERROR")
        return

if __name__ == "__main__":
    main()
    
