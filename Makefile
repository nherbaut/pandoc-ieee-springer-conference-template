FILES = paper.md

OUTPUT = build

FLAGS = --bibliography=bibliography.bib \
		--pdf-engine=xelatex\
		--csl=templates/bibliography.csl \
		-s \
		-f markdown

FLAGS_PDF = --template=templates/template.latex

all: pdf

pdf:
	pandoc  --citeproc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)
	pandoc  --citeproc -o $(OUTPUT)/paper.tex $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*
resources.zip: clean pdf
	zip build/resources.zip build/*
	
