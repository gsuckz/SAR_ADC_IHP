v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1240 -570 1240 -450 {lab=v_top}
N 2120 -500 2120 -460 {
lab=a_sample}
N 2120 -900 2120 -860 {
lab=a_sample_n}
N 2150 -820 2160 -820 {
lab=v_cm}
N 2160 -820 2160 -760 {
lab=v_cm}
N 2080 -820 2090 -820 {
lab=v_top}
N 2080 -820 2080 -760 {
lab=v_top}
N 1960 -760 2080 -760 {
lab=v_top}
N 2080 -540 2090 -540 {
lab=v_top}
N 2080 -600 2080 -540 {
lab=v_top}
N 1960 -600 2080 -600 {
lab=v_top}
N 2160 -600 2160 -540 {
lab=v_cm}
N 2150 -540 2160 -540 {
lab=v_cm}
N 2120 -820 2120 -720 {
lab=VDD}
N 2120 -720 2260 -720 {
lab=VDD}
N 2120 -640 2120 -540 {
lab=VSS}
N 2260 -640 2260 -460 {
lab=VSS}
N 2120 -640 2260 -640 {
lab=VSS}
N 1960 -680 1960 -600 {
lab=v_top}
N 1920 -680 1960 -680 {
lab=v_top}
N 1960 -760 1960 -680 {
lab=v_top}
N 2380 -680 2380 -600 {
lab=v_cm}
N 2380 -680 2420 -680 {
lab=v_cm}
N 2380 -760 2380 -680 {
lab=v_cm}
N 2260 -900 2260 -720 {lab=VDD}
N 2160 -760 2380 -760 {lab=v_cm}
N 2160 -600 2380 -600 {lab=v_cm}
N 715 -1475 715 -1375 {
lab=v_c}
N 315 -1375 435 -1375 {
lab=v_in}
N 595 -1375 715 -1375 {
lab=v_c}
N 715 -1375 935 -1375 {
lab=v_c}
N 495 -1495 495 -1415 {
lab=VDD}
N 495 -1335 495 -1255 {
lab=VSS}
N 515 -1455 515 -1415 {
lab=b_sample_n}
N 515 -1455 535 -1455 {
lab=b_sample_n}
N 535 -1495 535 -1455 {
lab=b_sample_n}
N 515 -1335 515 -1295 {
lab=b_sample}
N 515 -1295 535 -1295 {
lab=b_sample}
N 535 -1295 535 -1255 {
lab=b_sample}
N 845 -1015 845 -985 {
lab=VSS}
N 1015 -1335 1015 -1295 {
lab=#net1}
N 1095 -1375 1295 -1375 {lab=v_cm}
N 815 -1165 845 -1165 {lab=VDD}
N 815 -1195 815 -1165 {lab=VDD}
N 815 -1195 845 -1195 {lab=VDD}
N 1015 -1445 1015 -1415 {lab=#net2}
N 1525 -1155 1525 -1075 {lab=d}
N 1525 -1195 1685 -1195 {lab=bit}
N 815 -1045 845 -1045 {lab=VSS}
N 815 -1045 815 -1015 {lab=VSS}
N 815 -1015 845 -1015 {lab=VSS}
N 715 -1375 715 -1095 {lab=v_c}
N 845 -1095 845 -1075 {
lab=v_c}
N 885 -1045 885 -1005 {lab=#net3}
N 885 -1005 1105 -1005 {lab=#net3}
N 885 -1155 1105 -1155 {lab=#net4}
N 885 -1165 885 -1155 {lab=#net4}
N 1225 -1155 1405 -1155 {lab=#net5}
N 1405 -1175 1405 -1155 {lab=#net5}
N 1225 -1055 1405 -1055 {lab=#net6}
N 1225 -1055 1225 -1005 {lab=#net6}
N 1495 -1445 1755 -1445 {lab=#net7}
N 1495 -1345 1675 -1345 {lab=#net8}
N 1495 -1345 1495 -1295 {lab=#net8}
N 1015 -1445 1375 -1445 {lab=#net2}
N 1015 -1295 1375 -1295 {lab=#net1}
N 1685 -1195 1685 -1035 {lab=bit}
N 1525 -1035 1585 -1035 {lab=#net9}
N 1665 -1035 1685 -1035 {lab=bit}
N 715 -1095 845 -1095 {lab=v_c}
N 845 -1135 845 -1095 {
lab=v_c}
N 1755 -1395 1755 -1345 {lab=#net7}
N 1755 -1395 1785 -1395 {lab=#net7}
N 1755 -1445 1755 -1395 {lab=#net7}
N 1240 -670 1240 -630 {lab=v_c}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 1525 -1115 0 1 {name=p14 lab=d}
C {devices/iopin.sym} 1240 -450 1 0 {name=p6 lab=v_top}
C {dac_icms_cell/dac_switch_n.sym} 420 -900 2 0 {name=x1 W_P=W_P L_P_TG=L_P_SPDT  W_N=W_N L_N_TG=L_N_SPDT n=\{N\}}
C {devices/ipin.sym} 2120 -460 1 1 {name=p4 lab=a_sample}
C {devices/ipin.sym} 2120 -900 3 1 {name=p7 lab=a_sample_n}
C {devices/lab_pin.sym} 2260 -900 1 0 {name=p8 lab=VDD}
C {devices/lab_pin.sym} 2260 -460 3 0 {name=p9 lab=VSS}
C {devices/lab_pin.sym} 2420 -680 2 0 {name=p11 lab=v_cm}
C {sg13g2_pr/cap_cmim.sym} 1240 -600 0 0 {name=C1
model=cap_cmim
w=3e-6
l=3e-6
m=N
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 2120 -520 3 0 {name=M1
l=L_N_SPDT
w=W_N_SPDT
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 2120 -840 1 0 {name=M2
l=L_P_SPDT
w=W_P_SPDT
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1920 -680 0 0 {name=p10 sig_type=std_logic lab=v_top}
C {devices/iopin.sym} 315 -1375 0 1 {name=p12 lab=v_in}
C {devices/lab_pin.sym} 495 -1255 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 495 -1495 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 845 -1195 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 845 -985 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1295 -1375 0 0 {name=p22 lab=v_cm}
C {sg13g2_pr/sg13_lv_nmos.sym} 865 -1045 0 1 {name=M3
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 865 -1165 0 1 {name=M4
l=0.13u
w=1u
ng=1
m=n
model=sg13_lv_pmos
spiceprefix=X
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1015 -1375 0 1 {name=x2 W_P=W_P L_P=L_P_SPDT  W_N=W_N L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 1035 -1335 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1035 -1415 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 515 -1375 0 0 {name=x3 W_P=W_P L_P=L_P_SPDT  W_N=W_N L_N=L_N_SPDT n=n}
C {devices/ipin.sym} 1685 -1135 0 1 {name=p25 lab=bit}
C {sg13g2_stdcells/sg13g2_nand2_1.sym} 1465 -1175 0 1 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1465 -1055 2 0 {name=x46 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 535 -1495 1 0 {name=p26 lab=b_sample_n}
C {buffer/buffer_lv.sym} 1165 -1155 0 1 {name=x4 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1165 -1195 1 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1165 -1115 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1165 -1005 0 1 {name=x5 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1165 -1045 1 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1165 -965 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 535 -1255 3 0 {name=p32 lab=b_sample}
C {buffer/buffer_lv.sym} 1435 -1445 0 1 {name=x7 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1435 -1485 1 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1435 -1405 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 1435 -1295 0 1 {name=x9 W_P_INV=3.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {devices/lab_pin.sym} 1435 -1335 1 0 {name=p35 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1435 -1255 3 0 {name=p36 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1625 -1035 2 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ipin.sym} 1905 -1415 0 1 {name=p37 lab=inv_vcm}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 1845 -1395 2 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} 1985 -1375 2 0 {name=p41 sig_type=std_logic lab=b_sample_n}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1945 -1375 2 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1715 -1345 2 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 1240 -670 1 0 {name=p5 sig_type=std_logic lab=v_c}
C {lab_pin.sym} 715 -1475 1 0 {name=p3 sig_type=std_logic lab=v_c}
