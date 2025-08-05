v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 1510 -1240 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 880 -1560 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1235 -720 0 0 0.2 0.2 {}
N 1460 -880 1460 -850 {lab=#net1}
N 1440 -1135 1440 -1000 {lab=#net2}
N 1265 -1135 1440 -1135 {lab=#net2}
N 1260 -940 1400 -940 {lab=#net3}
N 1260 -940 1260 -930 {lab=#net3}
N 1255 -930 1260 -930 {lab=#net3}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1500 -1000 3 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 1480 -1000 3 0 {name=p2 lab=A}
C {devices/iopin.sym} 1500 -880 1 0 {name=p20 lab=VDD}
C {devices/ipin.sym} 1135 -930 0 0 {name=p14 lab=D}
C {devices/iopin.sym} 1145 -1135 3 0 {name=p3 lab=B}
C {devices/iopin.sym} 1460 -790 1 0 {name=p6 lab=vtop}
C {dac_icms_cell/dac_switch.sym} 1460 -940 2 0 {name=x1 W_P_TG=3.0u L_P_TG=0.13u W_N_TG=1.0u L_N_TG=0.13u n=\{1\}}
C {capa.sym} 1460 -820 0 0 {name=C1
m=n
value=Cu
footprint=1206
device="ceramic capacitor"}
C {buffer/buffer_lv.sym} 1205 -1135 0 0 {name=x35 W_P_INV=10.0u L_P_INV=0.13u W_N_INV=10.0u L_N_INV=0.13u}
C {lab_pin.sym} 1205 -1175 1 0 {name=p143 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1205 -1095 3 0 {name=p144 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1195 -930 0 0 {name=x2 W_P_INV=10.0u L_P_INV=0.13u W_N_INV=10.0u L_N_INV=0.13u}
C {lab_pin.sym} 1195 -970 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1195 -890 3 0 {name=p4 sig_type=std_logic lab=VSS}
