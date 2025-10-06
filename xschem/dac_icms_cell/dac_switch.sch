v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
T {Switch para celda unitaria DAC} 900 -1500 0 0 1 1 {}
T {di_spdt_ctrl = 1, di_spdt_ctrl_n = 0: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0, di_spdt_ctrl_n = 1: v_c connected to v_b, v_a = HIGH-Z} 900 -1360 0 0 0.4 0.4 {}
N 1280 -720 1280 -620 {
lab=v_cap}
N 880 -620 1000 -620 {
lab=v_in}
N 1160 -620 1280 -620 {
lab=v_cap}
N 1280 -620 1500 -620 {
lab=v_cap}
N 1060 -740 1060 -660 {
lab=VDD}
N 1060 -580 1060 -500 {
lab=VSS}
N 1080 -700 1080 -660 {
lab=sample}
N 1080 -700 1100 -700 {
lab=sample}
N 1100 -740 1100 -700 {
lab=sample}
N 1080 -580 1080 -540 {
lab=sample_n}
N 1080 -540 1100 -540 {
lab=sample_n}
N 1100 -540 1100 -500 {
lab=sample_n}
N 720 -1070 800 -1070 {lab=d}
N 940 -1070 1020 -1070 {lab=d_n}
N 860 -1030 860 -1010 {lab=VSS}
N 860 -1130 860 -1110 {lab=VDD}
N 1410 -260 1410 -230 {
lab=VSS}
N 1410 -340 1410 -320 {
lab=v_cap}
N 1380 -410 1410 -410 {lab=VDD}
N 1380 -440 1380 -410 {lab=VDD}
N 1380 -440 1410 -440 {lab=VDD}
N 2090 -400 2090 -320 {lab=d}
N 2170 -440 2170 -280 {lab=bit}
N 1380 -290 1410 -290 {lab=VSS}
N 1380 -290 1380 -260 {lab=VSS}
N 1380 -260 1410 -260 {lab=VSS}
N 1280 -620 1280 -340 {lab=v_cap}
N 1280 -340 1410 -340 {lab=v_cap}
N 1410 -380 1410 -340 {
lab=v_cap}
N 1450 -290 1450 -250 {lab=#net1}
N 1450 -250 1670 -250 {lab=#net1}
N 1450 -400 1670 -400 {lab=#net2}
N 1450 -410 1450 -400 {lab=#net2}
N 1790 -400 1970 -400 {lab=#net3}
N 1970 -420 1970 -400 {lab=#net3}
N 1790 -300 1970 -300 {lab=#net4}
N 1790 -300 1790 -250 {lab=#net4}
N 2090 -280 2170 -280 {lab=bit}
N 1580 -580 1580 -540 {
lab=#net5}
N 1660 -620 1860 -620 {lab=v_cm}
N 1580 -690 1580 -660 {lab=#net6}
N 2360 -690 2360 -610 {lab=sample}
N 2360 -730 2440 -730 {lab=d}
N 2440 -730 2440 -570 {lab=d}
N 2360 -570 2440 -570 {lab=d}
N 2060 -690 2240 -690 {lab=#net7}
N 2240 -710 2240 -690 {lab=#net7}
N 2060 -590 2240 -590 {lab=#net8}
N 2060 -590 2060 -540 {lab=#net8}
N 1580 -690 1940 -690 {lab=#net6}
N 1580 -540 1940 -540 {lab=#net5}
C {devices/iopin.sym} 880 -620 0 1 {name=p2 lab=v_in}
C {devices/iopin.sym} 1280 -720 3 0 {name=p1 lab=v_cap}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 860 -1130 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 860 -1010 1 0 {name=p11 lab=VSS}
C {lab_pin.sym} 1020 -1070 2 0 {name=p27 sig_type=std_logic lab=d_n}
C {inverter/inverter_lv.sym} 860 -1070 0 0 {name=x8 W_P=W_P_TG L_P=L_P_TG W_N=W_N_TG L_N=L_N_TG n=n}
C {devices/ipin.sym} 720 -1070 0 0 {name=p3 lab=d}
C {devices/lab_pin.sym} 1060 -500 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 -740 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1410 -440 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1410 -230 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 1430 -290 0 1 {name=M1
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1430 -410 0 1 {name=M3
l=0.2u
w=1.2u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1080 -620 0 0 {name=x1 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {devices/ipin.sym} 2170 -360 0 0 {name=p19 lab=bit}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 2030 -420 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 2030 -300 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 1100 -740 1 0 {name=p21 lab=sample}
C {devices/lab_pin.sym} 2090 -360 2 0 {name=p22 sig_type=std_logic lab=d}
C {buffer/buffer_lv.sym} 1730 -400 0 1 {name=x4 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1730 -440 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1730 -360 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1730 -250 0 1 {name=x5 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1730 -290 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1730 -210 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1100 -500 3 0 {name=p4 lab=sample_n}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2130 -440 0 1 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/iopin.sym} 1860 -620 0 0 {name=p13 lab=v_cm}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1580 -620 0 1 {name=x3 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {devices/lab_pin.sym} 1600 -580 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1600 -660 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 2300 -710 0 1 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_or2_1.sym} 2300 -590 2 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2360 -650 2 0 {name=p20 sig_type=std_logic lab=sample}
C {buffer/buffer_lv.sym} 2000 -690 0 1 {name=x9 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2000 -730 1 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2000 -650 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 2000 -540 0 1 {name=x10 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 2000 -580 1 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2000 -500 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2440 -730 1 0 {name=p32 sig_type=std_logic lab=d}
