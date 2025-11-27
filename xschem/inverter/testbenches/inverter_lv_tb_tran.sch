v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Parameterizable LV Inverter} 420 -1710 0 0 1 1 {}
N 840 -840 840 -780 {
lab=vin}
N 840 -720 840 -660 {
lab=GND}
N 1060 -800 1060 -660 {
lab=GND}
N 840 -840 1000 -840 {
lab=vin}
N 720 -720 720 -660 {
lab=GND}
N 820 -840 840 -840 {
lab=vin}
N 720 -840 720 -780 {
lab=VDD}
N 1060 -1020 1060 -880 {
lab=VDD}
N 1060 -880 1740 -880 {lab=VDD}
N 1560 -800 1740 -800 {lab=GND}
N 1330 -840 1360 -840 {lab=vout2}
N 1160 -840 1180 -840 {lab=vout1}
N 1160 -970 1160 -840 {lab=vout1}
N 1140 -840 1160 -840 {lab=vout1}
N 1160 -970 1220 -970 {lab=vout1}
N 1330 -930 1330 -840 {lab=vout2}
N 1320 -840 1330 -840 {lab=vout2}
N 1330 -930 1360 -930 {lab=vout2}
N 1530 -840 1550 -840 {lab=vout3}
N 1530 -960 1540 -960 {lab=vout3}
N 1530 -960 1530 -840 {lab=vout3}
N 1500 -840 1530 -840 {lab=vout3}
N 1560 -750 1750 -750 {lab=GND}
N 1560 -800 1560 -750 {lab=GND}
N 1060 -800 1560 -800 {lab=GND}
N 2030 -780 2030 -740 {lab=GND}
N 1750 -740 2030 -740 {lab=GND}
N 1750 -750 1750 -740 {lab=GND}
N 1820 -840 2030 -840 {lab=vout}
N 1680 -930 1680 -840 {lab=vout4}
N 1670 -930 1680 -930 {lab=vout4}
C {devices/code_shown.sym} 340 -710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 340 -1210 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.options savecurrents
.control
save all



* Transient Analysis
tran 1p 5n

plot vin vout1 vout2 vout3 vout4 vout
plot vout1 vout
 
*quit
.endc
"}
C {devices/vsource.sym} 720 -750 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 720 -660 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1060 -660 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 820 -840 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 840 -750 0 0 {name=vin value="pulse(0 1.8 0 10p 10p 1n 2n)"}
C {devices/gnd.sym} 840 -660 0 0 {name=l5 lab=GND}
C {vdd.sym} 1060 -1020 0 0 {name=l6 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {vdd.sym} 720 -840 0 0 {name=l7 lab=VDD}
C {inverter/inverter_lv.sym} 1060 -840 0 0 {name=x1 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=1}
C {inverter/inverter_lv.sym} 1240 -840 0 0 {name=x2 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {inverter/inverter_lv.sym} 1420 -840 0 0 {name=x3 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_pin.sym} 1220 -970 0 1 {name=p1 sig_type=std_logic lab=vout1}
C {lab_pin.sym} 1360 -930 0 1 {name=p3 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 1540 -960 0 1 {name=p4 sig_type=std_logic lab=vout3}
C {inverter/inverter_lv.sym} 1600 -840 0 0 {name=x4 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {lab_pin.sym} 2030 -840 0 1 {name=p5 sig_type=std_logic lab=vout}
C {capa.sym} 2030 -810 0 0 {name=C1
m=1
value=16f
footprint=1206
device="ceramic capacitor"}
C {inverter/inverter_lv.sym} 1740 -840 0 0 {name=x5 W_P=2u L_P=0.13u W_N=1u L_N=0.13u n=1}
C {lab_pin.sym} 1680 -930 0 1 {name=p6 sig_type=std_logic lab=vout4}
