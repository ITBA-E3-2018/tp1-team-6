#----------------------------------------
#Objective:Compile a Latex file
#---------------------------------------
#Remembered you must give the name of the file in case that it is not
#the one given by default in TARGET.
TARGET	?=	Informe
COMPILER	=	latexmk
OPTIONS = -synctex=1 -interaction=nonstopmode -file-line-error -pdf
GARBAGE = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls
#Will say if the file is updated or not
Informe: $(TARGET).tex
	@$(COMPILER) $(OPTIONS) $(TARGET).tex
#Erase garbage
	@rm -rf $(GARBAGE)
#We avoid not running it, in case a file name clean actually exist
.PHONY: clean
clean:
	@rm -rf $(GARBAGE)