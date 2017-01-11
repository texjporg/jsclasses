# jsclasses

Japanese classes, originally written by Haruhiko Okumura and maintained
by the Japanese TeX Development Community (https://texjp.org), including
jsarticle, jsbook, and miscellaneous classes and style files.

The classes themselves do not automatically enable the support of
Japanese language. You'll need to set up LaTeX environment appropriately
so that it can handle Japanese.

WWW: https://github.com/texjporg/jsclasses

In the above repository, we include the pre-generated cls/sty files to
ensure proper encoding. The files have to be in ISO-2022-JP encoding to
work properly on Windows. These files can be generated in a Japanese
locale by running platex on the .ins files, for example

    platex -kanji=jis jsclasses.ins

## Release Date

$RELEASEDATE

Haruhiko Okumura,
Japanese TeX Development Community
