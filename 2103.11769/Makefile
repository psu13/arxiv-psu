# $Id: Makefile 87305 2016-02-08 13:50:32Z lafferty $
# ===============================================================================
# Purpose: simple Makefile to streamline processing latex document (just say "make" to execute)
# Author: Tomasz Skwarnicki
# Created on: 2010-09-24
# A few changes by Patrick Koppenburg on 2015-06-26
# ===============================================================================

# name of the main latex file (do not include .tex)
MAIN = main

# name of the target - change that to something descriptive, like paper-v0, Bs2PhiPhi-ANA-v1, etc...
TARGET = template

# name of command to perform Latex (either pdflatex or latex)
LATEX = pdflatex

ifeq ($(LATEX),pdflatex)
	FIGEXT = .pdf
	MAINEXT= .pdf
	BUILDCOMMAND=rm -f $(MAIN).aux && $(LATEX) $(MAIN) && bibtex $(MAIN) && $(LATEX) $(MAIN) && $(LATEX) $(MAIN)
	BUILDCOMMANDPRL=rm -f $(MAIN)-prl.aux && $(LATEX) $(MAIN)-prl && bibtex $(MAIN)-prl && $(LATEX) $(MAIN)-prl && $(LATEX) $(MAIN)-prl
	MAKEMAINCOUNT= sed 's\#{wordcount}{false}\#{wordcount}{true}\#' main-prl.tex > main-count.tex
	BUILDCOMMANDCOUNT= $(MAKEMAINCOUNT) && rm -f $(MAIN)-count.aux && $(LATEX) $(MAIN)-count && bibtex $(MAIN)-count >/dev/null; true && $(LATEX) $(MAIN)-count && ./wordcount.sh $(MAIN)-count && rm wordcount.pdf main-count* 
else
	FIGEXT = .eps
	MAINEXT= .pdf
	BUILDCOMMAND=rm -f $(MAIN).aux && $(LATEX) $(MAIN) && bibtex $(MAIN) && $(LATEX) $(MAIN) && $(LATEX) $(MAIN) && dvips -z -o $(MAIN).ps $(MAIN) && ps2pdf $(MAIN).ps && rm -f head.tmp body.tmp
	BUILDCOMMANDPRL=rm -f $(MAIN)-prl.aux && $(LATEX) $(MAIN)-prl && bibtex $(MAIN)-prl && $(LATEX) $(MAIN)-prl && $(LATEX) $(MAIN)-prl && dvips -z -o $(MAIN)-prl.ps $(MAIN)-prl && ps2pdf $(MAIN)-prl.ps && rm -f head.tmp body.tmp
	BUILDCOMMANDCOUNT=
endif

# list of all source files
TEXSOURCES = $(wildcard *.tex) $(wildcard *.bib)
FIGSOURCES = $(wildcard figs/*$(FIGEXT))
SOURCES    = $(TEXSOURCES) $(FIGSOURCES)

# define output (could be making .ps instead)
OUTPUT = $(TARGET)$(MAINEXT)

# cp temporary main.pdf to target.
$(OUTPUT): $(MAIN)$(MAINEXT)
	cp $(MAIN)$(MAINEXT) $(OUTPUT)

# prescription how to make output (your favorite commands to process latex)
# do latex twice to make sure that all cross-references are updated 
$(MAIN)$(MAINEXT): $(SOURCES) Makefile
	$(BUILDCOMMAND)

# just so we can say "make all" without knowing the output name
all: $(OUTPUT)

# remove temporary files (good idea to say "make clean" before putting things back into repository)
.PHONY : clean
clean:
	rm -f *~ *.aux *.log *.bbl *.blg *.dvi *.tmp *.out *.blg *.bbl $(OUTPUT) $(MAIN)$(MAINEXT) $(MAIN).ps $(MAIN)-prl.ps $(MAIN)-prlNotes.bib

# remove output file
rmout: 
	rm $(OUTPUT) $(MAIN)$(MAINEXT)

# Make the PRL version
prl: 
	$(BUILDCOMMANDPRL)

# Make the PRL version
count: 
	$(BUILDCOMMANDCOUNT)
	@echo ''
	@echo 'Figures:   Add 20+150/(aspect ratio) per figure'
	@echo 'Equations: Add 16 words per row (single column) '
	@echo 'Tables:    Add 13 words plus 6.5 words per line (single column)'
	@echo 
