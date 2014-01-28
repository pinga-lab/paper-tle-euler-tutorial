MANUSCRIPT=manuscript
BIB=references.bib
LATEXHEADER=-H header.tex
PANDOCARGS=-V fontsize=11pt --bibliography $(BIB) --csl=agu.csl

all: pdf

pdf: $(MANUSCRIPT).pdf

$(MANUSCRIPT).pdf: $(MANUSCRIPT).md $(BIB) header.tex
	pandoc $(LATEXHEADER) $(PANDOCARGS) $< -o $(MANUSCRIPT).tex
	pdflatex $(MANUSCRIPT).tex
	pdflatex $(MANUSCRIPT).tex

doc: $(MANUSCRIPT).doc

$(MANUSCRIPT).doc: $(MANUSCRIPT).md $(BIB)
	pandoc $(PANDOCARGS) $< -o $@

wordcount:
	@echo "Words in:"
	@wc -w $(MANUSCRIPT).md

clean:
	rm -f $(MANUSCRIPT).pdf $(MANUSCRIPT).doc $(MANUSCRIPT).tex *.aux *.bbl \
	*.log *.out *.blg
