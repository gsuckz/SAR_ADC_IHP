v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 345 -205 375 -205 {lab=v1}
N 250 -145 565 -145 {lab=GND}
N 345 -240 345 -205 {lab=v1}
N 250 -205 345 -205 {lab=v1}
N 525 -205 565 -205 {lab=eoc}
N 525 -240 525 -205 {lab=eoc}
N 490 -205 525 -205 {lab=eoc}
C {simulator_commands_shown.sym} -20 -285 0 0 {name=SimulatorNGSPICE
simulator=ngspice
only_toplevel=false 
value="
*.include pruebaSim.save
.param temp=27
.param V=1
.control
alterparam V=\{$valor * 1m\}
reset

tran 1p 5n

print \{$valor\}
print  i(V1) v(V1)

meas tran med find v1 when eoc=1 
meas tran med2 find i(v1) when eoc=1
print med med2 > "./out/sim\{$valor\}.txt"


.endc
"}
C {vsource.sym} 250 -175 0 0 {name=V1 value=\{V\} savecurrent=false}
C {gnd.sym} 250 -145 0 0 {name=l1 lab=GND}
C {res.sym} 375 -175 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 345 -240 0 0 {name=p1 sig_type=std_logic lab=v1}
C {vsource.sym} 490 -175 0 0 {name=V2 value="PULSE(0 1 0 10p 10p 1n 2n)" savecurrent=false}
C {res.sym} 565 -175 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 525 -240 0 0 {name=p2 sig_type=std_logic lab=eoc}
