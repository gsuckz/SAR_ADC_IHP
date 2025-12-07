v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Parameterizable LV Inverter} 420 -1710 0 0 1 1 {}
N 780 -1360 780 -1300 {
lab=vin}
N 780 -1240 780 -1180 {
lab=GND}
N 1000 -1320 1000 -1180 {
lab=GND}
N 780 -1360 940 -1360 {
lab=vin}
N 60 -1290 60 -1230 {
lab=GND}
N 760 -1360 780 -1360 {
lab=vin}
N 60 -1410 60 -1350 {
lab=VDD}
N 1000 -1540 1000 -1400 {
lab=VDD}
N 1000 -1400 1680 -1400 {lab=VDD}
N 1500 -1320 1680 -1320 {lab=GND}
N 1270 -1360 1300 -1360 {lab=vout2}
N 1100 -1360 1120 -1360 {lab=vout1}
N 1100 -1490 1100 -1360 {lab=vout1}
N 1080 -1360 1100 -1360 {lab=vout1}
N 1100 -1490 1160 -1490 {lab=vout1}
N 1270 -1450 1270 -1360 {lab=vout2}
N 1260 -1360 1270 -1360 {lab=vout2}
N 1270 -1450 1300 -1450 {lab=vout2}
N 1470 -1360 1490 -1360 {lab=vout3}
N 1470 -1480 1480 -1480 {lab=vout3}
N 1470 -1480 1470 -1360 {lab=vout3}
N 1440 -1360 1470 -1360 {lab=vout3}
N 1500 -1270 1690 -1270 {lab=GND}
N 1500 -1320 1500 -1270 {lab=GND}
N 1000 -1320 1500 -1320 {lab=GND}
N 1970 -1300 1970 -1260 {lab=GND}
N 1690 -1260 1970 -1260 {lab=GND}
N 1690 -1270 1690 -1260 {lab=GND}
N 1760 -1360 1970 -1360 {lab=vout}
N 1620 -1450 1620 -1360 {lab=vout4}
N 1610 -1450 1620 -1450 {lab=vout4}
N 1070 -870 1070 -730 {
lab=GND}
N 1070 -1090 1070 -950 {
lab=VDD}
N 1070 -950 1750 -950 {lab=VDD}
N 1340 -910 1370 -910 {lab=fout2}
N 1170 -910 1190 -910 {lab=fin2}
N 1340 -1000 1340 -910 {lab=fout2}
N 1330 -910 1340 -910 {lab=fout2}
N 1340 -1000 1370 -1000 {lab=fout2}
N 1510 -910 1560 -910 {lab=#net1}
N 1070 -870 1750 -870 {lab=GND}
N 960 -550 960 -410 {
lab=GND}
N 960 -770 960 -630 {
lab=VDD}
N 960 -630 1640 -630 {lab=VDD}
N 1230 -590 1260 -590 {lab=fout3}
N 1060 -590 1080 -590 {lab=fin3}
N 1230 -680 1230 -590 {lab=fout3}
N 1220 -590 1230 -590 {lab=fout3}
N 1230 -680 1260 -680 {lab=fout3}
N 1420 -590 1450 -590 {lab=in0}
N 960 -550 1640 -550 {lab=GND}
N 950 -60 950 80 {
lab=GND}
N 950 -280 950 -140 {
lab=VDD}
N 950 -140 1630 -140 {lab=VDD}
N 1220 -100 1250 -100 {lab=fout4}
N 1050 -100 1070 -100 {lab=fin4}
N 1220 -190 1220 -100 {lab=fout4}
N 1210 -100 1220 -100 {lab=fout4}
N 1220 -190 1250 -190 {lab=fout4}
N 1390 -100 1440 -100 {lab=#net2}
N 950 -60 1630 -60 {lab=GND}
N 2030 -490 2030 -350 {
lab=GND}
N 2030 -710 2030 -570 {
lab=VDD}
N 2030 -570 2710 -570 {lab=VDD}
N 2300 -530 2330 -530 {lab=fout5}
N 2130 -530 2150 -530 {lab=fin5}
N 2300 -620 2300 -530 {lab=fout5}
N 2290 -530 2300 -530 {lab=fout5}
N 2300 -620 2330 -620 {lab=fout5}
N 2470 -530 2520 -530 {lab=#net3}
N 2030 -490 2710 -490 {lab=GND}
N 1060 -670 1060 -590 {lab=fin3}
N 1040 -590 1060 -590 {lab=fin3}
N 1170 -990 1170 -910 {lab=fin2}
N 1150 -910 1170 -910 {lab=fin2}
N 2130 -610 2130 -530 {lab=fin5}
N 2110 -530 2130 -530 {lab=fin5}
N 1050 -180 1050 -100 {lab=fin4}
N 1030 -100 1050 -100 {lab=fin4}
N 1420 -680 1420 -590 {lab=in0}
N 1400 -590 1420 -590 {lab=in0}
C {devices/code_shown.sym} 130 -1560 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 150 -1420 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.options savecurrents
.control
save all
set hcopydevtype = svg
set color0 = white
set color1 = black
tran 1p 5n
plot vin vout1 vout2 vout3 vout4 vout
plot vout1 vout
*plot fin2 fin3 fin4 fin5 fout2 fout3 fout4 fout5
plot in0 out0

hardcopy ./../../img/fanout_opt.svg fin2 fin3 fin4 fin5 fout2 fout3 fout4 fout5 xlimit 1.9n 2.2n title 'cambio del delay con f'
*quit
.endc
"}
C {devices/vsource.sym} 60 -1320 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 60 -1230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1000 -1180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 760 -1360 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 780 -1270 0 0 {name=vin value="pulse(0 1.8 0 5p 5p 1n 2n)"}
C {devices/gnd.sym} 780 -1180 0 0 {name=l5 lab=GND}
C {vdd.sym} 1000 -1540 0 0 {name=l6 lab=VDD}
C {vdd.sym} 60 -1410 0 0 {name=l7 lab=VDD}
C {inverter/inverter_lv.sym} 1000 -1360 0 0 {name=x1 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1180 -1360 0 0 {name=x2 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1360 -1360 0 0 {name=x3 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_pin.sym} 1160 -1490 0 1 {name=p1 sig_type=std_logic lab=vout1}
C {lab_pin.sym} 1300 -1450 0 1 {name=p3 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 1480 -1480 0 1 {name=p4 sig_type=std_logic lab=vout3}
C {inverter/inverter_lv.sym} 1540 -1360 0 0 {name=x4 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_pin.sym} 1970 -1360 0 1 {name=p5 sig_type=std_logic lab=vout}
C {capa.sym} 1970 -1330 0 0 {name=C1
m=1
value=16f
footprint=1206
device="ceramic capacitor"}
C {inverter/inverter_lv.sym} 1680 -1360 0 0 {name=x5 W_P=2u L_P=0.13u W_N=1u L_N=0.13u n=1}
C {lab_pin.sym} 1620 -1450 0 1 {name=p6 sig_type=std_logic lab=vout4}
C {devices/gnd.sym} 1070 -730 0 0 {name=l1 lab=GND}
C {vdd.sym} 1070 -1090 0 0 {name=l8 lab=VDD}
C {inverter/inverter_lv.sym} 1070 -910 0 0 {name=x6 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1250 -910 0 0 {name=x7 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1430 -910 0 0 {name=x8 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=2}
C {lab_pin.sym} 1370 -1000 0 1 {name=p8 sig_type=std_logic lab=fout2}
C {inverter/inverter_lv.sym} 1610 -910 0 0 {name=x9 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {lab_pin.sym} 1010 -910 0 0 {name=p11 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 960 -410 0 0 {name=l9 lab=GND}
C {vdd.sym} 960 -770 0 0 {name=l10 lab=VDD}
C {inverter/inverter_lv.sym} 960 -590 0 0 {name=x10 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1140 -590 0 0 {name=x11 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1320 -590 0 0 {name=x12 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {lab_pin.sym} 1260 -680 0 1 {name=p7 sig_type=std_logic lab=fout3}
C {inverter/inverter_lv.sym} 1500 -590 0 0 {name=x13 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {lab_pin.sym} 900 -590 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 950 80 0 0 {name=l11 lab=GND}
C {vdd.sym} 950 -280 0 0 {name=l12 lab=VDD}
C {inverter/inverter_lv.sym} 950 -100 0 0 {name=x14 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1130 -100 0 0 {name=x15 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1310 -100 0 0 {name=x16 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_pin.sym} 1250 -190 0 1 {name=p10 sig_type=std_logic lab=fout4}
C {inverter/inverter_lv.sym} 1490 -100 0 0 {name=x17 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {lab_pin.sym} 890 -100 0 0 {name=p12 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 2030 -350 0 0 {name=l2 lab=GND}
C {vdd.sym} 2030 -710 0 0 {name=l13 lab=VDD}
C {inverter/inverter_lv.sym} 2030 -530 0 0 {name=x18 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 2210 -530 0 0 {name=x19 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 2390 -530 0 0 {name=x20 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=5}
C {lab_pin.sym} 2330 -620 0 1 {name=p13 sig_type=std_logic lab=fout5}
C {inverter/inverter_lv.sym} 2570 -530 0 0 {name=x21 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {lab_pin.sym} 1970 -530 0 0 {name=p14 sig_type=std_logic lab=vin}
C {lab_pin.sym} 1060 -670 0 1 {name=p15 sig_type=std_logic lab=fin3}
C {lab_pin.sym} 1170 -990 0 1 {name=p16 sig_type=std_logic lab=fin2}
C {lab_pin.sym} 2130 -610 0 1 {name=p17 sig_type=std_logic lab=fin5}
C {lab_pin.sym} 1050 -180 0 1 {name=p18 sig_type=std_logic lab=fin4}
C {lab_pin.sym} 1580 -590 0 1 {name=p19 sig_type=std_logic lab=out0}
C {lab_pin.sym} 1420 -680 0 1 {name=p20 sig_type=std_logic lab=in0}
