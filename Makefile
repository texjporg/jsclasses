all: jsarticle.cls okumacro.sty jsverb.sty morisawa.sty jslogo.sty \
	jsclasses.pdf okumacro.pdf jsverb.pdf morisawa.pdf jslogo.pdf

jsarticle.cls: jsclasses.dtx
	platex --kanji=jis jsclasses.ins

okumacro.sty: okumacro.dtx
	platex --kanji=jis okumacro.ins

jsverb.sty: jsverb.dtx
	platex --kanji=jis jsverb.ins

morisawa.sty: morisawa.dtx
	platex --kanji=jis morisawa.ins

jslogo.sty: jslogo.dtx
	platex --kanji=jis jslogo.ins

jsclasses.pdf: jsclasses.dtx
	ptex2pdf -l -ot --kanji=jis jsclasses.dtx

okumacro.pdf: okumacro.dtx
	ptex2pdf -l -ot --kanji=jis okumacro.dtx

jsverb.pdf: jsverb.dtx
	ptex2pdf -l -ot --kanji=jis jsverb.dtx

morisawa.pdf: morisawa.dtx
	ptex2pdf -l -ot --kanji=jis morisawa.dtx

jslogo.pdf: jslogo.dtx
	ptex2pdf -l -ot --kanji=jis jslogo.dtx
