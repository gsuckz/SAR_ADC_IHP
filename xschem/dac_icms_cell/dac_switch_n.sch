v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Switch para celda unitaria DAC} 900 -1500 0 0 1 1 {}
T {di_spdt_ctrl = 1, di_spdt_ctrl_n = 0: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0, di_spdt_ctrl_n = 1: v_c connected to v_b, v_a = HIGH-Z} 900 -1360 0 0 0.4 0.4 {}
N 985 -865 985 -765 {
lab=v_cap}
N 585 -765 705 -765 {
lab=v_in}
N 865 -765 985 -765 {
lab=v_cap}
N 985 -765 1205 -765 {
lab=v_cap}
N 765 -885 765 -805 {
lab=VDD}
N 765 -725 765 -645 {
lab=VSS}
N 785 -845 785 -805 {
lab=sample}
N 785 -845 805 -845 {
lab=sample}
N 805 -885 805 -845 {
lab=sample}
N 785 -725 785 -685 {
lab=sample_n}
N 785 -685 805 -685 {
lab=sample_n}
N 805 -685 805 -645 {
lab=sample_n}
N 1115 -405 1115 -375 {
lab=VSS}
N 1285 -725 1285 -685 {
lab=#net1}
N 1365 -765 1565 -765 {lab=v_cm}
N 1085 -555 1115 -555 {lab=VDD}
N 1085 -585 1085 -555 {lab=VDD}
N 1085 -585 1115 -585 {lab=VDD}
N 1285 -835 1285 -805 {lab=#net2}
N 1795 -545 1795 -465 {lab=d}
N 1795 -585 1955 -585 {lab=bit}
N 1085 -435 1115 -435 {lab=VSS}
N 1085 -435 1085 -405 {lab=VSS}
N 1085 -405 1115 -405 {lab=VSS}
N 985 -765 985 -485 {lab=v_cap}
N 1115 -485 1115 -465 {
lab=v_cap}
N 1155 -435 1155 -395 {lab=#net3}
N 1155 -395 1375 -395 {lab=#net3}
N 1155 -545 1375 -545 {lab=#net4}
N 1155 -555 1155 -545 {lab=#net4}
N 1495 -545 1675 -545 {lab=#net5}
N 1675 -565 1675 -545 {lab=#net5}
N 1495 -445 1675 -445 {lab=#net6}
N 1495 -445 1495 -395 {lab=#net6}
N 1765 -835 2025 -835 {lab=#net7}
N 1765 -735 1945 -735 {lab=#net8}
N 1765 -735 1765 -685 {lab=#net8}
N 1285 -835 1645 -835 {lab=#net2}
N 1285 -685 1645 -685 {lab=#net1}
N 1955 -585 1955 -425 {lab=bit}
N 1795 -425 1855 -425 {lab=#net9}
N 1935 -425 1955 -425 {lab=bit}
N 985 -485 1115 -485 {lab=v_cap}
N 1115 -525 1115 -485 {
lab=v_cap}
N 2025 -785 2025 -735 {lab=#net7}
N 2025 -785 2055 -785 {lab=#net7}
N 2025 -835 2025 -785 {lab=#net7}
C {devices/iopin.sym} 585 -765 0 1 {name=p2 lab=v_in}
C {devices/iopin.sym} 985 -865 3 0 {name=p1 lab=v_cap}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 1255 -1105 0 0 {name=p3 lab=d}
C {devices/lab_pin.sym} 765 -645 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 765 -885 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1115 -585 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1115 -375 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1565 -765 0 0 {name=p17 lab=v_cm}
C {sg13g2_pr/sg13_lv_nmos.sym} 1135 -435 0 1 {name=M1
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1135 -555 0 1 {name=M3
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1285 -765 0 1 {name=x2 W_P=W_P L_P=L_P_TG  W_N=W_N L_N=L_N_TG n=n}
C {devices/lab_pin.sym} 1305 -725 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1305 -805 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 785 -765 0 0 {name=x1 W_P=W_P L_P=L_P_TG  W_N=W_N L_N=L_N_TG n=n}
C {devices/ipin.sym} 1955 -525 0 1 {name=p19 lab=bit}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1735 -565 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1735 -445 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 805 -885 1 0 {name=p21 lab=sample}
C {devices/lab_pin.sym} 1795 -505 2 0 {name=p22 sig_type=std_logic lab=d}
C {buffer/buffer_lv.sym} 1435 -545 0 1 {name=x4 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1435 -585 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1435 -505 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1435 -395 0 1 {name=x5 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1435 -435 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1435 -355 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 805 -645 3 0 {name=p4 lab=sample_n}
C {buffer/buffer_lv.sym} 1705 -835 0 1 {name=x7 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1705 -875 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1705 -795 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1705 -685 0 1 {name=x9 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1705 -725 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1705 -645 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1895 -425 2 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 2175 -805 0 1 {name=p40 lab=inv_vcm}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 2115 -785 2 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 2255 -765 2 0 {name=p41 sig_type=std_logic lab=sample}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2215 -765 2 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1985 -735 2 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 1375 -1145 3 0 {name=p127 sig_type=std_logic lab=VSS}
C {iopin.sym} 1375 -1125 1 0 {name=p139 sig_type=std_logic lab=VDD}
