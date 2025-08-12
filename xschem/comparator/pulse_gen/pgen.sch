v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -70 -200 -60 {lab=VDD}
N 170 -30 190 -30 {lab=VDD}
N 170 -90 170 -30 {lab=VDD}
N -200 -130 170 -130 {lab=VDD}
N 190 110 190 120 {lab=vx}
N -130 150 150 150 {lab=VSS}
N 410 250 410 260 {lab=VSS}
N 410 260 440 260 {lab=VSS}
N 410 230 440 230 {lab=VSS}
N 410 230 410 250 {lab=VSS}
N 150 250 410 250 {lab=VSS}
N 150 150 150 250 {lab=VSS}
N 190 110 440 110 {lab=vx}
N -200 -30 -180 -30 {lab=VDD}
N -180 -70 -180 -30 {lab=VDD}
N -200 -70 -180 -70 {lab=VDD}
N -200 -130 -200 -70 {lab=VDD}
N -210 120 -130 120 {lab=VSS}
N -130 120 -130 150 {lab=VSS}
N -220 150 -130 150 {lab=VSS}
N -210 90 -130 90 {lab=VSS}
N -210 90 -210 120 {lab=VSS}
N -310 90 -210 90 {lab=VSS}
N -200 60 -130 60 {lab=READY}
N -310 60 -200 60 {lab=READY}
N 190 0 190 110 {lab=vx}
N 190 -130 280 -130 {lab=VDD}
N 190 -130 190 -120 {lab=VDD}
N 170 -130 190 -130 {lab=VDD}
N 170 -90 190 -90 {lab=VDD}
N 170 -130 170 -90 {lab=VDD}
N 440 110 440 200 {lab=vx}
N 520 120 520 230 {lab=READY}
N 480 230 520 230 {lab=READY}
N 420 -30 470 -30 {lab=vxs}
N 230 -30 250 -30 {lab=#net1}
N 250 -60 250 -30 {lab=#net1}
N 250 -60 590 -60 {lab=#net1}
N 470 10 470 30 {lab=READY}
N 470 30 540 30 {lab=READY}
N 530 120 540 30 {lab=READY}
N 520 120 530 120 {lab=READY}
N 930 -80 930 -60 {lab=#net2}
N 930 -180 930 -160 {lab=#net3}
N 930 -280 930 -260 {lab=#net4}
N 930 -320 940 -320 {lab=VDD}
N 930 -350 940 -350 {lab=VDD}
N 930 -230 940 -230 {lab=VDD}
N 940 -320 940 -230 {lab=VDD}
N 940 -350 940 -320 {lab=VDD}
N 930 -130 940 -130 {lab=VSS}
N 940 -30 940 -0 {lab=VSS}
N 930 0 940 0 {lab=VSS}
N 930 -30 940 -30 {lab=VSS}
N 940 -130 940 -30 {lab=VSS}
N 890 -370 930 -350 {lab=VDD}
N 940 0 940 30 {lab=VSS}
N 940 30 950 50 {lab=VSS}
N 890 -320 890 -30 {lab=vx}
N 1120 -180 1190 -180 {lab=#net3}
N 930 -200 930 -180 {lab=#net3}
N 1120 -190 1120 -180 {lab=#net3}
N 930 -180 1120 -180 {lab=#net3}
N 1120 -180 1120 -160 {lab=#net3}
N 930 -280 1090 -280 {lab=#net4}
N 930 -290 930 -280 {lab=#net4}
N 1090 -280 1090 -230 {lab=#net4}
N 930 -80 1090 -80 {lab=#net2}
N 930 -100 930 -80 {lab=#net2}
N 1090 -120 1090 -80 {lab=#net2}
N 1120 -250 1120 -230 {lab=VSS}
N 1120 -250 1150 -250 {lab=VSS}
N 1150 -250 1150 -230 {lab=VSS}
N 1120 -120 1120 -100 {lab=VDD}
N 1120 -100 1150 -100 {lab=VDD}
N 1150 -120 1150 -100 {lab=VDD}
N 420 -30 420 60 {lab=vxs}
N 290 -30 420 -30 {lab=vxs}
N 530 120 790 120 {lab=READY}
N 790 120 790 180 {lab=READY}
N 780 180 790 180 {lab=READY}
N -200 -0 -200 60 {lab=READY}
N -470 120 -210 120 {lab=VSS}
N 590 -60 590 -10 {lab=#net1}
N -360 -30 -340 -30 {lab=VDD}
N -340 -60 -340 -30 {lab=VDD}
N -340 -60 -200 -60 {lab=VDD}
N -360 -60 -340 -60 {lab=VDD}
N -360 -0 -200 -0 {lab=READY}
C {sg13g2_pr/sg13_lv_nmos.sym} -330 90 0 0 {name=M1
l=0.13u
w=.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -220 -30 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -860 -80 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} -200 -130 0 0 {name=p3 sig_type=std_logic lab=VDD

}
C {iopin.sym} -90 90 0 0 {name=p4 lab=in2}
C {iopin.sym} -350 90 0 1 {name=p5 lab=in1}
C {lab_pin.sym} -240 -30 0 0 {name=p6 sig_type=std_logic lab=vx_n}
C {lab_pin.sym} -220 150 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {iopin.sym} -870 -10 0 0 {name=p9 lab=VSS}
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
C {iopin.sym} 230 -90 0 0 {name=p12 lab=VTUNE}
C {iopin.sym} 710 10 0 0 {name=p13 lab=PULSE_n}
C {lab_pin.sym} 780 180 0 0 {name=p14 sig_type=std_logic lab=READY}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 460 60 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 500 60 0 1 {name=p15 sig_type=std_logic lab=vx_n}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 90 0 1 {name=M3
l=0.13u
w=.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 230 0 1 {name=M5
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -90 0 1 {name=M7
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 190 60 0 0 {name=p7 sig_type=std_logic lab=vx}
C {sg13g2_pr/sg13_lv_pmos.sym} 910 -320 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -130 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 910 -230 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -30 0 0 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1120 -140 1 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1120 -210 3 0 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 890 -370 0 0 {name=p1 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 950 50 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1150 -100 0 1 {name=p16 sig_type=std_logic lab=VDD

}
C {lab_pin.sym} 1150 -240 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 -30 0 0 {name=p18 sig_type=std_logic lab=vxs}
C {lab_pin.sym} 1270 -180 0 1 {name=p19 sig_type=std_logic lab=vxs}
C {lab_pin.sym} 890 -200 0 0 {name=p20 sig_type=std_logic lab=vx}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1230 -180 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 590 30 0 1 {name=p21 lab=en}
C {sg13g2_stdcells/sg13g2_and2_2.sym} 650 10 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_pmos.sym} -380 -30 0 0 {name=M13
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -400 -30 0 0 {name=p22 sig_type=std_logic lab=en

}
