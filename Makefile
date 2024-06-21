.PHONY: ieee springer 
.DEFAULT: pdf
FILES = paper.md

OUTPUT = build

FLAGS = --bibliography=bibliography.bib \
		--pdf-engine=xelatex\
		--csl=templates/bibliography.csl \
		-s \
		-f markdown

FLAGS_PDF = --template=templates/template.latex

all: pdf

pdf: templates/template.latex
	pandoc  --citeproc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)
	pandoc  --citeproc -o $(OUTPUT)/paper.tex $(FLAGS) $(FLAGS_PDF) $(FILES)

templates/template.latex:
	@echo switching to ieee mode && cp templates/template.latex.ieee templates/template.latex

clean:
	rm build/*
resources.zip: clean pdf
	zip build/resources.zip build/*

docker-build: 
	docker build . -t nherbaut/pandoc-latex-ieee

docker-push:
	docker push nherbaut/pandoc-latex-ieee

docker: docker-build docker-push

ieee:	
	@echo switching to ieee mode && cp templates/template.latex.ieee templates/template.latex

springer:   
	@echo switching to springer mode && cp templates/template.latex.springer templates/template.latex
