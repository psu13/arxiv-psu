L=/Users/psu/Google/Reader/Math and Physics/Maths/Cons & Logic
CCC=/Users/psu/Google/Reader/Math and Physics/Howard-CCC
T=Huet - Cartesian Closed Categories and Lambda Calculus (1986
all:
	pdflatex huet-1986-pal.tex
	pdflatex huet-1986-pal.tex
	pdflatex huet-1986-pal.tex
	pdflatex huet-1986-cm.tex
	pdflatex huet-1986-cm.tex
	pdflatex huet-1986-cm.tex
	cp huet-1986-pal.pdf "$L/$T, psu).pdf"
	cp huet-1986-cm.pdf "$L/$T, psu,cm).pdf"
	cp huet-1986-pal.pdf "$(CCC)/$T, psu).pdf"
	cp huet-1986-cm.pdf "$(CCC)/$T, psu,cm).pdf"

clean:
	rm -rf *.out *.log *.aux *sync*

.PHONY: clean
