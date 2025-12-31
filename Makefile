PDFLATEX := pdflatex
PDFLATEXFLAGS := -interaction=nonstopmode -halt-on-error

ifndef TEX
$(error TEX variable not set. Usage: make TEX=path/to/file.tex)
endif

TEXDIR := $(dir $(TEX))
BASENAME := $(basename $(notdir $(TEX)))
PDF := $(TEXDIR)$(BASENAME).pdf

all: $(PDF)

$(PDF): $(TEX)
	cd $(TEXDIR) && \
	$(PDFLATEX) $(PDFLATEXFLAGS) $(notdir $(TEX)) && \
	$(PDFLATEX) $(PDFLATEXFLAGS) $(notdir $(TEX))

clean:
	rm -f $(TEXDIR)*.aux $(TEXDIR)*.log $(TEXDIR)*.out $(TEXDIR)*.toc
