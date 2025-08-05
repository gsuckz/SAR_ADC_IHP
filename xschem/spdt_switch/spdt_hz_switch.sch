v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Single Pole, Double Throw (SPDT) Switch with High-Z with three TG} 390 -1720 0 0 1 1 {}
T {di_spdt_ctrl = 1, di_spdt_hz = 0: v_c connected to v_a, v_b = High-Z
di_spdt_ctrl = 0, di_spdt_hz = 0: v_c connected to v_b, v_a = High-Z
di_spdt_ctrl = X, di_spdt_hz = 1: v_c = High-Z} 930 -1590 0 0 0.4 0.4 {}
N 1140 -1340 1220 -1340 {lab=di_spdt_ctrl}
N 1360 -1340 1440 -1340 {lab=di_spdt_ctrl_n}
N 1280 -1300 1280 -1280 {lab=VSS}
N 1280 -1400 1280 -1380 {lab=VDD}
N 1140 -1060 1220 -1060 {lab=di_spdt_hz}
N 1360 -1060 1440 -1060 {lab=di_spdt_hz_n}
N 1280 -1020 1280 -1000 {lab=VSS}
N 1280 -1120 1280 -1100 {lab=VDD}
N 1280 -440 1520 -440 {
lab=#net1}
N 1280 -560 1280 -440 {lab=#net1}
N 1280 -840 1280 -720 {lab=v_c}
N 1160 -620 1240 -620 {
lab=VDD}
N 1200 -640 1240 -640 {
lab=di_spdt_hz_n}
N 1200 -660 1200 -640 {
lab=di_spdt_hz_n}
N 1160 -660 1200 -660 {
lab=di_spdt_hz_n}
N 1320 -620 1400 -620 {
lab=VSS}
N 1320 -640 1360 -640 {
lab=di_spdt_hz}
N 1360 -660 1360 -640 {
lab=di_spdt_hz}
N 1360 -660 1400 -660 {
lab=di_spdt_hz}
N 1040 -440 1280 -440 {
lab=#net1}
C {devices/iopin.sym} 1280 -840 3 0 {name=p1 lab=v_c}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1280 -1400 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 1280 -1280 1 0 {name=p11 lab=VSS}
C {lab_pin.sym} 1440 -1340 2 0 {name=p27 sig_type=std_logic lab=di_spdt_ctrl_n}
C {inverter/inverter_lv.sym} 1280 -1340 0 0 {name=x8 W_P=W_P_TG L_P=L_P_TG W_N=W_N_TG L_N=L_N_TG}
C {devices/ipin.sym} 1140 -1340 0 0 {name=p3 lab=di_spdt_ctrl}
C {inverter/inverter_lv.sym} 1280 -1060 0 0 {name=x3 W_P=W_P_TG L_P=L_P_TG W_N=W_N_TG L_N=L_N_TG}
C {devices/lab_pin.sym} 1280 -1120 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1280 -1000 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1280 -640 3 0 {name=x4 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG}
C {devices/lab_pin.sym} 1160 -620 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1400 -620 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 1140 -1060 0 0 {name=p17 lab=di_spdt_hz}
C {lab_pin.sym} 1440 -1060 2 0 {name=p18 sig_type=std_logic lab=di_spdt_hz_n}
C {lab_pin.sym} 1160 -660 0 0 {name=p21 sig_type=std_logic lab=di_spdt_hz_n}
C {lab_pin.sym} 1400 -660 2 0 {name=p22 sig_type=std_logic lab=di_spdt_hz}
