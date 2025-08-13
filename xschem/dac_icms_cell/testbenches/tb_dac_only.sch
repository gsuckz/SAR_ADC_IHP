v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -420 10 -360 10 {lab=vinn}
N -420 70 -360 70 {lab=vinp}
N 130 270 190 270 {lab=GND}
N 220 260 280 260 {lab=GND}
N 940 40 1300 40 {lab=GND}
N 490 50 840 50 {lab=GND}
N 490 180 850 180 {lab=GND}
N -420 340 -280 340 {lab=vcm}
N -280 330 -280 340 {lab=vcm}
N -420 340 -420 360 {lab=vcm}
N -540 340 -420 340 {lab=vcm}
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
C {devices/code_shown.sym} -1900 0 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-10
.control

* Transient Analysis
tran 100p 20n

*plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\}
*plot \{b0\} \{b1 + 4\} \{b2 + 8\} \{b3 + 12\} \{b4 + 16\} \{b5 + 20\} \{b6 + 24\} \{b7 + 28\} \{b8 + 32\} \{b9 + 36\} \{b10 + 40\} \{b11 + 44\}
*plot \{clk\} \{comp_in + 2\} \{sample + 4\}
plot vdacp vdacn sample
plot \{vdacp-vdacn\}
plot x3.x14.net1-vdacp x3.x18.vcap-vdacn

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
C {vsource.sym} -420 390 0 0 {name=V2 value=.9 savecurrent=false}
C {lab_pin.sym} -420 360 0 0 {name=p11 sig_type=std_logic lab=vcm}
C {gnd.sym} -420 420 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -90 190 3 0 {name=p23 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 490 -10 1 0 {name=p24 lab=b11}
C {lab_pin.sym} 540 -10 1 0 {name=p28 lab=b10}
C {lab_pin.sym} 590 -10 1 0 {name=p29 lab=b9}
C {lab_pin.sym} 640 -10 1 0 {name=p42 lab=b8}
C {lab_pin.sym} 690 -10 1 0 {name=p43 lab=b7}
C {lab_pin.sym} 740 -10 1 0 {name=p44 lab=b6}
C {lab_pin.sym} 790 -10 1 0 {name=p45 lab=b5}
C {lab_pin.sym} 850 -10 1 0 {name=p46 lab=b4}
C {lab_pin.sym} 490 120 1 0 {name=p47 lab=b3}
C {lab_pin.sym} 540 120 1 0 {name=p48 lab=b2}
C {lab_pin.sym} 590 120 1 0 {name=p49 lab=b1}
C {lab_pin.sym} 640 120 1 0 {name=p50 lab=b0}
C {lab_pin.sym} 690 120 1 0 {name=p51 lab=d11}
C {lab_pin.sym} 740 120 1 0 {name=p52 lab=d10}
C {lab_pin.sym} 790 120 1 0 {name=p53 lab=d9}
C {lab_pin.sym} 850 120 1 0 {name=p54 lab=d8}
C {lab_pin.sym} 940 -20 1 0 {name=p55 lab=d7}
C {lab_pin.sym} 1040 -20 1 0 {name=p56 lab=d6}
C {lab_pin.sym} 990 -20 1 0 {name=p57 lab=d5}
C {lab_pin.sym} 1090 -20 1 0 {name=p58 lab=d4}
C {lab_pin.sym} 1140 -20 1 0 {name=p59 lab=d3}
C {lab_pin.sym} 1190 -20 1 0 {name=p60 lab=d2}
C {lab_pin.sym} 1240 -20 1 0 {name=p61 lab=d1}
C {lab_pin.sym} 1300 -20 1 0 {name=p62 lab=d0}
C {vsource.sym} -540 310 0 0 {name=V3 value=500m savecurrent=false}
C {lab_pin.sym} 180 70 0 1 {name=p4 lab=vdacn}
C {vsource.sym} 55 -300 0 0 {name=V4 value="PULSE( 0 1.8 7n 10p 10p 1n 2n)" savecurrent=false}
C {gnd.sym} 55 -270 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 160 230 0 0 {name=p63 lab=vdacp}
C {lab_pin.sym} 250 220 0 1 {name=p65 lab=vdacn}
C {gnd.sym} 160 270 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 360 -245 0 1 {name=p66 sig_type=std_logic lab=sample}
C {gnd.sym} 360 -185 0 0 {name=l13 lab=GND}
C {vsource.sym} 360 -215 0 0 {name=V7 value="PULSE( 0 1.8 0 1p 1p 5n 10n 1)" savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 250 3 1 {name=M2
l=0.13u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 250 260 0 0 {name=l15 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 240 3 1 {name=M1
l=0.13u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 490 20 0 1 {name=V8 value=0}
C {devices/vsource.sym} 540 20 0 1 {name=V9 value=0}
C {devices/vsource.sym} 590 20 0 1 {name=V10 value=0}
C {devices/vsource.sym} 640 20 0 1 {name=V11 value=0}
C {devices/vsource.sym} 690 20 0 1 {name=V12 value=0}
C {devices/vsource.sym} 740 20 0 1 {name=V13 value=0}
C {devices/vsource.sym} 790 20 0 1 {name=V14 value=0}
C {devices/vsource.sym} 850 20 0 1 {name=V15 value=0}
C {devices/vsource.sym} 490 150 0 1 {name=V16 value=0}
C {devices/vsource.sym} 540 150 0 1 {name=V17 value=0}
C {devices/vsource.sym} 590 150 0 1 {name=V18 value=0}
C {devices/vsource.sym} 640 150 0 1 {name=V19 value=0}
C {devices/vsource.sym} 690 150 0 1 {name=V20 value=0}
C {devices/vsource.sym} 740 150 0 1 {name=V21 value=0}
C {devices/vsource.sym} 790 150 0 1 {name=V22 value=0}
C {devices/vsource.sym} 850 150 0 1 {name=V23 value=0}
C {devices/vsource.sym} 940 10 0 1 {name=V24 value=0}
C {devices/vsource.sym} 990 10 0 1 {name=V25 value=0}
C {devices/vsource.sym} 1040 10 0 1 {name=V26 value=0}
C {devices/vsource.sym} 1090 10 0 1 {name=V27 value=0}
C {devices/vsource.sym} 1140 10 0 1 {name=V28 value=0}
C {devices/vsource.sym} 1190 10 0 1 {name=V29 value=0}
C {devices/vsource.sym} 1240 10 0 1 {name=V30 value=0}
C {devices/vsource.sym} 1300 10 0 1 {name=V31 value=0}
C {gnd.sym} 690 50 0 0 {name=l5 lab=GND}
C {gnd.sym} 690 180 0 0 {name=l7 lab=GND}
C {gnd.sym} 990 40 0 0 {name=l10 lab=GND}
C {vsource.sym} -280 300 2 0 {name=V5 value=500m savecurrent=false}
C {lab_pin.sym} -540 280 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -280 270 0 0 {name=p8 sig_type=std_logic lab=vinn}
C {lab_pin.sym} -420 70 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -420 10 0 0 {name=p25 sig_type=std_logic lab=vinn}
