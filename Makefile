# LATEX	= latex -shell-escape
# BIBTEX	= bibtex
# DVIPS	= dvips
# DVIPDF  = dvipdft
# XDVI	= xdvi -gamma 4
# GH		= gv

# EXAMPLES = $(wildcard *.h)
# SRC	:= $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex)
# TRG	= $(SRC:%.tex=%.dvi)
# PSF	= $(SRC:%.tex=%.ps)
# PDF	= $(SRC:%.tex=%.pdf)

# pdf: $(PDF)

# ps: $(PSF)

# $(TRG): %.dvi: %.tex *.bib $(EXAMPLES)
# 	$(LATEX) $<
# 	$(BIBTEX) $(<:%.tex=%)
# 	$(LATEX) $<
# 	$(LATEX) $<

# $(PSF):%.ps: %.dvi
# 		$(DVIPS) -R -Poutline -t letter $< -o $@

# $(PDF): %.pdf: %.ps
# # 	$(DVIPDF) -o $@ $<
# 	ps2pdf $<

# show: $(TRG)
# 	@for i in $(TRG) ; do $(XDVI) $$i & done

# showps: $(PSF)
# 	@for i in $(PSF) ; do $(GH) $$i & done

# all: pdf
all:
	pdflatex problem_statement.tex
	bibtex problem_statement.aux
	pdflatex problem_statement.tex
	pdflatex problem_statement.tex

clean:
	rm -f *.pdf *.ps *.dvi *.out *.log *.aux *.bbl *.blg *.pyg

.PHONY: all show clean ps pdf showps
