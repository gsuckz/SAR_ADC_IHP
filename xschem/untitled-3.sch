v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 20 -40 40 {lab=c}
N -50 40 -40 40 {lab=c}
N -40 -10 -20 -10 {lab=c}
N -20 -10 -20 20 {lab=c}
N -40 20 -20 20 {lab=c}
N -40 -70 -40 -40 {lab=a}
N -50 -70 -40 -70 {lab=a}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -10 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -50 -70 0 0 {name=p2 lab=a}
C {ipin.sym} -80 -10 0 0 {name=p1 lab=b}
C {ipin.sym} -50 40 0 0 {name=p3 lab=c}
