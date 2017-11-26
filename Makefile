LATEX=pdflatex
LATEXOPT=-interaction=nonstopmode -halt-on-error

LATEXMK=latexmk
LATEXMKOPT=-pdf

MAIN=*.tex

.PHONY: all clean

all: ;\
  $(LATEXMK) $(LATEXMKOPT) -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN) ;\

clean: ;\
  $(LATEXMK) -C $(MAIN) ;\
  rm -f $(MAIN).pdfsync ;\
  rm -rf *~ *.tmp ;\
  rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk ;\
  rm -f *.run.xml ;\
