PDF = einstein.pdf

all:  ${PDF}

%.pdf:  %.tex   ct*.sty 0*.tex auto-*.tex tilings.bib figures/*.pdf
	pdflatex $<
	- bibtex $*
	pdflatex $<
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $*.log) \
	do pdflatex $<; done

clean:
	$(RM) *.log *.aux \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi

distclean: clean
	$(RM) $(PDF)
