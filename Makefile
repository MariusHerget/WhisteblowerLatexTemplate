TEMPLATENAME=template

.PHONY: all
all: pdftex

.PHONY: pdftex
pdftex: install
	pdflatex $(TEMPLATENAME).tex

.PHONY: install
install: installPDFPrivacy

.PHONY: installPDFPrivacy
installPDFPrivacy:
	@cd .TEX/Packages/pdfprivacy/&&latex pdfprivacy.ins
	@cp .TEX/Packages/pdfprivacy/pdfprivacy.sty ./.
