v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 1360 -1255 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 1600 -1390 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 2185 -730 0 0 0.2 0.2 {}
N 1050 -385 1115 -385 {lab=v_top}
N 1050 -385 1050 -320 {lab=v_top}
N 1050 -440 1050 -385 {lab=v_top}
N 720 -1000 840 -1000 {
lab=v_in}
N 1000 -1000 1120 -1000 {
lab=TOP_C}
N 1120 -1000 1340 -1000 {
lab=TOP_C}
N 900 -1120 900 -1040 {
lab=VDD}
N 900 -960 900 -880 {
lab=VSS}
N 920 -1080 920 -1040 {
lab=b_sample_n}
N 920 -1080 940 -1080 {
lab=b_sample_n}
N 940 -1120 940 -1080 {
lab=b_sample_n}
N 920 -960 920 -920 {
lab=b_sample}
N 920 -920 940 -920 {
lab=b_sample}
N 940 -920 940 -880 {
lab=b_sample}
N 1250 -640 1250 -610 {
lab=VSS}
N 1420 -960 1420 -920 {
lab=#net1}
N 1500 -1000 1700 -1000 {lab=v_cm}
N 1220 -790 1250 -790 {lab=VDD}
N 1220 -820 1220 -790 {lab=VDD}
N 1220 -820 1250 -820 {lab=VDD}
N 1420 -1070 1420 -1040 {lab=#net2}
N 1930 -780 1930 -700 {lab=d}
N 1930 -820 2090 -820 {lab=bit}
N 1220 -670 1250 -670 {lab=VSS}
N 1220 -670 1220 -640 {lab=VSS}
N 1220 -640 1250 -640 {lab=VSS}
N 1120 -750 1120 -720 {lab=TOP_C}
N 1250 -720 1250 -700 {
lab=TOP_C}
N 1290 -670 1290 -630 {lab=#net3}
N 1290 -630 1510 -630 {lab=#net3}
N 1290 -780 1510 -780 {lab=#net4}
N 1290 -790 1290 -780 {lab=#net4}
N 1630 -780 1810 -780 {lab=#net5}
N 1810 -800 1810 -780 {lab=#net5}
N 1630 -680 1810 -680 {lab=#net6}
N 1630 -680 1630 -630 {lab=#net6}
N 1900 -970 1900 -920 {lab=#net7}
N 1420 -1070 1780 -1070 {lab=#net2}
N 1420 -920 1780 -920 {lab=#net1}
N 2090 -820 2090 -660 {lab=bit}
N 1930 -660 1990 -660 {lab=#net8}
N 2070 -660 2090 -660 {lab=bit}
N 1120 -720 1250 -720 {lab=TOP_C}
N 1250 -760 1250 -720 {
lab=TOP_C}
N 1900 -970 1960 -970 {lab=#net7}
N 2030 -1070 2040 -1070 {lab=#net9}
N 1050 -750 1050 -500 {lab=TOP_C}
N 1050 -750 1120 -750 {lab=TOP_C}
N 1120 -1000 1120 -750 {lab=TOP_C}
N 2150 -1050 2150 -970 {lab=sample}
N 2150 -1090 2230 -1090 {lab=d}
N 2230 -1090 2230 -930 {lab=d}
N 2150 -930 2230 -930 {lab=d}
N 2030 -1070 2030 -1050 {lab=#net9}
N 1900 -1070 2030 -1070 {lab=#net9}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1050 -320 1 0 {name=p6 lab=v_top}
C {devices/ipin.sym} 1195 -425 3 1 {name=p4 lab=a_sample}
C {devices/ipin.sym} 1195 -345 1 1 {name=p7 lab=a_sample_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1195 -385 0 1 {name=x2 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 1215 -425 1 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 1215 -345 3 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 1275 -385 2 0 {name=p11 lab=v_cm}
C {devices/ipin.sym} 940 -880 0 1 {name=p13 lab=b_sample}
C {devices/ipin.sym} 940 -1120 0 1 {name=p15 lab=b_sample_n}
C {sg13g2_pr/cap_cmim.sym} 1050 -470 0 0 {name=C1
model=cap_cmim
w=3e-6
l=3e-6
m=n
spiceprefix=X}
C {devices/iopin.sym} 720 -1000 0 1 {name=p10 lab=v_in}
C {devices/ipin.sym} 1930 -750 0 0 {name=p18 lab=d}
C {devices/lab_pin.sym} 900 -880 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 -1120 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1250 -820 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1250 -610 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1700 -1000 0 0 {name=p24 lab=v_cm}
C {sg13g2_pr/sg13_lv_nmos.sym} 1270 -670 0 1 {name=M1
l=0.13u
w=4u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1270 -790 0 1 {name=M3
l=0.13u
w=4u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1420 -1000 0 1 {name=x3 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/lab_pin.sym} 1440 -960 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1440 -1040 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 920 -1000 0 0 {name=x4 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/ipin.sym} 2090 -760 0 1 {name=p28 lab=bit}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1870 -800 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1870 -680 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {buffer/buffer_lv.sym} 1570 -780 0 1 {name=x5 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1570 -820 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1570 -740 3 0 {name=p32 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1570 -630 0 1 {name=x6 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1570 -670 1 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1570 -590 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1840 -1070 0 1 {name=x7 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1840 -1110 1 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1840 -1030 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1840 -920 0 1 {name=x9 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1840 -960 1 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1840 -880 3 0 {name=p39 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2030 -660 2 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 2085 -1275 0 1 {name=p40 lab=inv_vcm}
C {devices/lab_pin.sym} 2655 -1040 2 0 {name=p41 sig_type=std_logic lab=b_sample}
C {iopin.sym} 605 -1330 3 0 {name=p127 sig_type=std_logic lab=VSS}
C {iopin.sym} 605 -1310 1 0 {name=p139 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1120 -1000 1 0 {name=p2 sig_type=std_logic lab=TOP_C}
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 2090 -1070 0 1 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_or2_1.sym} 2090 -950 2 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2150 -1010 2 0 {name=p20 sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 2230 -1090 1 0 {name=p1 sig_type=std_logic lab=d}
