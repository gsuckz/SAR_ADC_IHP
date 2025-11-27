#!/bin/bash
for n in $(seq 1 100); do
	echo "Ejecutando dim $n"
	ngspice -b -define valor=$n plantillaPrueba.spice
done