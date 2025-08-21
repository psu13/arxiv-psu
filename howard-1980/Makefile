DEST="/Users/psu/Google/Reader/Math and Physics/More Math/Cons \& Logic"

all:
	pdflatex howard.tex
	pdflatex howard.tex
	pdflatex howard.tex

	pdflatex howard-ch.tex
	pdflatex howard-ch.tex
	pdflatex howard-ch.tex

	pdflatex howard-luc.tex
	pdflatex howard-luc.tex
	pdflatex howard-luc.tex

	
	cp howard.pdf "/Users/psu/Google/Reader/Math and Physics/More Math/Cons & Logic/Howard - The Formulae-as-types Notion of Construction 1980 (pal).pdf"
	cp howard.pdf "/Users/psu/Google/Reader/Math and Physics/Types, etc/Howard - The Formulae-as-types Notion of Construction 1980 (pal).pdf"
	cp howard.pdf "/Users/psu/Google/Reader/Math and Physics/Howard-CCC/Howard - The Formulae-as-types Notion of Construction 1980 (pal).pdf"
	
clean:
	rm -rf *.out *.log *.aux *sync*

.PHONY: clean
