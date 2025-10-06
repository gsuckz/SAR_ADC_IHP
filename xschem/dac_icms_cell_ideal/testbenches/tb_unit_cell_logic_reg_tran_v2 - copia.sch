v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 345 480 380 {lab=vinn}
N 480 200 480 230 {lab=vinp}
N 2040 85 2040 125 {lab=b_n_ctrl}
N 1685 85 2040 85 {lab=b_n_ctrl}
N 1685 85 1685 100 {lab=b_n_ctrl}
N 1685 270 1945 270 {lab=b_ctrl}
N 1945 270 1945 275 {lab=b_ctrl}
N 380 290 480 290 {lab=vcm}
N 380 290 380 300 {lab=vcm}
N 2805 80 2805 120 {lab=a_n_ctrl}
N 2450 80 2805 80 {lab=a_n_ctrl}
N 2450 80 2450 95 {lab=a_n_ctrl}
N 2450 265 2710 265 {lab=a_ctrl}
N 2710 265 2710 270 {lab=a_ctrl}
N 2725 495 2755 495 {lab=b_ctrl}
N 2720 595 2755 595 {lab=a_n_ctrl}
N 2835 595 2875 595 {lab=a_ctrl}
N 2170 475 2575 475 {lab=start}
N 2170 545 2170 705 {lab=start}
N 2170 705 2575 705 {lab=start}
N 2835 495 2890 495 {lab=b_n_ctrl}
N 2725 430 2725 495 {lab=b_ctrl}
N 2695 495 2725 495 {lab=b_ctrl}
N 2720 595 2720 645 {lab=a_n_ctrl}
N 2695 595 2720 595 {lab=a_n_ctrl}
N 2125 545 2170 545 {lab=start}
N 2170 475 2170 545 {lab=start}
N 2400 645 2465 645 {lab=#net1}
N 2400 515 2400 535 {lab=#net2}
N 2545 575 2545 580 {lab=#net1}
N 2545 575 2575 575 {lab=#net1}
N 2575 615 2575 705 {lab=start}
N 2465 575 2545 575 {lab=#net1}
N 2465 575 2465 645 {lab=#net1}
N 2400 515 2575 515 {lab=#net2}
C {vsource.sym} -280 -580 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -280 -610 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -280 -550 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 345 -495 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param pon = 1
.param W_P = pon*1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.param W_P_TG = pon*1.0u
.param L_P_TG = 0.13u
.param W_N_TG = 1.0u	
.param L_N_TG = 0.13u
.param n = 64


*.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Transient Analysis
tran 1p 3n




plot a a_n b b_n start
plot bot-top start
plot bot top start


.endc
"}
C {code_shown.sym} -650 -540 0 0 {
name=TT_MODELS1
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
spice_ignore=false
      }
C {lab_pin.sym} 1210 -65 0 0 {name=p91 sig_type=std_logic lab=top}
C {vsource.sym} 380 330 0 0 {name=V6 value=0.9 savecurrent=false}
C {gnd.sym} 380 360 0 0 {name=l8 lab=GND}
C {vsource.sym} 480 260 0 0 {name=V8 value=0.1 savecurrent=false}
C {lab_pin.sym} 480 200 3 1 {name=p42 sig_type=std_logic lab=vinp

}
C {lab_pin.sym} 480 380 0 1 {name=p43 sig_type=std_logic lab=vinn

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1105 310 0 0 {name=x13 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1085 270 0 0 {name=p49 sig_type=std_logic lab=VDD}
C {gnd.sym} 1085 350 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1105 270 3 1 {name=p50 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1105 350 1 1 {name=p51 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 1025 310 0 0 {name=p52 sig_type=std_logic lab=vinp

}
C {vsource.sym} 480 320 0 0 {name=V9 value=0 savecurrent=false}
C {lab_pin.sym} 1185 250 0 1 {name=p58 sig_type=std_logic lab=bot

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1090 485 0 0 {name=x15 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1070 445 0 0 {name=p67 sig_type=std_logic lab=VDD}
C {gnd.sym} 1070 525 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 1090 445 3 1 {name=p68 sig_type=std_logic lab=B

}
C {lab_pin.sym} 1090 525 1 1 {name=p69 sig_type=std_logic lab=b_n

}
C {lab_pin.sym} 1010 485 0 0 {name=p70 sig_type=std_logic lab=vcm

}
C {lab_pin.sym} 1170 425 0 1 {name=p76 sig_type=std_logic lab=bot

}
C {lab_pin.sym} 380 300 0 0 {name=p77 sig_type=std_logic lab=vcm

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1075 670 0 0 {name=x16 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1055 630 0 0 {name=p78 sig_type=std_logic lab=VDD}
C {gnd.sym} 1055 710 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 1075 630 3 1 {name=p79 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1075 710 1 1 {name=p84 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 995 670 0 0 {name=p85 sig_type=std_logic lab=vcm

}
C {lab_pin.sym} 1155 610 0 1 {name=p100 sig_type=std_logic lab=top

}
C {vsource.sym} 2125 575 0 0 {name=V3 value="PULSE(0 1.8 0 10p 10p 2n 3n 1)" savecurrent=false}
C {gnd.sym} 2125 605 0 0 {name=l4 lab=GND
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {lab_pin.sym} 2320 125 0 1 {name=p11 sig_type=std_logic lab=b_n}
C {inverter/inverter_lv.sym} 2100 125 0 0 {name=x21 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u n=1}
C {lab_pin.sym} 2100 85 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {gnd.sym} 2100 165 0 0 {name=l20 lab=GND}
C {inverter/inverter_lv.sym} 2240 125 0 0 {name=x22 W_P=10.0u L_P=0.13u W_N=10.0u L_N=0.13u n=1}
C {lab_pin.sym} 2240 85 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {gnd.sym} 2240 165 0 0 {name=l22 lab=GND}
C {lab_pin.sym} 2225 275 0 1 {name=p118 sig_type=std_logic lab=B}
C {inverter/inverter_lv.sym} 2005 275 0 0 {name=x23 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u n=1}
C {lab_pin.sym} 2005 235 0 0 {name=p119 sig_type=std_logic lab=VDD}
C {gnd.sym} 2005 315 0 0 {name=l23 lab=GND}
C {inverter/inverter_lv.sym} 2145 275 0 0 {name=x24 W_P=10.0u L_P=0.13u W_N=10.0u L_N=0.13u n=1}
C {lab_pin.sym} 2145 235 0 0 {name=p120 sig_type=std_logic lab=VDD}
C {gnd.sym} 2145 315 0 0 {name=l25 lab=GND}
C {lab_pin.sym} 3085 120 0 1 {name=p4 sig_type=std_logic lab=A_n}
C {inverter/inverter_lv.sym} 2865 120 0 0 {name=x25 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u n=1}
C {lab_pin.sym} 2865 80 0 0 {name=p121 sig_type=std_logic lab=VDD}
C {gnd.sym} 2865 160 0 0 {name=l28 lab=GND}
C {inverter/inverter_lv.sym} 3005 120 0 0 {name=x26 W_P=20.0u L_P=0.13u W_N=10.0u L_N=0.13u n=1}
C {lab_pin.sym} 3005 80 0 0 {name=p122 sig_type=std_logic lab=VDD}
C {gnd.sym} 3005 160 0 0 {name=l30 lab=GND}
C {lab_pin.sym} 2990 270 0 1 {name=p123 sig_type=std_logic lab=A}
C {inverter/inverter_lv.sym} 2770 270 0 0 {name=x27 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u n=1}
C {lab_pin.sym} 2770 230 0 0 {name=p124 sig_type=std_logic lab=VDD}
C {gnd.sym} 2770 310 0 0 {name=l31 lab=GND}
C {inverter/inverter_lv.sym} 2910 270 0 0 {name=x28 W_P=20.0u L_P=0.13u W_N=10.0u L_N=0.13u n=1}
C {lab_pin.sym} 2910 230 0 0 {name=p125 sig_type=std_logic lab=VDD}
C {gnd.sym} 2910 310 0 0 {name=l32 lab=GND}
C {sg13g2_stdcells/sg13g2_nor2_2.sym} 2635 495 0 0 {name=x29 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 2635 595 0 0 {name=x30 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 2795 495 0 0 {name=x31 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 2795 595 0 0 {name=x32 VDD=VDD VSS=GND prefix=sg13g2_ }
C {lab_pin.sym} 2890 495 0 1 {name=p126 sig_type=std_logic lab=b_n_ctrl}
C {lab_pin.sym} 2725 430 0 1 {name=p127 sig_type=std_logic lab=b_ctrl}
C {lab_pin.sym} 2875 595 0 1 {name=p128 sig_type=std_logic lab=a_ctrl}
C {lab_pin.sym} 2720 645 0 1 {name=p129 sig_type=std_logic lab=a_n_ctrl}
C {lab_pin.sym} 2450 265 0 1 {name=p130 sig_type=std_logic lab=a_ctrl}
C {lab_pin.sym} 2450 85 0 1 {name=p131 sig_type=std_logic lab=a_n_ctrl}
C {lab_pin.sym} 1755 270 0 1 {name=p132 sig_type=std_logic lab=b_ctrl}
C {lab_pin.sym} 1685 100 0 1 {name=p133 sig_type=std_logic lab=b_n_ctrl}
C {lab_pin.sym} 2170 500 0 1 {name=p134 sig_type=std_logic lab=start}
C {gnd.sym} 1345 130 0 0 {name=l7 lab=GND}
C {vsource.sym} 1345 100 0 0 {name=V5 value=0 savecurrent=false}
C {lab_pin.sym} 1345 70 0 0 {name=p137 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 2340 535 0 0 {name=x33 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_2.sym} 2340 645 0 0 {name=x34 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2240 555 0 0 {name=x35 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2240 665 0 0 {name=x36 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 2280 515 0 0 {name=p135 sig_type=std_logic lab=A_n}
C {lab_pin.sym} 2200 555 0 0 {name=p136 sig_type=std_logic lab=A}
C {lab_pin.sym} 2200 665 0 0 {name=p138 sig_type=std_logic lab=b_n}
C {lab_pin.sym} 2280 625 0 0 {name=p139 sig_type=std_logic lab=B}
C {vsource.sym} 1170 455 0 0 {name=V13 value=0 savecurrent=false}
C {vsource.sym} 1155 640 0 0 {name=V14 value=0 savecurrent=false}
C {vsource.sym} 1185 280 0 0 {name=V18 value=0 savecurrent=false}
C {capa.sym} 1210 -35 0 0 {name=C3
m=64
value=20f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1210 -5 0 1 {name=p2 sig_type=std_logic lab=bot

}
