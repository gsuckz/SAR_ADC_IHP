N = 128

OUTPUTS = $(foreach n,$(shell seq 1 $(N))),sim$(n).txt

all: $(OUTPUTS)
sim%.txt: plantillaPrueba.spice
	ngspice -b --define valor=$* plantillaPrueba.spice
clean:
	rm -f sim*.txt