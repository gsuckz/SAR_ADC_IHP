v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Cell for thermometer code including unit capacitor and SPDT switch with high-Z} 220 -1720 0 0 1 1 {}
T {v0, if di_clk = 0
v1, if di_clk = 1} 750 -1220 0 0 0.4 0.4 {}
T {di_clk = 1, di_cell_en = 1: v_c connected to v_a, v_b = High-Z
di_clk = 0, di_cell_en = 1: v_c connected to v_b, v_a = High-Z
di_clk = X, di_cell_en = 0: v_b = High-Z, v_a = High-Z} 880 -1560 0 0 0.4 0.4 {}
T {ToDo: What capacitor technology?
MIM and / or MOM capacitor?} 1235 -720 0 0 0.2 0.2 {}
N 1275 -1185 1405 -1185 {lab=#net1}
N 1155 -1345 1160 -1345 {lab=#net2}
N 1155 -1345 1155 -1245 {lab=#net2}
N 1080 -1345 1155 -1345 {lab=#net2}
N 1275 -1035 1275 -1010 {lab=v_top}
N 1275 -950 1275 -920 {lab=v_cm}
N 1095 -1035 1275 -1035 {lab=v_top}
N 1275 -1050 1275 -1035 {lab=v_top}
N 1275 -1185 1275 -1110 {lab=#net1}
N 1305 -1265 1305 -1245 {lab=#net3}
N 1200 -1245 1305 -1245 {lab=#net3}
N 1200 -1245 1200 -1180 {lab=#net3}
N 1155 -1175 1200 -1180 {lab=#net3}
N 1155 -1185 1155 -1175 {lab=#net3}
N 700 -1430 700 -1370 {lab=VDD}
N 780 -1330 895 -1330 {lab=bitn}
N 700 -1250 700 -1190 {lab=VDD}
N 780 -1150 895 -1150 {lab=dn}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1080 -1405 3 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 1405 -1245 3 0 {name=p23 lab=v_in}
C {devices/ipin.sym} 640 -1150 0 0 {name=p24 lab=d}
C {devices/ipin.sym} 640 -1330 3 1 {name=p25 lab=bit
}
C {devices/iopin.sym} 1095 -1035 1 0 {name=p26 lab=v_top}
C {devices/iopin.sym} 1305 -1325 3 0 {name=p27 lab=v_cm}
C {devices/ipin.sym} 1365 -1195 1 1 {name=p28 lab=b_sample}
C {devices/ipin.sym} 1365 -1215 3 1 {name=p29 lab=b_sample_n}
C {devices/lab_pin.sym} 1275 -920 2 0 {name=p30 lab=v_cm}
C {devices/ipin.sym} 1235 -980 3 1 {name=p31 lab=a_sample}
C {devices/ipin.sym} 1235 -960 1 1 {name=p32 lab=a_sample_n}
C {switch_ngspice.sym} 1155 -1215 0 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {capa.sym} 1275 -1080 0 0 {name=C1
m=n
value=Cu
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 1275 -1215 0 0 {name=S9 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {switch_ngspice.sym} 1405 -1215 0 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {switch_ngspice.sym} 1275 -980 0 0 {name=S11 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {devices/iopin.sym} 1160 -1405 3 0 {name=p33 lab=VDD}
C {switch_ngspice.sym} 1080 -1375 0 0 {name=S12 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {switch_ngspice.sym} 1160 -1375 2 0 {name=S13 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {devices/lab_pin.sym} 1040 -1375 0 0 {name=p34 lab=bit}
C {devices/lab_pin.sym} 1040 -1355 0 0 {name=p35 lab=VSS}
C {devices/lab_pin.sym} 1200 -1395 2 0 {name=p36 lab=VSS}
C {devices/lab_pin.sym} 1115 -1195 0 0 {name=p37 lab=VSS}
C {devices/lab_pin.sym} 1235 -1215 3 1 {name=p38 lab=b_sample}
C {devices/lab_pin.sym} 1235 -1195 1 1 {name=p39 lab=b_sample_n}
C {switch_ngspice.sym} 1305 -1295 2 1 {name=S14 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=ro ROFF=10G "}
C {devices/lab_pin.sym} 1115 -1215 0 0 {name=p40 lab=d}
C {devices/lab_pin.sym} 1265 -1315 0 0 {name=p41 lab=VSS}
C {inverter/inverter_lv.sym} 700 -1330 0 0 {name=x8 W_P=W_P_SPDT L_P=L_P_SPDT W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 700 -1290 0 0 {name=p42 lab=VSS}
C {devices/lab_pin.sym} 700 -1430 0 0 {name=p43 lab=VDD}
C {devices/lab_pin.sym} 890 -1330 0 1 {name=p44 lab=bitn}
C {devices/lab_pin.sym} 1200 -1375 0 1 {name=p45 lab=bitn}
C {inverter/inverter_lv.sym} 700 -1150 0 0 {name=x1 W_P=W_P_SPDT L_P=L_P_SPDT W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 700 -1110 0 0 {name=p46 lab=VSS}
C {devices/lab_pin.sym} 700 -1250 0 0 {name=p47 lab=VDD}
C {devices/lab_pin.sym} 890 -1150 0 1 {name=p48 lab=dn}
C {devices/lab_pin.sym} 1265 -1295 0 1 {name=p49 lab=dn}
