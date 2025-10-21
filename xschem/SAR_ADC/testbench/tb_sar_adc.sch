v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -270 -215 -270 {
lab=vinn}
N -240 -330 -215 -330 {
lab=vinp}
N -520 -340 -395 -340 {lab=#net1}
N -520 -440 -520 -400 {lab=#net2}
N -395 -440 -395 -400 {lab=#net3}
N -395 -440 -390 -440 {lab=#net3}
C {SAR_ADC/sar.sym} -120 -290 0 0 {name=x1}
C {devices/code_shown.sym} 305 -660 0 0 {name=NGSPICE
only_toplevel=false
value="
.param periodclk=1n
.param periodconv=30n
.param stoptime=1*periodconv
.param ro = 300

.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u

.options klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15


.tran \{0.01*periodclk\} \{stoptime\} 

.control

run

plot \{(V(d11)*2+V(d10)*4+V(d9)*8+V(d8)*16+V(d7)*32+V(d6)*64+V(d5)*128+V(d4)*256+V(d3)*512+V(d2)*1024+V(d1)*2048)/4096\} \{2*rst\} eoc \{vinp - vinn\}
plot \{(V(d11)*2+V(d10)*4+V(d9)*8+V(d8)*16+V(d7)*32+V(d6)*64+V(d5)*128+V(d4)*256+V(d3)*512+V(d2)*1024+V(d1)*2048-V(d0)*4096)/4096\} \{2*rst\} eoc \{vinp - vinn\}
plot \{(-V(d0)*2048 + V(d1)*1024 + V(d2)*512 + V(d3)*256 + V(d4)*128 + V(d5)*64 + V(d6)*32 + V(d7)*16 + V(d8)*8 + V(d9)*4 + V(d10)*2 + V(d11))/2048\}
plot \{((V(d0)-1.8)*2048 + V(d1)*1024 + V(d2)*512 + V(d3)*256 + V(d4)*128 + V(d5)*64 + V(d6)*32 + V(d7)*16 + V(d8)*8 + V(d9)*4 + V(d10)*2 + V(d11))/2048\} rst eoc vinp-vinn
plot compp compn \{compout + 4\}
plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\} \{x1.comp_clk + 50\} \{compout + 55\} \{eoc + 60\}  \{compp - compn - 2\}
plot compp-compn x1.comp_clk compout

*wrdata adc_signals.csv time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc rst compout compp compn x1.comp_clk
*write adc_signals.raw time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc rst compout compp compn x1.comp_clk
*quit
.endc
"}
C {devices/vsource.sym} -520 -370 2 1 {name=VI value="pulse(0 0.9 0 100p 100p 4n 5n 1)"}
C {devices/lab_pin.sym} 220 -350 0 1 {name=p3 lab=d0}
C {devices/vsource.sym} -330 -160 0 1 {name=V1 value=1.8}
C {devices/lab_pin.sym} -330 -190 1 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} -60 -410 1 0 {name=l3 lab=vdd}
C {devices/lab_pin.sym} 220 -340 0 1 {name=p4 lab=d1}
C {devices/lab_pin.sym} 220 -330 0 1 {name=p5 lab=d2}
C {devices/lab_pin.sym} 220 -320 0 1 {name=p6 lab=d3}
C {devices/lab_pin.sym} 220 -310 0 1 {name=p7 lab=d4}
C {devices/lab_pin.sym} 220 -300 0 1 {name=p8 lab=d5}
C {devices/lab_pin.sym} 220 -290 0 1 {name=p9 lab=d6}
C {devices/lab_pin.sym} 220 -280 0 1 {name=p10 lab=d7}
C {devices/lab_pin.sym} 220 -270 0 1 {name=p11 lab=d8}
C {devices/lab_pin.sym} 220 -260 0 1 {name=p12 lab=d9}
C {devices/lab_pin.sym} 220 -250 0 1 {name=p13 lab=d10}
C {devices/lab_pin.sym} 220 -240 0 1 {name=p14 lab=d11}
C {devices/lab_pin.sym} -580 -440 0 0 {name=l5 lab=vinp}
C {devices/lab_pin.sym} -140 -190 3 0 {name=p15 lab=compn}
C {devices/lab_pin.sym} -85 -190 3 0 {name=p16 lab=compp}
C {devices/lab_pin.sym} -30 -190 3 0 {name=p17 lab=compout}
C {devices/lab_pin.sym} 130 -190 3 0 {name=p18 lab=eoc}
C {devices/gnd.sym} -330 -130 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -460 -280 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 70 -410 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -460 -310 0 1 {name=VIN2 value=0.9}
C {devices/lab_pin.sym} -330 -440 0 1 {name=l4 lab=vinn}
C {code_shown.sym} -540 -640 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
spice_ignore=false
      }
C {devices/vsource.sym} -395 -370 0 1 {name=VIN3 value="pulse(0 0.9 0 100p 100p 4n 5n 1)"}
C {devices/lab_pin.sym} -240 -270 2 1 {name=l8 lab=vinn}
C {devices/lab_pin.sym} -240 -330 0 0 {name=l9 lab=vinp}
C {devices/gnd.sym} -120 -410 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -510 -160 0 1 {name=V2 value="PULSE(0 1.8 0 10p 10p 2n 30n )"}
C {devices/lab_pin.sym} -510 -190 1 0 {name=l12 lab=rst}
C {devices/gnd.sym} -510 -130 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 145 -410 1 0 {name=l11 lab=rst}
C {res.sym} -550 -440 1 0 {name=R2
value=0.001
footprint=1206
device=resistor
m=1}
C {res.sym} -360 -440 1 0 {name=R1
value=0.001
footprint=1206
device=resistor
m=1}
