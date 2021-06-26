# Makefile for the Haskell tutorial
# For whatever reason you might have explicitly make verbatim first.

RM = rm -f
LATEX=latex
RUNHUGS=~/local/bin/runhugs98

.SUFFIXES:	.verb .tex .dvi .ps

.verb.tex:	verbatim
	expand < $< | ./verbatim >$@

.tex.dvi:
	$(LATEX) $<

.dvi.ps:
	dvips -o $*.ps $<

haskell-tutorial.ps: haskell-tutorial.dvi

haskell-tutorial.dvi: verbatim haskell-tutorial.tex intro.tex goodies.tex \
                        functions.tex \
			patterns.tex classes.tex moretypes.tex io.tex \
			stdclasses.tex monads.tex numbers.tex \
			modules.tex pitfalls.tex arrays.tex end.tex

verbatim:       verbatim.lex
	lex verbatim.lex
	cc lex.yy.c -lfl -o verbatim
	rm lex.yy.c
