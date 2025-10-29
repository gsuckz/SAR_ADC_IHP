v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 -270 -215 -270 {
lab=vinn}
N -240 -330 -215 -330 {
lab=vinp}
N -630 -335 -505 -335 {lab=vcm}
N -630 -435 -630 -395 {lab=vinp}
N -505 -435 -505 -395 {lab=vinn}
C {SAR_ADC/sar.sym} -120 -290 0 0 {name=x1}
C {devices/code_shown.sym} 305 -660 0 0 {name=NGSPICE
only_toplevel=false
value="
.param periodclk=1n
.param periodconv=30n
.param stoptime=1*periodconv
.param ro = 300
.param W_P = 4.0u
.param L_P = 0.13u
.param W_N = 4.0u
.param L_N = 0.13u

.param vdiff = 254m

.options klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15


.tran \{0.01*periodclk\} \{stoptime\} 

.control

run

plot compp compn \{compout + 4\}
plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\} \{x1.comp_clk + 50\} \{compout + 55\} \{eoc + 60\}  \{compp - compn - 2\}
plot compp-compn x1.comp_clk compout
plot sample eoc x1.x3.start

plot \{(((V(d11)/1.8)*2048 + (V(d10)/1.8)*1024 + (V(d9)/1.8)*512 + (V(d8)/1.8)*256 + (V(d7)/1.8)*128 + (V(d6)/1.8)*64 + (V(d5)/1.8)*32 + (V(d4)/1.8)*16 + (V(d3)/1.8)*8 + (V(d2)/1.8)*4 + (V(d1)/1.8)*2 + (V(d0)/1.8)) - 2048) * 1.8/2048\} sample eoc vinp-vinn
plot \{((((0-V(d11))/1.8)*2048 + (V(d10)/1.8)*1024 + (V(d9)/1.8)*512 + (V(d8)/1.8)*256 + (V(d7)/1.8)*128 + (V(d6)/1.8)*64 + (V(d5)/1.8)*32 + (V(d4)/1.8)*16 + (V(d3)/1.8)*8 + (V(d2)/1.8)*4 + (V(d1)/1.8)*2 + (V(d0)/1.8)) + 2048)*1.8/2048\} sample eoc vinp-vinn
*wrdata adc_signals.csv time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc sample compout compp compn x1.comp_clk
*write adc_signals.raw time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc sample compout compp compn x1.comp_clk
*quit
.endc
"}
C {devices/vsource.sym} -630 -365 0 1 {name=VI value="pulse(250m \{vdiff/2\} 0.1n 100p 100p \{stoptime\} \{stoptime+1\} 1)"}
C {devices/lab_pin.sym} 215 -350 0 1 {name=p3 lab=d0}
C {devices/lab_pin.sym} -330 -190 1 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} -130 -410 1 0 {name=l3 lab=vdd}
C {devices/lab_pin.sym} 215 -340 0 1 {name=p4 lab=d1}
C {devices/lab_pin.sym} 215 -330 0 1 {name=p5 lab=d2}
C {devices/lab_pin.sym} 215 -320 0 1 {name=p6 lab=d3}
C {devices/lab_pin.sym} 215 -310 0 1 {name=p7 lab=d4}
C {devices/lab_pin.sym} 215 -300 0 1 {name=p8 lab=d5}
C {devices/lab_pin.sym} 215 -290 0 1 {name=p9 lab=d6}
C {devices/lab_pin.sym} 215 -280 0 1 {name=p10 lab=d7}
C {devices/lab_pin.sym} 215 -270 0 1 {name=p11 lab=d8}
C {devices/lab_pin.sym} 215 -260 0 1 {name=p12 lab=d9}
C {devices/lab_pin.sym} 215 -250 0 1 {name=p13 lab=d10}
C {devices/lab_pin.sym} 215 -240 0 1 {name=p14 lab=d11}
C {devices/lab_pin.sym} -630 -435 0 0 {name=l5 lab=vinp}
C {devices/lab_pin.sym} -40 -190 3 0 {name=p15 lab=compn}
C {devices/lab_pin.sym} 5 -190 3 0 {name=p16 lab=compp}
C {devices/lab_pin.sym} 55 -190 3 0 {name=p17 lab=compout}
C {devices/lab_pin.sym} 130 -190 3 0 {name=p18 lab=eoc}
C {devices/gnd.sym} -330 -130 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -570 -275 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -135 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -570 -305 0 1 {name=VIN2 value=0.9}
C {devices/lab_pin.sym} -505 -435 0 1 {name=l4 lab=vinn}
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
C {devices/vsource.sym} -505 -365 2 1 {name=VIN3 value="pulse(250m \{vdiff/2\} 0.1n 100p 100p \{stoptime\} \{stoptime+1\} 1)"}
C {devices/lab_pin.sym} -240 -270 2 1 {name=l8 lab=vinn}
C {devices/lab_pin.sym} -240 -330 0 0 {name=l9 lab=vinp}
C {devices/vsource.sym} -510 -160 0 1 {name=V2 value="PULSE(0 1.8 0.1n 100p 100p 2n 30n )"}
C {devices/lab_pin.sym} -510 -190 1 0 {name=l12 lab=sample}
C {devices/gnd.sym} -510 -130 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 145 -410 1 0 {name=l11 lab=sample}
C {devices/lab_pin.sym} -570 -335 1 0 {name=l14 lab=vcm}
C {devices/vsource.sym} -330 -160 0 0 {name=V3 value="PULSE(0 1.8 0.1n 100p 100p 1 2 )"}
C {devices/lab_pin.sym} -85 -410 1 0 {name=l10 lab=vcm}
