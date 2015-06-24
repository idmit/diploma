TARGET   = build/presentation.pdf
TARGET_SRC = $(patsubst $(BUILDDIR)/%.pdf, $(SRCDIR)/%.tex, $(TARGET))
SRCDIR   = .
BUILDDIR = build

.PHONY: destdir all clean cleanall

all: $(TARGET)

OBJECTS = $(wildcard $(SRCDIR)/*.tex)

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): destdir $(OBJECTS)
	latexmk -xelatex -outdir=$(BUILDDIR) -use-make $(TARGET_SRC)

destdir:
	mkdir -p ./$(BUILDDIR)

clean:
	latexmk -outdir=$(BUILDDIR) -c

cleanall:
	latexmk -outdir=$(BUILDDIR) -CA
