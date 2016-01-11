all: jsarticle.cls okumacro.sty jsverb.sty morisawa.sty

jsarticle.cls: jsclasses.dtx
	platex --kanji=jis jsclasses.ins

okumacro.sty: okumacro.dtx
	platex --kanji=jis okumacro.ins

jsverb.sty: jsverb.dtx
	platex --kanji=jis jsverb.ins

morisawa.sty: morisawa.dtx
	platex --kanji=jis morisawa.ins
