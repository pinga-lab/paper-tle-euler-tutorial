MANUSCRIPT=manuscript
BIB=references.bib
PANDOCARGS=-H header.tex -V fontsize=12pt --bibliography $(BIB) --csl=agu.csl

all: pdf

pdf: $(MANUSCRIPT).pdf

$(MANUSCRIPT).pdf: $(MANUSCRIPT).md $(BIB) header.tex
	pandoc $(PANDOCARGS) $< -o $@

doc: $(MANUSCRIPT).doc

$(MANUSCRIPT).doc: $(MANUSCRIPT).md $(BIB) header.tex
	pandoc $(PANDOCARGS) $< -o $@

clean:
	rm -f $(MANUSCRIPT).pdf $(MANUSCRIPT).doc
