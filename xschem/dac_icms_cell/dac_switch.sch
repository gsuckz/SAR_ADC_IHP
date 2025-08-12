v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Switch para celda unitaria DAC} 900 -1500 0 0 1 1 {}
T {di_spdt_ctrl = 1, di_spdt_ctrl_n = 0: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0, di_spdt_ctrl_n = 1: v_c connected to v_b, v_a = HIGH-Z} 900 -1360 0 0 0.4 0.4 {}
N 1280 -720 1280 -620 {
lab=v_c}
N 880 -620 1000 -620 {
lab=v_a}
N 1060 -740 1060 -660 {
lab=VDD}
N 1060 -580 1060 -500 {
lab=VSS}
N 1080 -700 1080 -660 {
lab=di_spdt_ctrl_n}
N 1080 -700 1100 -700 {
lab=di_spdt_ctrl_n}
N 1100 -740 1100 -700 {
lab=di_spdt_ctrl_n}
N 1080 -580 1080 -540 {
lab=di_spdt_ctrl}
N 1080 -540 1100 -540 {
lab=di_spdt_ctrl}
N 1100 -540 1100 -500 {
lab=di_spdt_ctrl}
N 1140 -1100 1220 -1100 {lab=di_spdt_ctrl}
N 1360 -1100 1440 -1100 {lab=di_spdt_ctrl_n}
N 1280 -1060 1280 -1040 {lab=VSS}
N 1280 -1160 1280 -1140 {lab=VDD}
N 1730 -510 1730 -480 {
lab=VSS}
N 1670 -540 1730 -540 {
lab=VSS}
N 1730 -620 1730 -570 {
lab=#net1}
N 1770 -660 1770 -540 {lab=v_b}
N 1450 -700 1450 -660 {
lab=di_spdt_ctrl}
N 1450 -700 1470 -700 {
lab=di_spdt_ctrl}
N 1470 -740 1470 -700 {
lab=di_spdt_ctrl}
N 1450 -580 1450 -540 {
lab=di_spdt_ctrl_n}
N 1450 -540 1470 -540 {
lab=di_spdt_ctrl_n}
N 1470 -540 1470 -500 {
lab=di_spdt_ctrl_n}
N 1530 -620 1730 -620 {lab=#net1}
N 1730 -630 1730 -620 {
lab=#net1}
N 1670 -480 1730 -480 {lab=VSS}
N 1670 -540 1670 -480 {lab=VSS}
N 1700 -660 1730 -660 {lab=VDD}
N 1700 -690 1700 -660 {lab=VDD}
N 1700 -690 1730 -690 {lab=VDD}
N 1280 -620 1300 -620 {lab=v_c}
N 1260 -620 1280 -620 {lab=v_c}
N 1160 -620 1200 -620 {lab=#net2}
N 1360 -620 1370 -620 {lab=#net3}
C {devices/iopin.sym} 880 -620 0 1 {name=p2 lab=v_a}
C {devices/iopin.sym} 1280 -720 3 0 {name=p1 lab=v_c}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1280 -1160 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 1280 -1040 1 0 {name=p11 lab=VSS}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1080 -620 0 0 {name=x1 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1440 -1100 2 0 {name=p27 sig_type=std_logic lab=di_spdt_ctrl_n}
C {inverter/inverter_lv.sym} 1280 -1100 0 0 {name=x8 W_P=W_P_TG L_P=L_P_TG W_N=W_N_TG L_N=L_N_TG n=n}
C {devices/ipin.sym} 1140 -1100 0 0 {name=p3 lab=di_spdt_ctrl}
C {devices/lab_pin.sym} 1100 -500 3 0 {name=p8 sig_type=std_logic lab=di_spdt_ctrl}
C {devices/lab_pin.sym} 1060 -500 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 -740 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -740 1 0 {name=p5 sig_type=std_logic lab=di_spdt_ctrl_n}
C {devices/lab_pin.sym} 1730 -690 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1730 -480 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1770 -600 0 0 {name=p17 lab=v_b}
C {sg13g2_pr/sg13_lv_nmos.sym} 1750 -540 0 1 {name=M1
l=0.2u
w=0.5u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1750 -660 0 1 {name=M3
l=0.2u
w=1u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1450 -620 0 1 {name=x2 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {devices/lab_pin.sym} 1470 -740 1 0 {name=p14 sig_type=std_logic lab=di_spdt_ctrl}
C {devices/lab_pin.sym} 1470 -580 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1470 -660 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1470 -500 3 0 {name=p18 sig_type=std_logic lab=di_spdt_ctrl_n}
C {vsource.sym} 1230 -620 1 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1330 -620 3 0 {name=V2 value=0 savecurrent=false}
