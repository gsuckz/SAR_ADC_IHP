v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -60 30 -60 {lab=v1}
N -260 0 30 -0 {lab=GND}
C {isource.sym} -40 -30 2 0 {name=I0 value="PULSE(0 1m 0 10p 10p 1n 4n)"}
C {res.sym} 30 -30 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 30 0 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -40 -60 0 0 {name=p1 sig_type=std_logic lab=v1}
C {code_shown.sym} 80 -80 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
*.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

tran 1p 40n

* Plotting
plot v1

.endc"}
C {isource.sym} -260 -30 0 1 {name=I1 value="PULSE(0 1m 2n 10p 10p 1n 4n)"}
