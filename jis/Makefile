STRIPTARGET = jsarticle.cls jslogo.sty okumacro.sty jsverb.sty okuverb.sty morisawa.sty
PDFTARGET = jsclasses.pdf jslogo.pdf okumacro.pdf jsverb.pdf okuverb.pdf morisawa.pdf
DVITARGET = jsclasses.dvi jslogo.dvi okumacro.dvi jsverb.dvi okuverb.dvi morisawa.dvi
KANJI = -kanji=jis
FONTMAP = -f ipaex.map -f ptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

default: $(STRIPTARGET) $(DVITARGET)
strip: $(STRIPTARGET)
all: $(STRIPTARGET) $(PDFTARGET)

jsarticle.cls: jsclasses.dtx
	platex $(KANJI) jsclasses.ins

jslogo.sty: jslogo.dtx
	platex $(KANJI) jslogo.ins

okumacro.sty: okumacro.dtx
	platex $(KANJI) okumacro.ins

jsverb.sty: jsverb.dtx
	platex $(KANJI) jsverb.ins

okuverb.sty: okuverb.dtx
	platex $(KANJI) okuverb.ins

morisawa.sty: morisawa.dtx
	platex $(KANJI) morisawa.ins

.SUFFIXES: .dtx .dvi .pdf
.dtx.dvi:
	platex $(KANJI) $<
	platex $(KANJI) $<
.dvi.pdf:
	dvipdfmx $(FONTMAP) $<

.PHONY: install clean cleanstrip cleanall cleandoc
install:
	mkdir -p ${TEXMF}/doc/platex/jsclasses
	cp ./LICENSE ${TEXMF}/doc/platex/jsclasses/
	cp ./README.md ${TEXMF}/doc/platex/jsclasses/
	cp ./*.pdf ${TEXMF}/doc/platex/jsclasses/
	mkdir -p ${TEXMF}/source/platex/jsclasses
	cp ./Makefile ${TEXMF}/source/platex/jsclasses/
	cp ./*.dtx ${TEXMF}/source/platex/jsclasses/
	cp ./*.ins ${TEXMF}/source/platex/jsclasses/
	mkdir -p ${TEXMF}/tex/platex/jsclasses
	cp ./*.cls ${TEXMF}/tex/platex/jsclasses/
	cp ./*.sty ${TEXMF}/tex/platex/jsclasses/
clean:
	rm -f *.cls \
	jslogo.sty okumacro.sty jsverb.sty okuverb.sty morisawa.sty \
	$(DVITARGET)
cleanstrip:
	rm -f *.cls \
	jslogo.sty okumacro.sty jsverb.sty okuverb.sty morisawa.sty
cleanall:
	rm -f *.cls \
	jslogo.sty okumacro.sty jsverb.sty okuverb.sty morisawa.sty \
	$(DVITARGET) $(PDFTARGET)
cleandoc:
	rm -f $(DVITARGET) $(PDFTARGET)
