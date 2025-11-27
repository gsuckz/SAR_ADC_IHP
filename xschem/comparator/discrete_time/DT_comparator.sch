v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Discrete-time comparator with NOR-based SR-Latch} 600 -1700 0 0 1 1 {}
T {The differential output of the DT comparator is buffered and latched into a NOR-based SR-latch [Schmickl] [Razavi]. 
This circuit is used to suppress the regeneration transients of the comparator output response and therefore 
provides a stable output $Q$ with clean High / Low voltage levels which is further processed by the digital core.

Que pasa si la Vin=0 funciona la XOR?} 45 -1610 0 0 0.5 0.5 {}
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
N 720 -660 720 -640 {lab=VDD}
N 720 -560 720 -540 {lab=VSS}
N 1740 -920 2000 -920 {lab=#net1}
N 1140 -1080 1140 -960 {lab=voutp_comp}
N 1500 -1025 1500 -960 {lab=voutp_buf}
N 800 -1080 800 -1060 {lab=VDD}
N 1340 -480 1370 -480 {lab=PULSEN}
N 1370 -480 1370 -380 {lab=PULSEN}
N 1340 -460 1450 -460 {lab=vcm}
N 1740 -960 1860 -960 {lab=#net2}
N 630 -600 660 -600 {lab=#net3}
N 860 -820 860 -600 {lab=clk}
N 900 -740 900 -735 {lab=PULSE}
N 800 -600 860 -600 {lab=clk}
N 670 -400 670 -380 {lab=VDD}
N 670 -300 670 -280 {lab=VSS}
N 580 -340 610 -340 {lab=#net4}
N 890 -400 890 -380 {lab=VDD}
N 890 -300 890 -280 {lab=VSS}
N 1005 -340 1030 -340 {lab=PULSE}
N 750 -340 830 -340 {lab=#net5}
N 900 -740 955 -740 {lab=PULSE}
N 900 -820 900 -740 {lab=PULSE}
N 955 -740 955 -420 {lab=PULSE}
N 955 -420 1005 -420 {lab=PULSE}
N 1005 -420 1005 -340 {lab=PULSE}
N 970 -340 1005 -340 {lab=PULSE}
N 1370 -900 1370 -880 {lab=VDD}
N 1370 -800 1370 -780 {lab=VSS}
N 1280 -840 1310 -840 {lab=#net6}
N 1370 -1085 1370 -1065 {lab=VDD}
N 1370 -985 1370 -965 {lab=VSS}
N 1280 -1025 1310 -1025 {lab=#net7}
N 1450 -1025 1500 -1025 {lab=voutp_buf}
N 1500 -1080 1500 -1025 {lab=voutp_buf}
N 1450 -840 1500 -840 {lab=voutn_buf}
N 1500 -920 1500 -840 {lab=voutn_buf}
N 2090 -1020 2090 -1000 {lab=VDD}
N 2090 -920 2090 -900 {lab=VSS}
N 2000 -960 2030 -960 {lab=#net1}
N 2000 -960 2000 -920 {lab=#net1}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 800 -1080 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 2170 -960 2 1 {name=p2 lab=vout}
C {devices/iopin.sym} 800 -800 1 0 {name=p8 lab=VSS}
C {ipin.sym} 620 -980 0 0 {name=p9 lab=vinp}
C {ipin.sym} 620 -900 2 1 {name=p10 lab=vinn}
C {ipin.sym} 1040 -560 0 0 {name=p12 lab=en}
C {lab_wire.sym} 1680 -1020 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1680 -860 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 720 -600 0 0 {name=x5 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_wire.sym} 720 -660 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 720 -540 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {noconn.sym} 1860 -960 0 1 {name=l2}
C {comparator/SR_latch/SR_latch.sym} 1680 -940 0 0 {name=x4 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=1.0u L_N_SR=0.13u}
C {lab_wire.sym} 1140 -1080 3 1 {name=p16 sig_type=std_logic lab=voutp_comp}
C {lab_wire.sym} 1140 -800 3 0 {name=p17 sig_type=std_logic lab=voutn_comp}
C {lab_wire.sym} 1500 -1080 1 0 {name=p18 sig_type=std_logic lab=voutp_buf}
C {lab_wire.sym} 1500 -800 1 1 {name=p19 sig_type=std_logic lab=voutn_buf}
C {comparator/pulse_gen/pgen.sym} 1190 -520 0 0 {name=x6}
C {lab_wire.sym} 1340 -520 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1340 -560 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 1030 -340 3 1 {name=p26 lab=PULSE}
C {lab_wire.sym} 860 -720 2 1 {name=p6 sig_type=std_logic lab=clk}
C {lab_wire.sym} 370 -680 2 1 {name=p27 sig_type=std_logic lab=voutn_buf}
C {lab_wire.sym} 1370 -380 2 1 {name=p29 sig_type=std_logic lab=PULSEN}
C {comparator/discrete_time/Dynamic-biasing/dynamic_biasing_comparator.sym} 820 -940 0 0 {name=x1}
C {lab_wire.sym} 1340 -500 2 0 {name=p24 sig_type=std_logic lab=voutn_buf}
C {lab_wire.sym} 1340 -540 2 0 {name=p28 sig_type=std_logic lab=voutp_buf}
C {inverter/inverter_lv.sym} 550 -600 0 0 {name=x8 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_wire.sym} 550 -640 3 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -560 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1450 -460 3 0 {name=p25 lab=vcm}
C {inverter/inverter_lv.sym} 670 -340 0 0 {name=x9 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=16}
C {lab_wire.sym} 670 -400 3 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -280 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 500 -340 0 0 {name=x10 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=4}
C {lab_wire.sym} 500 -380 3 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 500 -300 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 890 -340 0 0 {name=x11 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=64}
C {lab_wire.sym} 890 -400 3 1 {name=p36 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 890 -280 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 -600 2 1 {name=p38 sig_type=std_logic lab=PULSEN}
C {lab_wire.sym} 440 -340 2 1 {name=p39 sig_type=std_logic lab=PULSEN}
C {inverter/inverter_lv.sym} 1370 -840 0 0 {name=x12 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=8}
C {lab_wire.sym} 1370 -900 3 1 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1370 -780 3 0 {name=p41 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1200 -840 0 0 {name=x13 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=2}
C {lab_wire.sym} 1200 -880 3 1 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -800 3 0 {name=p43 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1370 -1025 0 0 {name=x2 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=8}
C {lab_wire.sym} 1370 -1085 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1370 -965 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 1200 -1025 0 0 {name=x3 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=2}
C {lab_wire.sym} 1200 -1065 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1200 -985 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {inverter/inverter_lv.sym} 2090 -960 0 0 {name=x7 W_P=0.3u L_P=0.13u W_N=0.15u L_N=0.13u n=52}
C {lab_wire.sym} 2090 -1020 3 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2090 -900 3 0 {name=p21 sig_type=std_logic lab=VSS}
