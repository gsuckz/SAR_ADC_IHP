v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 1 260 -7 269 -7 {}
L 1 265 -7 269 -7 {}
L 1 261 8 265 -7 {}
L 1 257 8 261 8 {}
L 1 190 0 231 0 {}
L 1 256 8 260 -7 {}
L 1 310 -30 420 -30 {}
L 1 310 -30 310 -0 {}
L 4 250 -20 250 20 {}
L 4 250 -20 290 0 {}
L 4 250 20 290 0 {}
L 4 290 0 310 0 {}
L 4 230 0 250 0 {}
T {A} 235 -14 0 0 0.2 0.2 {}
T {Y} 305 -14 0 1 0.2 0.2 {}
T {@name} 272.5 15 0 0 0.2 0.2 {}
N 170 -30 190 -30 {lab=VDD}
N 170 -90 170 -30 {lab=VDD}
N -200 -130 170 -130 {lab=VDD}
N -200 -130 -200 -60 {lab=VDD}
N -130 140 -130 150 {lab=VSS}
N -180 90 -130 90 {lab=VSS}
N -200 60 -130 60 {lab=READY}
N 190 -130 190 -120 {lab=VDD}
N 170 -130 190 -130 {lab=VDD}
N 170 -90 200 -90 {lab=VDD}
N 170 -130 170 -90 {lab=VDD}
N 230 -30 250 -30 {lab=#net1}
N 250 -60 250 -30 {lab=#net1}
N 250 -60 590 -60 {lab=#net1}
N -39 468 -39 488 {lab=#net2}
N -39 368 -39 388 {lab=#net3}
N -39 268 -39 288 {lab=#net4}
N -39 228 -29 228 {lab=VDD}
N -39 198 -29 198 {lab=VDD}
N -39 318 -29 318 {lab=VDD}
N -29 228 -29 318 {lab=VDD}
N -29 198 -29 228 {lab=VDD}
N -39 418 -29 418 {lab=VSS}
N -29 518 -29 548 {lab=VSS}
N -39 548 -29 548 {lab=VSS}
N -39 518 -29 518 {lab=VSS}
N -29 418 -29 518 {lab=VSS}
N -79 228 -79 518 {lab=vx}
N 151 368 221 368 {lab=#net3}
N -39 348 -39 368 {lab=#net3}
N 151 358 151 368 {lab=#net3}
N -39 368 151 368 {lab=#net3}
N 151 368 151 388 {lab=#net3}
N -39 268 121 268 {lab=#net4}
N -39 258 -39 268 {lab=#net4}
N 121 268 121 318 {lab=#net4}
N -39 468 121 468 {lab=#net2}
N -39 448 -39 468 {lab=#net2}
N 121 428 121 468 {lab=#net2}
N 151 298 151 318 {lab=VSS}
N 151 298 181 298 {lab=VSS}
N 181 298 181 318 {lab=VSS}
N 151 428 151 448 {lab=VDD}
N 151 448 181 448 {lab=VDD}
N 181 428 181 448 {lab=VDD}
N -200 -0 -200 60 {lab=READY}
N 590 -60 590 -10 {lab=#net1}
N -360 -30 -300 -30 {lab=VDD}
N -260 -60 -200 -60 {lab=VDD}
N -300 -60 -260 -60 {lab=VDD}
N -360 -0 -200 -0 {lab=READY}
N -260 -30 -200 -30 {lab=VDD}
N -260 -60 -260 -30 {lab=VDD}
N -300 -60 -300 -30 {lab=VDD}
N -360 -60 -300 -60 {lab=VDD}
N -120 -30 -80 -30 {lab=vx_n}
N -120 -70 -120 -30 {lab=vx_n}
N -160 -30 -120 -30 {lab=vx_n}
N -310 60 -200 60 {lab=READY}
N 360 50 360 70 {lab=vx}
N 190 50 360 50 {lab=vx}
N 190 0 190 50 {lab=vx}
N 320 100 360 100 {lab=VSS}
N 320 100 320 140 {lab=VSS}
N -130 120 -130 140 {lab=VSS}
N 360 130 360 140 {lab=VSS}
N 320 140 360 140 {lab=VSS}
N -130 140 320 140 {lab=VSS}
N -39 168 -39 198 {lab=VDD}
N -29 548 -29 598 {lab=VSS}
N 410 10 470 10 {lab=READY}
N 410 10 410 100 {lab=READY}
N 400 100 410 100 {lab=READY}
N -310 120 -310 140 {lab=VSS}
N -180 140 -130 140 {lab=VSS}
N -260 90 -260 140 {lab=VSS}
N -310 90 -260 90 {lab=VSS}
N -310 140 -260 140 {lab=VSS}
N -180 90 -180 140 {lab=VSS}
N -260 140 -180 140 {lab=VSS}
N 415 -47 415 -30 {lab=vxs}
N 240 -90 250 -90 {lab=VTUNE}
N 190 -120 200 -120 {lab=VDD}
N 415 -30 470 -30 {lab=vxs}
N 410 -30 415 -30 {lab=vxs}
N 190 -60 200 -60 {lab=#net5}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 90 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -180 -30 0 1 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -200 -130 0 1 {name=p2 lab=VDD}
C {iopin.sym} -90 90 0 0 {name=p4 lab=in2}
C {iopin.sym} -350 90 0 1 {name=p5 lab=in1}
C {lab_pin.sym} -120 -70 0 0 {name=p6 sig_type=std_logic lab=vx_n}
C {iopin.sym} -130 150 0 1 {name=p9 lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -30 0 1 {name=M4
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -200 20 0 1 {name=p10 sig_type=std_logic lab=READY}
C {sg13g2_stdcells/sg13g2_or2_2.sym} 530 -10 0 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 250 -90 0 0 {name=p12 lab=VTUNE}
C {iopin.sym} 710 10 0 0 {name=p13 lab=PULSE_n}
C {lab_pin.sym} 410 10 0 0 {name=p14 sig_type=std_logic lab=READY}
C {sg13g2_stdcells/sg13g2_inv_2.sym} -40 -30 0 1 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} -110 90 0 1 {name=M3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 100 0 1 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -90 0 1 {name=M7
l=0.5u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 190 50 0 0 {name=p7 sig_type=std_logic lab=vx}
C {sg13g2_pr/sg13_lv_pmos.sym} -59 228 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -59 418 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -59 318 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -59 518 0 0 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 151 408 1 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 151 338 3 0 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -39 168 0 0 {name=p1 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} -29 598 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 181 448 0 1 {name=p16 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 181 308 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 415 -47 0 0 {name=p18 sig_type=std_logic lab=vxs}
C {lab_pin.sym} 301 368 0 1 {name=p19 sig_type=std_logic lab=vxs}
C {lab_pin.sym} -79 348 0 0 {name=p20 sig_type=std_logic lab=vx}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 261 368 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 590 30 0 1 {name=p21 lab=en}
C {sg13g2_stdcells/sg13g2_and2_2.sym} 650 10 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -400 -30 0 0 {name=p22 sig_type=std_logic lab=en

}
C {sg13g2_pr/sg13_lv_pmos.sym} -380 -30 0 0 {name=M14
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 0 -30 0 1 {name=p15 sig_type=std_logic lab=vxs}
