.PHONY: all clean cleanall

all: dissertation.pdf synopsis.pdf

dissertation.pdf:
	$(MAKE) -C Dissertation

synopsis.pdf:
	$(MAKE) -C Synopsis

clean:
	$(MAKE) -C Dissertation clean
	$(MAKE) -C Synopsis clean

cleanall:
	$(MAKE) -C Dissertation cleanall
	$(MAKE) -C Synopsis cleanall
