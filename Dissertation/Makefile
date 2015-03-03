.PHONY: diploma.pdf all clean

all: dissertation.pdf

# %.tex: %.raw
#         ./raw2tex $< > $@

# %.tex: %.dat
#         ./dat2tex $< > $@

%.pdf: %.tex
	latexmk -xelatex -use-make $<
	open $@

clean:
	latexmk -c

cleanall:
	latexmk -CA