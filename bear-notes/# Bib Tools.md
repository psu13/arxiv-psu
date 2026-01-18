# # Bib Tools

doi2bib - general doi things. mostly look up bibtex based on DOI
g2 - google scholar title lookup. seems broken right now.
bibcure - .bib file cleanup

doi2bibcure - run doi2bib, push through bibcure to fix some things.
d2c - run doi2bibcure, but result on pb
d2 - not used. does d2c without the clipboard.

a2p - makes sanitized LaTeX links for d2a
d2a - doi or arxiv id to bibtex. also runs output through bibcure
	- first arg is a doi link, second arg is an arxiv ID.
	- so puts an arxiv link into the bibtex of a paywall journal paper that is also free
a2.py - uses d2a above or makes its own default entry
	- if the arxiv paper also has a journal version get that doi
	  and send it to d2a above.
a2c - uses a2.py then does some edits

#things
#math
