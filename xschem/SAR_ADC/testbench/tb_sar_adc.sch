v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -430 -210 -405 -210 {
lab=vinn}
N -430 -270 -405 -270 {
lab=vinp}
N -710 -465 -585 -465 {lab=vcm}
N -710 -565 -710 -525 {lab=vinp}
N -585 -565 -585 -525 {lab=vinn}
C {SAR_ADC/sar.sym} -310 -230 0 0 {name=x1}
C {devices/code_shown.sym} 705 -520 0 0 {name=NGSPICE
only_toplevel=false
value="
.param periodclk=1n
.param periodconv=20n
.param stoptime=1*periodconv
.param ro = 300

.param W_P = 0.5u
.param L_P = 0.13u
.param W_N = 0.5u
.param L_N = 0.13u

.param vdiff = 1.2

.options klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15


.tran \{0.005*periodclk\} \{stoptime\} 

.control

run
set hcopydevtype = svg
set color0 = white
set color1 = black

meas tran eoc_t WHEN eoc=1.7 CROSS=LAST
meas tran soc_t WHEN sample=1.6 FALL=1
meas tran i_rms RMS i(V3) from=soc_t to=eoc_t

let vin = vinp-vinn
let vin_comp = compp-compn
let resultado = \{(((V(d11)/1.8)*2048 + (V(d10)/1.8)*1024 + (V(d9)/1.8)*512 + (V(d8)/1.8)*256 + (V(d7)/1.8)*128 + (V(d6)/1.8)*64 + (V(d5)/1.8)*32 + (V(d4)/1.8)*16 + (V(d3)/1.8)*8 + (V(d2)/1.8)*4 + (V(d1)/1.8)*2 + (V(d0)/1.8)) - 2048) * 1.8/2048\} 
let resultado2 = \{((((0-V(d11))/1.8)*2048 + (V(d10)/1.8)*1024 + (V(d9)/1.8)*512 + (V(d8)/1.8)*256 + (V(d7)/1.8)*128 + (V(d6)/1.8)*64 + (V(d5)/1.8)*32 + (V(d4)/1.8)*16 + (V(d3)/1.8)*8 + (V(d2)/1.8)*4 + (V(d1)/1.8)*2 + (V(d0)/1.8)) + 2048)*1.8/2048\} 
let clk = x1.comp_clk
let vdd = 1.8
let tiempo_conv = eoc_t-soc_t
let potencia_rms = i_rms*vdd
let energia_conv = potencia_rms*(eoc_t-soc_t)
let energia_bit = energia_conv/12
let a_sample_buf = x1.x2.a_sample
let b_sample_buf = x1.x2.b_sample
let a_sample_n_buf = x1.x2.a_sample_n
let b_sample_n_buf = x1.x2.b_sample_n
let a_sample_nol = x1.x2.a_ctrl
let b_sample_nol = x1.x2.b_ctrl
meas tran resultado_final find resultado WHEN eoc=1.7 CROSS=LAST
let error = vin-resultado_final


plot compp compn \{compout + 4\}
plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\} \{clk + 50\} \{compout + 55\} \{eoc + 60\}  \{vin_comp - 2\}
plot compp-compn x1.clk compout
*plot sample eoc x1.x3.start
plot resultado sample eoc vin
plot resultado sample eoc vin

print i_rms potencia_rms energia_conv energia_bit > "./../../out/consumos_conversion.txt"
print vin resultado_final error tiempo_conv "./../../out/error_ejemplo.txt"

hardcopy ./../../img/salidas_SAR.svg \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\} \{clk + 50\} \{compout + 55\} \{eoc + 60\}  \{vin_comp - 2\} title 'Salidas SAR'
hardcopy ./../../img/conversion_ejemplo.svg resultado sample eoc vin title 'Conversion de Vin=V1.796484'
*hardcopy ./../../img/conversion2_ejemplo.svg resultado2 sample eoc vin 
*hardcopy ./../../img/nol_formas_de_onda.svg sample a_sample_nol+2 b_sample_nol+4 a_sample_buf+2 b_sample_buf+4 xlimit 0 4n title 'Señales de Non-Overlap'
*hardcopy ./../../img/nol_salidas.svg sample a_sample_buf+2 a_sample_n_buf+2 b_sample_buf+4 b_sample_n_buf+4 xlimit 0 4n title 'Salidas del Non-Overlap'
*hardcopy ./../../img/conversion_comparador.svg vin_comp compout clk*.5 title 'Ejemplo convesion comparador'



*wrdata adc_signals.csv time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc sample compout compp compn x1.comp_clk
*write adc_signals.raw time V(d0) V(d1) V(d2) V(d3) V(d4) V(d5) V(d6) V(d7) V(d8) V(d9) V(d10) V(d11) vinp vinn eoc sample compout compp compn x1.comp_clk
*quit
.endc
"}
C {devices/vsource.sym} -710 -495 0 1 {name=VI value="pulse(250m \{vdiff/2\} 0.1n 100p 100p \{stoptime\} \{stoptime+1\} 1)"}
C {devices/lab_pin.sym} 25 -290 0 1 {name=p3 lab=d0}
C {devices/lab_pin.sym} -720 -210 1 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} -320 -350 1 0 {name=l3 lab=vdd}
C {devices/lab_pin.sym} 25 -280 0 1 {name=p4 lab=d1}
C {devices/lab_pin.sym} 25 -270 0 1 {name=p5 lab=d2}
C {devices/lab_pin.sym} 25 -260 0 1 {name=p6 lab=d3}
C {devices/lab_pin.sym} 25 -250 0 1 {name=p7 lab=d4}
C {devices/lab_pin.sym} 25 -240 0 1 {name=p8 lab=d5}
C {devices/lab_pin.sym} 25 -230 0 1 {name=p9 lab=d6}
C {devices/lab_pin.sym} 25 -220 0 1 {name=p10 lab=d7}
C {devices/lab_pin.sym} 25 -210 0 1 {name=p11 lab=d8}
C {devices/lab_pin.sym} 25 -200 0 1 {name=p12 lab=d9}
C {devices/lab_pin.sym} 25 -190 0 1 {name=p13 lab=d10}
C {devices/lab_pin.sym} 25 -180 0 1 {name=p14 lab=d11}
C {devices/lab_pin.sym} -710 -565 0 0 {name=l5 lab=vinp}
C {devices/lab_pin.sym} -230 -130 3 0 {name=p15 lab=compn}
C {devices/lab_pin.sym} -185 -130 3 0 {name=p16 lab=compp}
C {devices/lab_pin.sym} -135 -130 3 0 {name=p17 lab=compout}
C {devices/lab_pin.sym} -60 -130 3 0 {name=p18 lab=eoc}
C {devices/gnd.sym} -720 -150 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -650 -405 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -325 -130 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -585 -565 0 1 {name=l4 lab=vinn}
C {code_shown.sym} -760 -990 0 0 {
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
C {devices/vsource.sym} -585 -495 2 1 {name=VIN3 value="pulse(250m \{vdiff/2\} 0.1n 100p 100p \{stoptime\} \{stoptime+1\} 1)"}
C {devices/lab_pin.sym} -430 -210 2 1 {name=l8 lab=vinn}
C {devices/lab_pin.sym} -430 -270 0 0 {name=l9 lab=vinp}
C {devices/vsource.sym} -900 -180 0 1 {name=V2 value="PULSE(0 1.8 0.1n 1p 1p 2n 30n )"}
C {devices/lab_pin.sym} -900 -210 1 0 {name=l12 lab=sample}
C {devices/gnd.sym} -900 -150 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -45 -350 1 0 {name=l11 lab=sample}
C {devices/lab_pin.sym} -650 -465 1 0 {name=l14 lab=vcm}
C {devices/vsource.sym} -720 -180 0 0 {name=V3 value="PULSE(0 1.8 0.1n 100p 100p 1 2 )"}
C {devices/lab_pin.sym} -275 -350 1 0 {name=l10 lab=vcm}
C {devices/vsource.sym} -650 -435 0 0 {name=V7 value="PULSE(0 0.9 0.1n 100p 100p 1 2 )"}
