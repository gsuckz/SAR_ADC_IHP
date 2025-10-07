v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 750 -1220 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 880 -1560 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1235 -720 0 0 0.2 0.2 {}
N 1480 -745 1545 -745 {lab=v_top}
N 1480 -745 1480 -680 {lab=v_top}
N 1480 -800 1480 -745 {lab=v_top}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1400 -890 2 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 1520 -1000 3 0 {name=p2 lab=v_in}
C {devices/iopin.sym} 1560 -890 0 0 {name=p20 lab=VDD}
C {devices/ipin.sym} 1400 -920 0 0 {name=p14 lab=d}
C {devices/ipin.sym} 1440 -1000 3 1 {name=p3 lab=bit
}
C {devices/iopin.sym} 1480 -680 1 0 {name=p6 lab=v_top}
C {dac_icms_cell/dac_switch_n.sym} 1460 -940 2 0 {name=x1 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/iopin.sym} 1480 -1000 3 0 {name=p1 lab=v_cm}
C {devices/ipin.sym} 1625 -785 3 1 {name=p4 lab=a_sample}
C {devices/ipin.sym} 1625 -705 1 1 {name=p7 lab=a_sample_n}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1625 -745 0 0 {name=x2 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 1605 -785 0 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 1605 -705 0 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 1705 -745 2 0 {name=p11 lab=v_cm}
C {devices/ipin.sym} 1560 -935 0 1 {name=p13 lab=b_sample}
C {devices/ipin.sym} 1560 -920 0 1 {name=p15 lab=b_sample_n}
C {sg13g2_pr/cap_cmim.sym} 1480 -830 0 0 {name=C1
model=cap_cmim
w=2.6e-6
l=2.6e-6
m=n
spiceprefix=X}
