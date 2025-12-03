v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 960 -960 1140 -960 {lab=voutp_comp}
N 960 -920 1140 -920 {lab=voutn_comp}
N 1140 -920 1140 -800 {lab=voutn_comp}
N 800 -820 800 -800 {lab=VSS}
N 1500 -840 1500 -800 {lab=voutn_buf}
N 1680 -880 1680 -860 {lab=VSS}
N 1680 -1020 1680 -1000 {lab=VDD}
N 1500 -920 1540 -920 {lab=voutn_buf}
N 1540 -920 1580 -960 {lab=voutn_buf}
N 1580 -960 1620 -960 {lab=voutn_buf}
N 1500 -960 1540 -960 {lab=voutp_buf}
N 1540 -960 1580 -920 {lab=voutp_buf}
N 1580 -920 1620 -920 {lab=voutp_buf}
N 620 -980 700 -980 {lab=vinp}
N 620 -900 700 -900 {lab=vinn}
N 550 -700 550 -680 {lab=VDD}
N 550 -600 550 -580 {lab=VSS}
N 1140 -1080 1140 -960 {lab=voutp_comp}
N 1500 -1025 1500 -960 {lab=voutp_buf}
N 800 -1080 800 -1060 {lab=VDD}
N 1740 -960 1860 -960 {lab=#net1}
N 460 -640 490 -640 {lab=#net2}
N 540 -500 540 -480 {lab=VDD}
N 540 -400 540 -380 {lab=VSS}
N 450 -440 480 -440 {lab=#net3}
N 760 -500 760 -480 {lab=VDD}
N 760 -400 760 -380 {lab=VSS}
N 620 -440 700 -440 {lab=#net4}
N 1280 -840 1310 -840 {lab=#net5}
N 1280 -1025 1310 -1025 {lab=#net6}
N 1450 -1025 1500 -1025 {lab=voutp_buf}
N 1500 -1080 1500 -1025 {lab=voutp_buf}
N 1450 -840 1500 -840 {lab=voutn_buf}
N 1500 -920 1500 -840 {lab=voutn_buf}
N 1960 -980 1960 -960 {lab=VDD}
N 1960 -880 1960 -860 {lab=VSS}
N 1340 -460 1340 -420 {lab=vcm}
N 1740 -920 1900 -920 {lab=#net7}
N 630 -640 860 -640 {lab=clk}
N 860 -820 860 -640 {lab=clk}
N 900 -820 900 -440 {lab=#net8}
N 840 -440 900 -440 {lab=#net8}
C {devices/iopin.sym} 800 -1080 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 2040 -920 2 1 {name=p2 lab=vout}
C {devices/iopin.sym} 800 -800 1 0 {name=p8 lab=VSS}
C {ipin.sym} 620 -980 0 0 {name=p9 lab=vinp}
C {ipin.sym} 620 -900 2 1 {name=p10 lab=vinn}
C {ipin.sym} 1040 -560 0 0 {name=p12 lab=en}
C {lab_wire.sym} 1680 -1020 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1680 -860 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 550 -640 0 0 {name=x5 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_wire.sym} 550 -700 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -580 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {noconn.sym} 1860 -960 0 1 {name=l2}
C {comparator/SR_latch/SR_latch.sym} 1680 -940 0 0 {name=x4 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=1.0u L_N_SR=0.13u}
C {lab_wire.sym} 1140 -1080 3 1 {name=p16 sig_type=std_logic lab=voutp_comp}
C {lab_wire.sym} 1140 -800 3 0 {name=p17 sig_type=std_logic lab=voutn_comp}
C {lab_wire.sym} 1500 -1080 1 0 {name=p18 sig_type=std_logic lab=voutp_buf}
C {lab_wire.sym} 1500 -800 1 1 {name=p19 sig_type=std_logic lab=voutn_buf}
C {comparator/pulse_gen/pgen.sym} 1190 -520 0 0 {name=x6}
C {lab_wire.sym} 1340 -520 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1340 -560 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 900 -680 0 0 {name=p26 lab=PULSE}
C {lab_wire.sym} 860 -720 2 1 {name=p6 sig_type=std_logic lab=clk}
C {lab_wire.sym} 1340 -480 2 0 {name=p29 sig_type=std_logic lab=PULSEN}
C {comparator/discrete_time/Dynamic-biasing/dynamic_biasing_comparator.sym} 820 -940 0 0 {name=x1}
C {lab_wire.sym} 1340 -500 2 0 {name=p24 sig_type=std_logic lab=voutn_buf}
C {lab_wire.sym} 1340 -540 2 0 {name=p28 sig_type=std_logic lab=voutp_buf}
C {inverter/inverter_lv.sym} 380 -640 0 0 {name=x8 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_wire.sym} 380 -680 3 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 380 -600 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1340 -420 2 1 {name=p25 lab=vcm}
C {inverter/inverter_lv.sym} 540 -440 0 0 {name=x9 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_wire.sym} 540 -500 3 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 540 -380 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 370 -440 0 0 {name=x10 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_wire.sym} 370 -480 3 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 370 -400 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 760 -440 0 0 {name=x11 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {lab_wire.sym} 760 -500 3 1 {name=p36 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -380 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -640 2 1 {name=p38 sig_type=std_logic lab=PULSEN}
C {lab_wire.sym} 310 -440 2 1 {name=p39 sig_type=std_logic lab=PULSEN}
C {inverter/inverter_lv.sym} 1370 -840 0 0 {name=x12 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=8}
C {lab_wire.sym} 1370 -880 3 1 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1370 -800 3 0 {name=p41 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1200 -840 0 0 {name=x13 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=2}
C {lab_wire.sym} 1200 -880 3 1 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -800 3 0 {name=p43 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1370 -1025 0 0 {name=x2 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=8}
C {lab_wire.sym} 1370 -1065 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1370 -985 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1200 -1025 0 0 {name=x3 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=2}
C {lab_wire.sym} 1200 -1065 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -985 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1960 -920 0 0 {name=x7 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=52}
C {lab_wire.sym} 1960 -980 3 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1960 -860 3 0 {name=p21 sig_type=std_logic lab=VSS}
