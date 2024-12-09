TEXFILE = lohengrin
PDFLATEX = pdflatex

# derived
TEXSRC = $(TEXFILE).tex
PDF = $(TEXFILE).pdf

# Default target
all: pdf

# Rule to generate the PDF
pdf: $(TEXSRC)
	$(PDFLATEX) $(TEXSRC)

# Clean up auxiliary files
clean:
	rm -f $(TEXFILE).aux $(TEXFILE).log 

# Clean everything, including the PDF
cleanall: clean
	rm -f $(PDF)

.PHONY: all clean cleanall
