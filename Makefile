STRIPTARGET = jsarticle.cls okumacro.sty jsverb.sty okuverb.sty morisawa.sty jslogo.sty
PDFTARGET = jsclasses.pdf okumacro.pdf jsverb.pdf okuverb.pdf morisawa.pdf jslogo.pdf
DVOTARGET = jsclasses.dvi okumacro.dvi jsverb.dvi okuverb.dvi morisawa.dvi jslogo.dvi
KANJI = --kanji=jis

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
	dvipdfmx $<

.PHONY: clean
clean:
	rm -f \
	*.cls jslogo.sty okumacro.sty jsverb.sty okuverb.sty morisawa.sty \
	jsclasses.pdf okumacro.pdf jsverb.pdf okuverb.pdf morisawa.pdf jslogo.pdf
