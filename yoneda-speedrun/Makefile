DISK=/Users/psu/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents/Math and Physics/More Math/Cats

all: 
	pdflatex --synctex=1 yoneda-speedrun.tex
	pdflatex --synctex=1 yoneda-speedrun.tex
	pdflatex --synctex=1 yoneda-speedrun.tex

	pdflatex --synctex=1 yoneda-speedrun-pal.tex
	pdflatex --synctex=1 yoneda-speedrun-pal.tex
	pdflatex --synctex=1 yoneda-speedrun-pal.tex


	pdflatex --synctex=1 yoneda-speedrun-pal-eu.tex
	pdflatex --synctex=1 yoneda-speedrun-pal-eu.tex
	pdflatex --synctex=1 yoneda-speedrun-pal-eu.tex

	pdflatex --synctex=1 yoneda-speedrun-lucida.tex
	pdflatex --synctex=1 yoneda-speedrun-lucida.tex
	pdflatex --synctex=1 yoneda-speedrun-lucida.tex

	cp yoneda-speedrun.pdf "$(DISK)/yoneda-speedrun.pdf"
	
	cp yoneda-speedrun-pal.pdf "$(DISK)/yoneda-speedrun-pal.pdf"
	
	cp yoneda-speedrun-pal-eu.pdf "$(DISK)/yoneda-speedrun-pal-eu.pdf"
	
	cp yoneda-speedrun-lucida.pdf "$(DISK)/yoneda-speedrun-lucida.pdf"
	
clean:
	rm -rf *.out *.log *.aux *sync*

.PHONY: clean
