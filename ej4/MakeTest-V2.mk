#Generate the executable of the project with this name
#Proj will be the default name but it´s expected to recive the name
#By using ?= we can set a default name if it hadn´t been given
TARGET	?=	Proj
#By having $Num we get the commands pass into it(Instresting Data)
#As the name literaly said, it´s the name of the compiler
COMPILER	=	iverilog
#Name of the files that should have
#The variable adobe is for the files.v
SRDIR	=	source
#Is the directory where the compile version will be send
BINDIR	=	execute
#Next we find all the file with the termination .v in SRDIR
#And the wildcard function is the one that do the job
SOURCES :=	$(wildcard	$(SRDIR)/*.v)
#check if souce is not empty
ifeq ($(value SOURCES), )
SOURCES2 :=	$(wildcard	*.v)
endif
#We need the "Name": to execute the echo
#Here we are saying that we want it in the file BINDIR, because
# we put the $(BINDIR) now this is the default direction
#with the name TARGET also, it will tell if it´s update or not
#base on if TARGET exist and if SOURCES is more recent than
#TARGET
$(BINDIR)/$(TARGET): $(SOURCES)
#Make the directory where the object will be store if it dosen´t exist
	@mkdir -p execute
ifneq ($(value SOURCES), )
#Compiles the file in the directory just made and 
#with the $@ is the name of the rule
	@$(COMPILER) $(SOURCES) -o $@
	@echo "Compilation complete!"
else
	@echo "Compilation failed!"
endif
#If there is no source file call this instead
NOTSOURCE: $(SOURCES2)
ifneq ($(value SOURCES2), )
#Compiles the file in the directory just made and 
#with the $@ is the name of the rule
	@$(COMPILER) $(SOURCES2) -o $@
	@echo "Compilation complete!"
else
	@echo "Compilation failed!"
endif
