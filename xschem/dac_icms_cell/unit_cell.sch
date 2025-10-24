v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 880 -1560 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 1500 -1460 0 0 0.4 0.4 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 1245 -1055 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1960 -735 0 0 0.2 0.2 {}
N 825 -390 890 -390 {lab=v_top}
N 825 -390 825 -325 {lab=v_top}
N 825 -445 825 -390 {lab=v_top}
N 495 -1005 615 -1005 {
lab=v_in}
N 775 -1005 895 -1005 {
lab=#net1}
N 895 -1005 1115 -1005 {
lab=#net1}
N 675 -1125 675 -1045 {
lab=VDD}
N 675 -965 675 -885 {
lab=VSS}
N 695 -1085 695 -1045 {
lab=b_sample_n}
N 695 -1085 715 -1085 {
lab=b_sample_n}
N 715 -1125 715 -1085 {
lab=b_sample_n}
N 695 -965 695 -925 {
lab=b_sample}
N 695 -925 715 -925 {
lab=b_sample}
N 715 -925 715 -885 {
lab=b_sample}
N 1025 -645 1025 -615 {
lab=VSS}
N 1195 -965 1195 -925 {
lab=#net2}
N 1275 -1005 1475 -1005 {lab=v_cm}
N 995 -795 1025 -795 {lab=VDD}
N 995 -825 995 -795 {lab=VDD}
N 995 -825 1025 -825 {lab=VDD}
N 1195 -1075 1195 -1045 {lab=#net3}
N 1705 -785 1705 -705 {lab=d}
N 995 -675 1025 -675 {lab=VSS}
N 995 -675 995 -645 {lab=VSS}
N 995 -645 1025 -645 {lab=VSS}
N 895 -755 895 -725 {lab=#net1}
N 1025 -725 1025 -705 {
lab=#net1}
N 1065 -675 1065 -635 {lab=#net4}
N 1065 -635 1285 -635 {lab=#net4}
N 1065 -785 1285 -785 {lab=#net5}
N 1065 -795 1065 -785 {lab=#net5}
N 1405 -785 1585 -785 {lab=#net6}
N 1585 -805 1585 -785 {lab=#net6}
N 1405 -685 1585 -685 {lab=#net7}
N 1405 -685 1405 -635 {lab=#net7}
N 1675 -975 1675 -925 {lab=#net8}
N 1195 -1075 1555 -1075 {lab=#net3}
N 1195 -925 1555 -925 {lab=#net2}
N 1865 -825 1865 -665 {lab=bit}
N 895 -725 1025 -725 {lab=#net1}
N 1025 -765 1025 -725 {
lab=#net1}
N 1675 -975 1735 -975 {lab=#net8}
N 1815 -1025 1815 -975 {lab=#net9}
N 1675 -1075 1815 -1075 {lab=#net9}
N 1815 -1025 1845 -1025 {lab=#net9}
N 1815 -1075 1815 -1025 {lab=#net9}
N 825 -755 825 -505 {lab=#net1}
N 825 -755 895 -755 {lab=#net1}
N 895 -1005 895 -755 {lab=#net1}
N 1705 -665 1865 -665 {lab=bit}
N 1830 -825 1865 -825 {lab=bit}
N 1705 -825 1750 -825 {lab=#net10}
C {devices/iopin.sym} 825 -325 1 0 {name=p6 lab=v_top}
C {devices/ipin.sym} 970 -430 3 1 {name=p4 lab=a_sample}
C {devices/ipin.sym} 970 -350 1 1 {name=p7 lab=a_sample_n}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 970 -390 0 1 {name=x2 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 990 -430 1 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 990 -350 3 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 1050 -390 2 0 {name=p11 lab=v_cm}
C {devices/ipin.sym} 715 -885 0 1 {name=p13 lab=b_sample}
C {devices/ipin.sym} 715 -1125 0 1 {name=p15 lab=b_sample_n}
C {sg13g2_pr/cap_cmim.sym} 825 -475 0 0 {name=C1
model=cap_cmim
w=3e-6
l=3e-6
m=n
spiceprefix=X}
C {devices/iopin.sym} 495 -1005 0 1 {name=p10 lab=v_in}
C {devices/ipin.sym} 1705 -755 0 0 {name=p18 lab=d}
C {devices/lab_pin.sym} 675 -885 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 675 -1125 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1025 -825 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1025 -615 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1475 -1005 0 0 {name=p24 lab=v_cm}
C {sg13g2_pr/sg13_lv_nmos.sym} 1045 -675 0 1 {name=M1
l=0.13u
w=4u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1045 -795 0 1 {name=M3
l=0.13u
w=4u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1195 -1005 0 1 {name=x3 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/lab_pin.sym} 1215 -965 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1215 -1045 1 0 {name=p26 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 695 -1005 0 0 {name=x4 W_P=W_P_SPDT L_P=L_P_SPDT  W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/ipin.sym} 1865 -765 0 1 {name=p28 lab=bit}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1645 -805 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1645 -685 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {buffer/buffer_lv.sym} 1345 -785 0 1 {name=x5 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1345 -825 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1345 -745 3 0 {name=p32 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1345 -635 0 1 {name=x6 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1345 -675 1 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1345 -595 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1615 -1075 0 1 {name=x7 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1615 -1115 1 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1615 -1035 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1615 -925 0 1 {name=x9 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1615 -965 1 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1615 -885 3 0 {name=p39 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1790 -825 2 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 1965 -1045 0 1 {name=p40 lab=inv_vcm}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1905 -1025 2 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2045 -1005 2 0 {name=p41 sig_type=std_logic lab=b_sample}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2005 -1005 2 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1775 -975 2 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 450 -1520 3 0 {name=p127 sig_type=std_logic lab=VSS}
C {iopin.sym} 450 -1500 1 0 {name=p139 sig_type=std_logic lab=VDD}
