v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
C {dac_icms_cell/dac.sym} -500 590 2 1 {name=x3 cu=20f}
C {lab_pin.sym} -330 -70 1 0 {name=p2 lab=b11}
C {lab_pin.sym} -110 190 0 0 {name=p7 lab=VDD}
C {lab_pin.sym} 180 10 0 1 {name=p10 lab=vdacp}
C {lab_pin.sym} -310 -70 1 0 {name=p12 lab=b10}
C {lab_pin.sym} -290 -70 1 0 {name=p13 lab=b9}
C {lab_pin.sym} -270 -70 1 0 {name=p14 lab=b8}
C {lab_pin.sym} -250 -70 1 0 {name=p15 lab=b7}
C {lab_pin.sym} -230 -70 1 0 {name=p16 lab=b6}
C {lab_pin.sym} -210 -70 1 0 {name=p17 lab=b5}
C {lab_pin.sym} -190 -70 1 0 {name=p18 lab=b4}
C {lab_pin.sym} -170 -70 1 0 {name=p19 lab=b3}
C {lab_pin.sym} -150 -70 1 0 {name=p20 lab=b2}
C {lab_pin.sym} -130 -70 1 0 {name=p21 lab=b1}
C {lab_pin.sym} -110 -70 1 0 {name=p22 lab=b0}
C {lab_pin.sym} -70 -70 1 0 {name=p30 lab=d11}
C {lab_pin.sym} -50 -70 1 0 {name=p31 lab=d10}
C {lab_pin.sym} -30 -70 1 0 {name=p32 lab=d9}
C {lab_pin.sym} -10 -70 1 0 {name=p33 lab=d8}
C {lab_pin.sym} 10 -70 1 0 {name=p34 lab=d7}
C {lab_pin.sym} 30 -70 1 0 {name=p35 lab=d6}
C {lab_pin.sym} 50 -70 1 0 {name=p36 lab=d5}
C {lab_pin.sym} 70 -70 1 0 {name=p37 lab=d4}
C {lab_pin.sym} 90 -70 1 0 {name=p38 lab=d3}
C {lab_pin.sym} 110 -70 1 0 {name=p39 lab=d2}
C {lab_pin.sym} 130 -70 1 0 {name=p40 lab=d1}
C {lab_pin.sym} 150 -70 1 0 {name=p41 lab=d0}
C {lab_pin.sym} -90 -70 1 0 {name=p1 lab=sample}
C {devices/code_shown.sym} -1580 -30 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Transient Analysis
tran 10p 200n

plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\}
plot \{b0\} \{b1 + 4\} \{b2 + 8\} \{b3 + 12\} \{b4 + 16\} \{b5 + 20\} \{b6 + 24\} \{b7 + 28\} \{b8 + 32\} \{b9 + 36\} \{b10 + 40\} \{b11 + 44\}
plot \{clk\} \{comp_in + 2\} \{sample + 4\}
plot vdacp vdacn
plot \{vdacp-vdacn\}

.endc
"}
C {vsource.sym} -90 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -90 -330 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} -90 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 55 -330 0 1 {name=p6 sig_type=std_logic lab=clk
}
C {gnd.sym} -70 190 0 0 {name=l2 lab=GND}
C {code_shown.sym} -1505 -195 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
spice_ignore=false
      }
C {vsource.sym} -120 360 0 0 {name=V2 value=.9 savecurrent=false}
C {lab_pin.sym} -120 330 0 0 {name=p11 sig_type=std_logic lab=vcm}
C {gnd.sym} -120 390 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -90 190 3 0 {name=p23 sig_type=std_logic lab=vcm}
C {logic/logic.sym} 270 600 2 1 {name=x2 cu=10f}
C {lab_pin.sym} 440 -60 1 0 {name=p24 lab=b11}
C {lab_pin.sym} 410 100 0 0 {name=p25 lab=clk}
C {lab_pin.sym} 660 200 0 0 {name=p26 lab=VDD}
C {lab_pin.sym} 460 -60 1 0 {name=p28 lab=b10}
C {lab_pin.sym} 480 -60 1 0 {name=p29 lab=b9}
C {lab_pin.sym} 500 -60 1 0 {name=p42 lab=b8}
C {lab_pin.sym} 520 -60 1 0 {name=p43 lab=b7}
C {lab_pin.sym} 540 -60 1 0 {name=p44 lab=b6}
C {lab_pin.sym} 560 -60 1 0 {name=p45 lab=b5}
C {lab_pin.sym} 580 -60 1 0 {name=p46 lab=b4}
C {lab_pin.sym} 600 -60 1 0 {name=p47 lab=b3}
C {lab_pin.sym} 620 -60 1 0 {name=p48 lab=b2}
C {lab_pin.sym} 640 -60 1 0 {name=p49 lab=b1}
C {lab_pin.sym} 660 -60 1 0 {name=p50 lab=b0}
C {lab_pin.sym} 700 -60 1 0 {name=p51 lab=d11}
C {lab_pin.sym} 720 -60 1 0 {name=p52 lab=d10}
C {lab_pin.sym} 740 -60 1 0 {name=p53 lab=d9}
C {lab_pin.sym} 760 -60 1 0 {name=p54 lab=d8}
C {lab_pin.sym} 780 -60 1 0 {name=p55 lab=d7}
C {lab_pin.sym} 800 -60 1 0 {name=p56 lab=d6}
C {lab_pin.sym} 820 -60 1 0 {name=p57 lab=d5}
C {lab_pin.sym} 840 -60 1 0 {name=p58 lab=d4}
C {lab_pin.sym} 860 -60 1 0 {name=p59 lab=d3}
C {lab_pin.sym} 880 -60 1 0 {name=p60 lab=d2}
C {lab_pin.sym} 900 -60 1 0 {name=p61 lab=d1}
C {lab_pin.sym} 920 -60 1 0 {name=p62 lab=d0}
C {lab_pin.sym} 950 80 0 1 {name=p64 lab=eoc}
C {gnd.sym} 700 200 0 0 {name=l7 lab=GND}
C {vsource.sym} -360 40 0 0 {name=V3 value=1 savecurrent=false}
C {gnd.sym} -360 70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 180 70 0 1 {name=p4 lab=vdacn}
C {vsource.sym} 55 -300 0 0 {name=V4 value="PULSE( 0 1.8 0 10p 10p 10n 20n)" savecurrent=false}
C {gnd.sym} 55 -270 0 0 {name=l4 lab=GND}
C {noconn.sym} 680 -60 3 1 {name=l5}
C {lab_pin.sym} 315 -325 0 1 {name=p3 sig_type=std_logic lab=sample
}
C {vsource.sym} 315 -295 0 0 {name=V5 value="PULSE( 0 1.8 0 10p 10p 5n 10n 1)" savecurrent=false}
C {gnd.sym} 315 -265 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 410 50 0 0 {name=p9 sig_type=std_logic lab=sample
}
C {lab_pin.sym} 580 -320 0 1 {name=p27 sig_type=std_logic lab=comp_in
}
C {vsource.sym} 580 -290 0 0 {name=V6 value="PULSE( 0 1.8 5n 10p 10p 20n 40n)" savecurrent=false}
C {gnd.sym} 580 -260 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 950 10 0 1 {name=p8 lab=VDD}
C {lab_pin.sym} 160 220 0 0 {name=p63 lab=vdacp}
C {lab_pin.sym} 250 220 0 1 {name=p65 lab=vdacn}
C {capa.sym} 160 250 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 250 250 0 0 {name=C2
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 280 0 0 {name=l11 lab=GND}
C {gnd.sym} 250 280 0 0 {name=l12 lab=GND}
