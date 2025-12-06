TEXFILE = chronik
PDFLATEX = pdflatex

# derived
TEXSRC = $(TEXFILE).tex
PDF = $(TEXFILE).pdf

# Default target
all: pdf

# Rule to generate the PDF
pdf: $(TEXSRC)
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error $(TEXSRC)
	if grep -q "Rerun to get" $(TEXFILE).log; then \
		$(PDFLATEX) -interaction=nonstopmode -halt-on-error $(TEXSRC) >/dev/null; \
	fi

# Clean up auxiliary files
clean:
	rm -f $(TEXFILE).aux $(TEXFILE).log $(TEXFILE).toc $(TEXFILE).out

# Clean everything, including the PDF
cleanall: clean
	rm -f $(PDF)

.PHONY: all clean cleanall
