.PHONY: all clean cleanall

all: build/synopsis.pdf

build/%.pdf: %.tex
	latexmk -xelatex -outdir=build -use-make $<
	cp $@ ../$%
	open $@

clean:
	latexmk -outdir=build -c

cleanall:
	latexmk -outdir=build -CA
