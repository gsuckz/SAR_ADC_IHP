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
N 2050 -890 2180 -890 {lab=#net1}
N 1930 -1050 1935 -1050 {lab=#net2}
N 1930 -1050 1930 -950 {lab=#net2}
N 1855 -1050 1930 -1050 {lab=#net2}
N 2050 -740 2050 -715 {lab=v_top}
N 2050 -655 2050 -625 {lab=v_cm}
N 1870 -740 2050 -740 {lab=v_top}
N 2050 -755 2050 -740 {lab=v_top}
N 2050 -890 2050 -815 {lab=#net1}
N 2080 -970 2080 -950 {lab=#net3}
N 1975 -950 2080 -950 {lab=#net3}
N 1975 -950 1975 -885 {lab=#net3}
N 1930 -880 1975 -885 {lab=#net3}
N 1930 -890 1930 -880 {lab=#net3}
N 1475 -1135 1475 -1075 {lab=VDD}
N 1555 -1035 1670 -1035 {lab=bitn}
N 1555 -855 1670 -855 {lab=dn}
N 1475 -955 1475 -895 {lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1935 -1110 3 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 2180 -950 3 0 {name=p2 lab=v_in}
C {devices/ipin.sym} 1415 -855 0 0 {name=p14 lab=d}
C {devices/ipin.sym} 1415 -1035 3 1 {name=p3 lab=bit
}
C {devices/iopin.sym} 1870 -740 1 0 {name=p6 lab=v_top}
C {devices/iopin.sym} 2080 -1030 3 0 {name=p1 lab=v_cm}
C {devices/ipin.sym} 2140 -900 1 1 {name=p4 lab=b_sample}
C {devices/ipin.sym} 2140 -920 3 1 {name=p7 lab=b_sample_n}
C {devices/lab_pin.sym} 2050 -625 2 0 {name=p11 lab=v_cm}
C {devices/ipin.sym} 2010 -685 3 1 {name=p13 lab=a_sample}
C {devices/ipin.sym} 2010 -665 1 1 {name=p15 lab=a_sample_n}
C {switch_ngspice.sym} 1930 -920 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= \{ro/4\} ROFF=10G "}
C {capa.sym} 2050 -785 0 0 {name=C2
m=n
value=Cu
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 2050 -920 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= \{ro/2\} ROFF=10G "}
C {switch_ngspice.sym} 2180 -920 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= ro ROFF=10G "}
C {switch_ngspice.sym} 2050 -685 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= ro ROFF=10G "}
C {devices/iopin.sym} 1855 -1110 3 0 {name=p8 lab=VDD}
C {switch_ngspice.sym} 1855 -1080 0 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= \{ro/4\} ROFF=10G "}
C {switch_ngspice.sym} 1935 -1080 2 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= \{ro/4\} ROFF=10G "}
C {devices/lab_pin.sym} 1815 -1080 0 0 {name=p10 lab=bit}
C {devices/lab_pin.sym} 1815 -1060 0 0 {name=p12 lab=VSS}
C {devices/lab_pin.sym} 1975 -1100 2 0 {name=p16 lab=VSS}
C {devices/lab_pin.sym} 1890 -900 0 0 {name=p17 lab=VSS}
C {devices/lab_pin.sym} 2010 -920 3 1 {name=p18 lab=b_sample}
C {devices/lab_pin.sym} 2010 -900 1 1 {name=p19 lab=b_sample_n}
C {switch_ngspice.sym} 2080 -1000 2 1 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON= \{ro/2\} ROFF=10G "}
C {devices/lab_pin.sym} 1890 -920 0 0 {name=p20 lab=d}
C {devices/lab_pin.sym} 2040 -1020 0 0 {name=p21 lab=VSS}
C {inverter/inverter_lv.sym} 1475 -1035 0 0 {name=x8 W_P=W_P_SPDT L_P=L_P_SPDT W_N=W_N_SPDT L_N=L_N_SPDT n=n}
C {devices/lab_pin.sym} 1475 -995 0 0 {name=p22 lab=VSS}
C {devices/lab_pin.sym} 1475 -1135 0 0 {name=p23 lab=VDD}
C {devices/lab_pin.sym} 1665 -1035 0 1 {name=p24 lab=bitn}
C {devices/lab_pin.sym} 1975 -1080 0 1 {name=p9 lab=bitn}
C {inverter/inverter_lv.sym} 1475 -855 0 0 {name=x1 W_P=W_P_SPDT L_P=L_P_SPDT W_N=W_N_SPDT L_N=L_N_SPDT  n=n}
C {devices/lab_pin.sym} 1475 -815 0 0 {name=p26 lab=VSS}
C {devices/lab_pin.sym} 1475 -955 0 0 {name=p27 lab=VDD}
C {devices/lab_pin.sym} 1665 -855 0 1 {name=p28 lab=dn}
C {devices/lab_pin.sym} 2040 -1000 0 1 {name=p25 lab=dn}
