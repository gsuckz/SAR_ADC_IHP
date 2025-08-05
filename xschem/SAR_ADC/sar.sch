v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -60 90 120 {lab=compout}
N -190 120 90 120 {lab=compout}
N -460 -340 -460 -210 {lab=vcm}
N -700 50 -700 100 {lab=b11}
N -680 50 -680 100 {lab=b10}
N -660 50 -660 100 {lab=b9}
N -640 50 -640 100 {lab=b8}
N -620 50 -620 100 {lab=b7}
N -600 50 -600 100 {lab=b6}
N -580 50 -580 100 {lab=b5}
N -560 50 -560 100 {lab=b4}
N -540 50 -540 100 {lab=b3}
N -520 50 -520 100 {lab=b2}
N -500 50 -500 100 {lab=b1}
N -480 50 -480 100 {lab=b0}
N -190 -80 -150 -80 {lab=compp}
N -190 -90 -190 -80 {lab=compp}
N -190 -40 -150 -40 {lab=compn}
N -190 -40 -190 -30 {lab=compn}
N -730 210 -730 350 {lab=comp_clk}
N -730 350 200 350 {lab=comp_clk}
N 200 -130 200 350 {lab=comp_clk}
N 140 -130 200 -130 {lab=comp_clk}
N -460 -10 -460 50 {lab=sample}
N -460 -340 -390 -340 {lab=vcm}
N -460 -470 -460 -340 {lab=vcm}
N -440 -280 -390 -280 {lab=VSS}
N -440 -280 -440 -210 {lab=VSS}
C {comparator/discrete_time/DT_comparator.sym} -30 -60 0 0 {name=x1}
C {dac_icms_cell/dac.sym} -870 -610 0 0 {name=x2 cu=10f}
C {logic/logic.sym} -870 710 2 1 {name=x3 }
C {ipin.sym} -730 -90 0 0 {name=p1 lab=vinp}
C {iopin.sym} -480 -210 0 1 {name=p5 lab=VDD}
C {opin.sym} -700 100 1 0 {name=p2 lab=b11}
C {ipin.sym} -730 -30 0 0 {name=p3 lab=vinn}
C {ipin.sym} 30 20 0 0 {name=p4 lab=clk}
C {iopin.sym} -440 -210 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} -480 310 0 0 {name=p7 lab=VDD}
C {lab_pin.sym} -440 310 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} -90 -140 0 0 {name=p11 lab=VDD}
C {lab_pin.sym} -90 20 0 0 {name=p9 lab=VSS}
C {opin.sym} -680 100 1 0 {name=p12 lab=b10}
C {opin.sym} -660 100 1 0 {name=p13 lab=b9}
C {opin.sym} -640 100 1 0 {name=p14 lab=b8}
C {opin.sym} -620 100 1 0 {name=p15 lab=b7}
C {opin.sym} -600 100 1 0 {name=p16 lab=b6}
C {opin.sym} -580 100 1 0 {name=p17 lab=b5}
C {opin.sym} -560 100 1 0 {name=p18 lab=b4}
C {opin.sym} -540 100 1 0 {name=p19 lab=b3}
C {opin.sym} -520 100 1 0 {name=p20 lab=b2}
C {opin.sym} -500 100 1 0 {name=p21 lab=b1}
C {opin.sym} -480 100 1 0 {name=p22 lab=b0}
C {opin.sym} -190 -90 3 0 {name=p23 lab=compp}
C {opin.sym} -190 -30 1 0 {name=p24 lab=compn}
C {opin.sym} 60 120 1 0 {name=p25 lab=compout}
C {opin.sym} -190 190 0 0 {name=p26 lab=eoc}
C {ipin.sym} -730 160 0 0 {name=p27 lab=rst}
C {lab_pin.sym} -440 50 1 0 {name=p30 lab=d11}
C {lab_pin.sym} -420 50 1 0 {name=p31 lab=d10}
C {lab_pin.sym} -400 50 1 0 {name=p32 lab=d9}
C {lab_pin.sym} -380 50 1 0 {name=p33 lab=d8}
C {lab_pin.sym} -360 50 1 0 {name=p34 lab=d7}
C {lab_pin.sym} -340 50 1 0 {name=p35 lab=d6}
C {lab_pin.sym} -320 50 1 0 {name=p36 lab=d5}
C {lab_pin.sym} -300 50 1 0 {name=p37 lab=d4}
C {lab_pin.sym} -280 50 1 0 {name=p38 lab=d3}
C {lab_pin.sym} -260 50 1 0 {name=p39 lab=d2}
C {lab_pin.sym} -240 50 1 0 {name=p40 lab=d1}
C {lab_pin.sym} -220 50 1 0 {name=p41 lab=d0}
C {lab_pin.sym} -460 -10 1 0 {name=p29 lab=sample}
C {lab_pin.sym} -460 -470 1 0 {name=p42 lab=vcm}
C {vsource.sym} -390 -310 0 0 {name=V1 value=0.9 savecurrent=false}
C {lab_pin.sym} 200 85 0 1 {name=p10 lab=comp_clk}
