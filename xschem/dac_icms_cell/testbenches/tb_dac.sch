v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -400 70 -360 70 {lab=#net1}
N 950 10 1030 10 {lab=compout}
N 130 270 190 270 {lab=GND}
N 260 270 320 270 {lab=GND}
N -400 30 -400 70 {lab=#net1}
N -430 130 -360 130 {lab=#net2}
N -560 30 -400 30 {lab=#net1}
N -510 70 -430 70 {lab=#net3}
N -510 70 -510 90 {lab=#net3}
N -560 90 -510 90 {lab=#net3}
C {dac_icms_cell/dac.sym} -500 590 2 1 {name=x3 cu=10f}
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
C {devices/code_shown.sym} -1900 -140 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param period = 2n
.param stop=\{15*period\}
.param ro = 500
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-10 gmin=1e-10
.control

* Transient Analysis
tran 200p 30n
*Busco los valores "finales" de cdacp y cdacn 
meas tran tstart when sample=0.18 fall=1
meas tran valor_s_p find vdacp when clk=0.18 td=$&tstart fall=1
meas tran valor_1_p find vdacp when clk=0.18 td=$&tstart fall=2
meas tran valor_2_p find vdacp when clk=0.18 td=$&tstart fall=3
meas tran valor_3_p find vdacp when clk=0.18 td=$&tstart fall=4
meas tran valor_4_p find vdacp when clk=0.18 td=$&tstart fall=5
meas tran valor_5_p find vdacp when clk=0.18 td=$&tstart fall=6
meas tran valor_6_p find vdacp when clk=0.18 td=$&tstart fall=7
meas tran valor_7_p find vdacp when clk=0.18 td=$&tstart fall=8
meas tran valor_8_p find vdacp when clk=0.18 td=$&tstart fall=9
meas tran valor_9_p find vdacp when clk=0.18 td=$&tstart fall=10
meas tran valor_10_p find vdacp when clk=0.18 td=$&tstart fall=11
meas tran valor_11_p find vdacp when clk=0.18 td=$&tstart fall=12

meas tran valor_s_n find vdacn when clk=0.18 td=$&tstart fall=1
meas tran valor_1_n find vdacn when clk=0.18 td=$&tstart fall=2
meas tran valor_2_n find vdacn when clk=0.18 td=$&tstart fall=3
meas tran valor_3_n find vdacn when clk=0.18 td=$&tstart fall=4
meas tran valor_4_n find vdacn when clk=0.18 td=$&tstart fall=5
meas tran valor_5_n find vdacn when clk=0.18 td=$&tstart fall=6
meas tran valor_6_n find vdacn when clk=0.18 td=$&tstart fall=7
meas tran valor_7_n find vdacn when clk=0.18 td=$&tstart fall=8
meas tran valor_8_n find vdacn when clk=0.18 td=$&tstart fall=9
meas tran valor_9_n find vdacn when clk=0.18 td=$&tstart fall=10
meas tran valor_10_n find vdacn when clk=0.18 td=$&tstart fall=11
meas tran valor_11_n find vdacn when clk=0.18 td=$&tstart fall=12

*Calculo los valores de la señal diferencial (vdacd)

let vdacds=valor_s_p-valor_s_n
let vdacd1 = valor_1_p-valor_1_n
let vdacd2 = valor_2_p-valor_2_n
let vdacd3 = valor_3_p-valor_3_n
let vdacd4 = valor_4_p-valor_4_n
let vdacd5 = valor_5_p-valor_5_n
let vdacd6 = valor_6_p-valor_6_n
let vdacd7 = valor_7_p - valor_7_n
let vdacd8 = valor_8_p - valor_8_n
let vdacd9 = valor_9_p - valor_9_n
let vdacd10 = valor_10_p - valor_10_n
let vdacd11 = valor_11_p - valor_11_n

*Calculo los saltos tanto del lado p como del n
let salto1p = valor_1_p-valor_s_p
let salto2p = valor_2_p-valor_1_p
let salto3p = valor_3_p-valor_2_p
let salto4p = valor_4_p-valor_3_p
let salto5p = valor_5_p-valor_4_p
let salto6p = valor_6_p-valor_5_p
let salto7p = valor_7_p-valor_6_p
let salto8p = valor_8_p-valor_7_p
let salto9p = valor_9_p-valor_8_p
let salto10p = valor_10_p-valor_9_p
let salto11p = valor_11_p-valor_10_p


let salto1n = valor_1_n-valor_s_n
let salto2n = valor_2_n-valor_1_n
let salto3n = valor_3_n-valor_2_n
let salto4n = valor_4_n-valor_3_n
let salto5n = valor_5_n-valor_4_n
let salto6n = valor_6_n-valor_5_n
let salto7n = valor_7_n-valor_6_n
let salto8n = valor_8_n-valor_7_n
let salto9n = valor_9_n-valor_8_n
let salto10n = valor_10_n-valor_9_n
let salto11n = valor_11_n-valor_10_n


let salto1 = vdacd1-vdacds
let salto2 = vdacd2-vdacd1
let salto3 = vdacd3-vdacd2
let salto4 = vdacd4-vdacd3
let salto5 = vdacd5-vdacd4
let salto6 = vdacd6-vdacd5
let salto7 = vdacd7 - vdacd6
let salto8 = vdacd8 - vdacd7
let salto9 = vdacd9 - vdacd8
let salto10 = vdacd10 - vdacd9
let salto11 = vdacd11 - vdacd10


echo Sample VdacP $&valor_s_p VdacN $&valor_s_n Vdac diff $&vdacds
echo Salto 1 VdacP $&salto1p VdacN $&salto1n Vdac diff $&salto1
echo Salto 2 VdacP $&salto2p VdacN $&salto2n Vdac diff $&salto2
echo Salto 3 VdacP $&salto3p VdacN $&salto3n Vdac diff $&salto3
echo Salto 4 VdacP $&salto4p VdacN $&salto4n Vdac diff $&salto4
echo Salto 5 VdacP $&salto5p VdacN $&salto5n Vdac diff $&salto5
echo Salto 6 VdacP $&salto6p VdacN $&salto6n Vdac diff $&salto6
echo Salto 7 VdacP $&salto7p VdacN $&salto7n Vdac diff $&salto7
echo Salto 8 VdacP $&salto8p VdacN $&salto8n Vdac diff $&salto8
echo Salto 9 VdacP $&salto9p VdacN $&salto9n Vdac diff $&salto9
echo Salto 10 VdacP $&salto10p VdacN $&salto10n Vdac diff $&salto10
echo Salto 11 VdacP $&salto11p VdacN $&salto11n Vdac diff $&salto11

let sigvalor1p= \{0.9*salto1p+valor_s_p\} 
let sigvalor2p= \{0.9*salto2p+valor_1_p\} 
let sigvalor3p= \{0.9*salto3p+valor_2_p\} 
let sigvalor4p= \{0.9*salto4p+valor_3_p\} 
let sigvalor5p= \{0.9*salto5p+valor_4_p\} 
let sigvalor6p= \{0.9*salto6p+valor_5_p\} 
let sigvalor7p= \{0.9*salto7p+valor_6_p\} 
let sigvalor8p= \{0.9*salto8p+valor_7_p\} 
let sigvalor9p= \{0.9*salto9p+valor_8_p\} 
let sigvalor10p= \{0.9*salto10p+valor_9_p\} 
let sigvalor11p= \{0.9*salto11p+valor_10_p\} 


let sigvalor1n= \{0.9*salto1n+valor_s_n\} 
let sigvalor2n= \{0.9*salto2n+valor_1_n\} 
let sigvalor3n= \{0.9*salto3n+valor_2_n\} 
let sigvalor4n= \{0.9*salto4n+valor_3_n\} 
let sigvalor5n= \{0.9*salto5n+valor_4_n\} 
let sigvalor6n= \{0.9*salto6n+valor_5_n\} 
let sigvalor7n= \{0.9*salto7n+valor_6_n\} 
let sigvalor8n= \{0.9*salto8n+valor_7_n\} 
let sigvalor9n= \{0.9*salto9n+valor_8_n\} 
let sigvalor10n= \{0.9*salto10n+valor_9_n\} 
let sigvalor11n= \{0.9*salto11n+valor_10_n\} 

let sigvalor_s_p = \{0.9*(valor_s_p-0.9) + 0.9\}
let sigvalor_s_n = \{0.9*(valor_s_n-0.9) + 0.9\}

meas tran t_sett_sample_p trig at=$&tstart targ vdacp val=$&sigvalor_s_p cross=1 from=3n
meas tran t_sett_sample_n trig at=$&tstart targ vdacn val=$&sigvalor_s_n cross=1 from=3n

meas tran t_sett_1_p trig clk val=1.62 rise=1 targ vdacp val=$&sigvalor1p cross=1 from=5n
meas tran t_sett_2_p trig clk val=1.62 rise=2 targ vdacp val=$&sigvalor2p cross=1 from=5n
meas tran t_sett_3_p trig clk val=1.62 rise=3 targ vdacp val=$&sigvalor3p cross=1 from=5n
meas tran t_sett_4_p trig clk val=1.62 rise=4 targ vdacp val=$&sigvalor4p cross=1 from=5n
meas tran t_sett_5_p trig clk val=1.62 rise=5 targ vdacp val=$&sigvalor5p cross=1 from=5n
meas tran t_sett_6_p trig clk val=1.62 rise=6 targ vdacp val=$&sigvalor6p cross=1 from=5n
meas tran t_sett_7_p trig clk val=1.62 rise=7 targ vdacp val=$&sigvalor7p cross=1 from=5n
meas tran t_sett_8_p trig clk val=1.62 rise=8 targ vdacp val=$&sigvalor8p cross=1 from=5n
meas tran t_sett_9_p trig clk val=1.62 rise=9 targ vdacp val=$&sigvalor9p cross=1 from=5n
meas tran t_sett_10_p trig clk val=1.62 rise=10 targ vdacp val=$&sigvalor10p cross=1 from=5n
meas tran t_sett_11_p trig clk val=1.62 rise=11 targ vdacp val=$&sigvalor11p cross=1 from=5n


meas tran t_sett_1_n trig clk val=1.62 rise=1 targ vdacn val=$&sigvalor1n cross=1 from=5n
meas tran t_sett_2_n trig clk val=1.62 rise=2 targ vdacn val=$&sigvalor2n cross=1 from=5n
meas tran t_sett_3_n trig clk val=1.62 rise=3 targ vdacn val=$&sigvalor3n cross=1 from=5n
meas tran t_sett_4_n trig clk val=1.62 rise=4 targ vdacn val=$&sigvalor4n cross=1 from=5n
meas tran t_sett_5_n trig clk val=1.62 rise=5 targ vdacn val=$&sigvalor5n cross=1 from=5n
meas tran t_sett_6_n trig clk val=1.62 rise=6 targ vdacn val=$&sigvalor6n cross=1 from=5n
meas tran t_sett_7_n trig clk val=1.62 rise=7 targ vdacn val=$&sigvalor7n cross=1 from=5n
meas tran t_sett_8_n trig clk val=1.62 rise=8 targ vdacn val=$&sigvalor8n cross=1 from=5n
meas tran t_sett_9_n trig clk val=1.62 rise=9 targ vdacn val=$&sigvalor9n cross=1 from=5n
meas tran t_sett_10_n trig clk val=1.62 rise=10 targ vdacn val=$&sigvalor10n cross=1 from=5n
meas tran t_sett_11_n trig clk val=1.62 rise=11 targ vdacn val=$&sigvalor11n cross=1 from=5n



plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\}
plot \{b0\} \{b1 + 4\} \{b2 + 8\} \{b3 + 12\} \{b4 + 16\} \{b5 + 20\} \{b6 + 24\} \{b7 + 28\} \{b8 + 32\} \{b9 + 36\} \{b10 + 40\} \{b11 + 44\}
plot \{clk\} \{comp_in + 2\} \{sample + 4\}
plot vdacp vdacn
plot \{vdacp-vdacn\}
plot x3.vdacp2 x3.vdacn2 compout

.endc
"}
C {lab_pin.sym} -545 460 0 1 {name=p6 sig_type=std_logic lab=clk
}
C {gnd.sym} -70 190 0 0 {name=l2 lab=GND}
C {code_shown.sym} -1915 -345 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_ss
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
spice_ignore=false
      }
C {vsource.sym} -460 250 0 0 {name=V2 value=.9 savecurrent=false}
C {lab_pin.sym} -460 220 0 0 {name=p11 sig_type=std_logic lab=vcm}
C {gnd.sym} -460 280 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -90 190 3 0 {name=p23 sig_type=std_logic lab=vcm}
C {logic/logic.sym} 270 600 2 1 {name=x2 }
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
C {gnd.sym} -510 150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 180 70 0 1 {name=p4 lab=vdacn}
C {vsource.sym} -545 490 0 0 {name=V4 value="PULSE( 0 1.8 0 10p 10p \{period/2\} \{period\})" savecurrent=false}
C {gnd.sym} -545 520 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 160 230 0 0 {name=p63 lab=vdacp}
C {lab_pin.sym} 290 230 0 1 {name=p65 lab=vdacn}
C {gnd.sym} 160 270 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 680 -60 1 0 {name=p3 lab=sample}
C {devices/vsource.sym} -540 380 0 1 {name=V5 value="PULSE(0 1.8 0.1n 10p 10p 3n 5n 1)"}
C {devices/lab_pin.sym} -540 350 1 0 {name=l9 lab=rst}
C {devices/gnd.sym} -540 410 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 410 50 1 0 {name=l5 lab=rst}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 250 3 1 {name=M2
l=0.13u
w=4.0u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 290 270 0 0 {name=l15 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 290 250 3 1 {name=M1
l=0.13u
w=4.0u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1030 10 0 1 {name=p8 sig_type=std_logic lab=compout
}
C {vsource.sym} 1030 40 0 0 {name=V6 value="PULSE( 0 1.8 17n 10p 10p 20n 40n 1)" savecurrent=false}
C {gnd.sym} 1030 70 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -365 5 0 0 {name=p9 lab=inv_vcm}
C {lab_pin.sym} 410 10 0 0 {name=p27 lab=inv_vcm}
C {devices/lab_pin.sym} -635 215 1 0 {name=l1 lab=vdd}
C {devices/gnd.sym} -635 275 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -635 245 0 0 {name=V1 value="PULSE(0 1.8 0.1n 100p 100p 1 2 )"}
C {devices/vsource.sym} -510 120 0 0 {name=V7 value="PULSE(0 0.9 0.1n 100p 100p 1 2 )"}
C {devices/vsource.sym} -560 60 0 0 {name=V3 value="PULSE(0 0.5 0.1n 100p 100p 1 2 )"}
C {devices/vsource.sym} -430 100 2 0 {name=V8 value="PULSE(0 0.5 0.1n 100p 100p 1 2 )"}
