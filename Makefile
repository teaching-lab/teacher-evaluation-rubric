TEXS=$(wildcard *.tex)
PDFS=$(TEXS:.tex=.pdf)

all: ${PDFS}

%.pdf : %.tex
	texfot latexmk -pdf $<

# Generate (manual)
# for name in `cat names.txt`; do echo "Processing "$name; cp rubric.tex $name.tex; sed -i "s/Martin/$name/g" $name.tex; done