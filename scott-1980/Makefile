L=/Users/psu/Google/Reader/Math and Physics/Maths/Cons & Logic
T=/Users/psu/Google/Reader/Math and Physics/Types, etc

all: scott-main.tex
	pdflatex scott-1980.tex
	pdflatex scott-1980.tex
	pdflatex scott-1980.tex
	pdflatex scott-1980-cmr.tex
	pdflatex scott-1980-cmr.tex
	pdflatex scott-1980-cmr.tex
	pdflatex scott-1980-pal.tex
	pdflatex scott-1980-pal.tex
	pdflatex scott-1980-pal.tex
	pdflatex scott-1980-pal-eu.tex
	pdflatex scott-1980-pal-eu.tex
	pdflatex scott-1980-pal-eu.tex
	lualatex scott-1980-ch.tex
	lualatex scott-1980-ch.tex
	lualatex scott-1980-ch.tex
	cp scott-1980-pal.pdf "$(L)/Scott, D - Relating Theories of the λ-Calculus (1980,psu).pdf"
	cp scott-1980-cmr.pdf "$(L)/Scott, D - Relating Theories of the λ-Calculus (1980,cmr).pdf"
	cp scott-1980-ch.pdf "$(L)/Scott, D - Relating Theories of the λ-Calculus (1980,ch).pdf"
	cp scott-1980-pal-eu.pdf "$(L)/Scott, D - Relating Theories of the λ-Calculus (1980,eu).pdf"
	cp scott-1980-pal.pdf "$(T)/Scott, D - Relating Theories of the λ-Calculus (1980,psu).pdf"
	cp scott-1980-cmr.pdf "$(T)/Scott, D - Relating Theories of the λ-Calculus (1980,cmr).pdf"
	cp scott-1980-ch.pdf "$(T)/Scott, D - Relating Theories of the λ-Calculus (1980,ch).pdf"
	cp scott-1980-pal-eu.pdf "$(T)/Scott, D - Relating Theories of the λ-Calculus (1980,eu).pdf"

clean:
	rm -rf *.out *.log *.aux *sync*

.PHONY: clean
