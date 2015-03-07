.PHONY: all clean cleanall dissertation.pdf synopsis.pdf

all: dissertation.pdf synopsis.pdf

dissertation.pdf:
	$(MAKE) -C Dissertation -B

synopsis.pdf:
	$(MAKE) -C Synopsis -B

clean:
	$(MAKE) -C Dissertation clean
	$(MAKE) -C Synopsis clean

cleanall:
	rm -f dissertation.pdf synopsis.pdf
	$(MAKE) -C Dissertation cleanall
	$(MAKE) -C Synopsis cleanall
