v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 1035 -1575 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 1480 -1640 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 2065 -980 0 0 0.2 0.2 {}
N 930 -635 995 -635 {lab=v_top}
N 930 -635 930 -570 {lab=v_top}
N 930 -690 930 -635 {lab=v_top}
N 600 -1250 720 -1250 {
lab=v_in}
N 880 -1250 1000 -1250 {
lab=TOP_C}
N 1000 -1250 1220 -1250 {
lab=TOP_C}
N 780 -1370 780 -1290 {
lab=VDD}
N 780 -1210 780 -1130 {
lab=VSS}
N 800 -1330 800 -1290 {
lab=b_sample_n}
N 800 -1330 820 -1330 {
lab=b_sample_n}
N 820 -1370 820 -1330 {
lab=b_sample_n}
N 800 -1210 800 -1170 {
lab=b_sample}
N 800 -1170 820 -1170 {
lab=b_sample}
N 820 -1170 820 -1130 {
lab=b_sample}
N 1130 -890 1130 -860 {
lab=VSS}
N 1300 -1210 1300 -1170 {
lab=tg_vcm_ctrl_n}
N 1100 -1040 1130 -1040 {lab=VDD}
N 1100 -1070 1100 -1040 {lab=VDD}
N 1100 -1070 1130 -1070 {lab=VDD}
N 1300 -1320 1300 -1290 {lab=tg_vcm_ctrl}
N 1810 -1030 1810 -950 {lab=d}
N 1100 -920 1130 -920 {lab=VSS}
N 1100 -920 1100 -890 {lab=VSS}
N 1100 -890 1130 -890 {lab=VSS}
N 1000 -1000 1000 -970 {lab=TOP_C}
N 1130 -970 1130 -950 {
lab=TOP_C}
N 1170 -920 1170 -880 {lab=n_ctrl}
N 1970 -1070 1970 -910 {lab=bit}
N 1810 -910 1970 -910 {lab=bit}
N 1000 -970 1130 -970 {lab=TOP_C}
N 1130 -1010 1130 -970 {
lab=TOP_C}
N 930 -1000 930 -750 {lab=TOP_C}
N 930 -1000 1000 -1000 {lab=TOP_C}
N 1000 -1250 1000 -1000 {lab=TOP_C}
N 2030 -1300 2030 -1220 {lab=b_sample_n}
N 2030 -1340 2110 -1340 {lab=d}
N 2110 -1340 2110 -1180 {lab=d}
N 2030 -1180 2110 -1180 {lab=d}
N 1510 -1050 1550 -1050 {lab=p_ctrl_2}
N 1360 -1050 1370 -1050 {lab=p_ctrl_3}
N 1170 -1050 1220 -1050 {lab=p_ctrl}
N 1170 -1050 1170 -1040 {lab=p_ctrl}
N 1260 -920 1590 -920 {lab=VDD}
N 1260 -840 1590 -840 {lab=VSS}
N 1170 -880 1180 -880 {lab=n_ctrl}
N 1320 -880 1330 -880 {lab=n_ctrl_3}
N 1470 -880 1510 -880 {lab=n_ctrl_2}
N 1650 -880 1690 -880 {lab=n_ctrl_1}
N 1690 -930 1690 -880 {lab=n_ctrl_1}
N 1380 -1250 1400 -1250 {lab=v_cm}
N 1690 -1380 1730 -1380 {lab=tg_vcm_ctrl_2}
N 1540 -1380 1550 -1380 {lab=tg_vcm_ctrl_3}
N 1715 -1175 1755 -1175 {lab=tg_vcm_ctrl_n_2}
N 1565 -1175 1575 -1175 {lab=tg_vcm_ctrl_n_3}
N 1300 -1170 1425 -1170 {lab=tg_vcm_ctrl_n}
N 1425 -1175 1425 -1170 {lab=tg_vcm_ctrl_n}
N 1305 -1380 1400 -1380 {lab=tg_vcm_ctrl}
N 1305 -1380 1305 -1320 {lab=tg_vcm_ctrl}
N 1300 -1320 1305 -1320 {lab=tg_vcm_ctrl}
N 1870 -1320 1910 -1320 {lab=tg_vcm_ctrl_1}
N 1870 -1380 1870 -1320 {lab=tg_vcm_ctrl_1}
N 1895 -1200 1910 -1200 {lab=tg_vcm_ctrl_n_1}
N 1895 -1200 1895 -1175 {lab=tg_vcm_ctrl_n_1}
N 1955 -1070 1970 -1070 {lab=bit}
N 1810 -1070 1875 -1070 {lab=bit_n}
C {devices/iopin.sym} 930 -570 1 0 {name=p6 lab=v_top}
C {devices/ipin.sym} 1075 -675 3 1 {name=p4 lab=a_sample}
C {devices/ipin.sym} 1075 -595 1 1 {name=p7 lab=a_sample_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1075 -635 0 1 {name=x2 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 1095 -675 1 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 1095 -595 3 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 1155 -635 2 0 {name=p11 lab=v_cm}
C {devices/ipin.sym} 820 -1130 0 1 {name=p13 lab=b_sample}
C {devices/ipin.sym} 820 -1370 0 1 {name=p15 lab=b_sample_n}
C {sg13g2_pr/cap_cmim.sym} 930 -720 0 0 {name=C1
model=cap_cmim
w=3e-6
l=3e-6
m=n
spiceprefix=X}
C {devices/iopin.sym} 600 -1250 0 1 {name=p10 lab=v_in}
C {devices/ipin.sym} 1810 -1000 0 0 {name=p18 lab=d}
C {devices/lab_pin.sym} 780 -1130 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -1370 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1130 -1070 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1130 -860 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1400 -1250 0 0 {name=p24 lab=v_cm}
C {sg13g2_pr/sg13_lv_nmos.sym} 1150 -920 0 1 {name=M1
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1150 -1040 0 1 {name=M3
l=0.13u
w=2u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1300 -1250 0 1 {name=x3 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/lab_pin.sym} 1320 -1210 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1320 -1290 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 800 -1250 0 0 {name=x4 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/ipin.sym} 1970 -1010 0 1 {name=p28 lab=bit}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1750 -1050 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1750 -930 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 1450 -1090 3 1 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1450 -1010 1 1 {name=p34 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1915 -1070 2 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2030 -1260 2 0 {name=p41 sig_type=std_logic lab=b_sample_n}
C {iopin.sym} 485 -1580 3 0 {name=p127 sig_type=std_logic lab=VSS}
C {iopin.sym} 485 -1560 1 0 {name=p139 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1000 -1250 1 0 {name=p2 sig_type=std_logic lab=TOP_C}
C {sg13g2_stdcells/sg13g2_or2_1.sym} 1970 -1320 0 1 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 1970 -1200 2 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2110 -1340 1 0 {name=p1 sig_type=std_logic lab=d}
C {inverter/inverter_lv.sym} 1450 -1050 0 1 {name=x10 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {devices/lab_pin.sym} 1630 -1090 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1630 -1010 1 1 {name=p5 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1630 -1050 0 1 {name=x5 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {devices/lab_pin.sym} 1300 -1090 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1300 -1010 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1300 -1050 0 1 {name=x6 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {inverter/inverter_lv.sym} 1410 -880 0 1 {name=x11 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {inverter/inverter_lv.sym} 1590 -880 0 1 {name=x12 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {inverter/inverter_lv.sym} 1260 -880 0 1 {name=x13 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {devices/lab_pin.sym} 1630 -1420 3 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1630 -1340 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1630 -1380 0 1 {name=x7 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {devices/lab_pin.sym} 1810 -1420 3 1 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1810 -1340 1 1 {name=p27 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1810 -1380 0 1 {name=x9 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {devices/lab_pin.sym} 1480 -1420 3 1 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1480 -1340 1 1 {name=p30 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1480 -1380 0 1 {name=x14 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {devices/lab_pin.sym} 1655 -1215 3 1 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1655 -1135 1 1 {name=p32 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1655 -1175 0 1 {name=x15 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {devices/lab_pin.sym} 1835 -1215 3 1 {name=p35 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1835 -1135 1 1 {name=p36 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1835 -1175 0 1 {name=x16 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {devices/lab_pin.sym} 1505 -1215 3 1 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1505 -1135 1 1 {name=p38 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1505 -1175 0 1 {name=x17 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {devices/lab_pin.sym} 1410 -920 3 1 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1410 -840 1 1 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1325 -1380 3 1 {name=p43 sig_type=std_logic lab=tg_vcm_ctrl}
C {devices/lab_pin.sym} 1300 -1175 0 0 {name=p44 sig_type=std_logic lab=tg_vcm_ctrl_n}
C {devices/lab_pin.sym} 1545 -1380 3 1 {name=p45 sig_type=std_logic lab=tg_vcm_ctrl_3}
C {devices/lab_pin.sym} 1695 -1380 3 1 {name=p46 sig_type=std_logic lab=tg_vcm_ctrl_2}
C {devices/lab_pin.sym} 1895 -1320 3 1 {name=p47 sig_type=std_logic lab=tg_vcm_ctrl_1}
C {devices/lab_pin.sym} 1565 -1175 3 1 {name=p48 sig_type=std_logic lab=tg_vcm_ctrl_n_3}
C {devices/lab_pin.sym} 1740 -1175 3 1 {name=p49 sig_type=std_logic lab=tg_vcm_ctrl_n_2}
C {devices/lab_pin.sym} 1905 -1200 3 1 {name=p50 sig_type=std_logic lab=tg_vcm_ctrl_n_1}
C {devices/lab_pin.sym} 1185 -1050 3 1 {name=p51 sig_type=std_logic lab=p_ctrl}
C {devices/lab_pin.sym} 1170 -920 3 1 {name=p52 sig_type=std_logic lab=n_ctrl}
C {devices/lab_pin.sym} 1325 -880 3 1 {name=p53 sig_type=std_logic lab=n_ctrl_3}
C {devices/lab_pin.sym} 1495 -880 3 1 {name=p54 sig_type=std_logic lab=n_ctrl_2}
C {devices/lab_pin.sym} 1670 -880 3 1 {name=p55 sig_type=std_logic lab=n_ctrl_1}
C {devices/lab_pin.sym} 1360 -1050 3 1 {name=p56 sig_type=std_logic lab=p_ctrl_3}
C {devices/lab_pin.sym} 1525 -1050 3 1 {name=p57 sig_type=std_logic lab=p_ctrl_2}
C {devices/lab_pin.sym} 1690 -1050 3 1 {name=p58 sig_type=std_logic lab=p_ctrl_1}
C {devices/lab_pin.sym} 1850 -1070 1 1 {name=p59 sig_type=std_logic lab=bit_n}
