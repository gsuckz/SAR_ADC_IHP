v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -190 -60 -160 {lab=bot}
N 665 -120 755 -120 {lab=clk}
N 665 -120 665 -35 {lab=clk}
N 325 -200 755 -200 {lab=p_dec}
N 385 -160 385 -35 {lab=comp_in}
N 385 -160 755 -160 {lab=comp_in}
N 325 -200 325 -35 {lab=p_dec}
N -510 -200 -510 -170 {lab=bot_n}
N 1055 -200 1105 -200 {lab=d}
N -70 130 -70 160 {lab=bot}
N -510 140 -510 170 {lab=bot_n}
N -60 505 -60 535 {lab=bot}
N -510 505 -510 535 {lab=bot_n}
N -70 855 -70 885 {lab=bot}
N -530 865 -530 895 {lab=bot_n}
N 1405 -200 1455 -200 {lab=d2}
N 1755 -200 1805 -200 {lab=d3}
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
C {dac_icms_cell/unit_cell.sym} -20 0 0 0 {name=x1 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=32}
C {vsource.sym} -280 -580 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -280 -610 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -280 -550 0 0 {name=l1 lab=GND}
C {gnd.sym} 20 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 20 -160 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 665 -5 0 0 {name=V2 value="PULSE( 0 1.8 6n 10p 10p 1n 2n)" savecurrent=false}
C {lab_pin.sym} 965 -260 0 0 {name=p3 sig_type=std_logic lab=bit
}
C {gnd.sym} 665 25 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 0 -160 0 0 {name=p5 sig_type=std_logic lab=bit
}
C {vsource.sym} 385 -5 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1055 -200 0 1 {name=p7 sig_type=std_logic lab=d
}
C {gnd.sym} 385 25 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -100 -80 0 0 {name=p8 sig_type=std_logic lab=d
}
C {devices/code_shown.sym} 275 -860 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param cu = 100f
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.param W_P_TG = 1.0u
.param L_P_TG = 0.13u
.param W_N_TG = 1.0u	
.param L_N_TG = 0.13u
.param n = 64


*.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Transient Analysis
tran 1p 3n


plot i(V2) i(V3) i(V6)
plot top top_n
plot a a_n b b_n start
plot bot-top bot_n-top_n start
plot i(v10) i(v18)
plot i(v12) i(v13)
plot i(v14) i(v15) i(v16) i(v17)

.endc
"}
C {lab_pin.sym} -20 20 0 0 {name=p9 sig_type=std_logic lab=top

}
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
C {logic/bit_cell.sym} 905 -170 0 0 {name=x18}
C {lab_pin.sym} 815 -260 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {gnd.sym} 895 -80 0 0 {name=l11 lab=GND}
C {vsource.sym} 325 -5 0 1 {name=V7 value="PULSE(1.8 0 0 10p 10p 5n 20n 1)" savecurrent=false}
C {gnd.sym} 325 25 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 965 -80 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 665 -95 0 0 {name=p16 sig_type=std_logic lab=clk}
C {lab_pin.sym} 325 -200 0 0 {name=p18 sig_type=std_logic lab=p_dec}
C {lab_pin.sym} 385 -140 0 0 {name=p19 sig_type=std_logic lab=comp_in}
C {dac_icms_cell/unit_cell_n.sym} -470 -10 0 0 {name=x2 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=32}
C {gnd.sym} -430 10 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -430 -170 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -450 -170 0 0 {name=p21 sig_type=std_logic lab=bit
}
C {lab_pin.sym} -550 -90 0 0 {name=p22 sig_type=std_logic lab=d
}
C {lab_pin.sym} -470 10 0 0 {name=p23 sig_type=std_logic lab=top_n

}
C {lab_pin.sym} 1315 -260 0 0 {name=p29 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} 1420 -200 0 1 {name=p30 sig_type=std_logic lab=d2}
C {logic/bit_cell.sym} 1255 -170 0 0 {name=x3}
C {lab_pin.sym} 1165 -260 0 0 {name=p31 sig_type=std_logic lab=vdd}
C {gnd.sym} 1245 -80 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 1315 -80 0 1 {name=p32 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1105 -160 0 0 {name=p33 sig_type=std_logic lab=comp_in}
C {lab_pin.sym} 1105 -120 0 0 {name=p34 sig_type=std_logic lab=clk}
C {dac_icms_cell/unit_cell.sym} -30 320 0 0 {name=x4 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=16}
C {gnd.sym} 10 340 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 10 160 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -10 160 0 0 {name=p36 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} -110 240 0 0 {name=p37 sig_type=std_logic lab=d2
}
C {lab_pin.sym} -30 340 0 0 {name=p38 sig_type=std_logic lab=top

}
C {dac_icms_cell/unit_cell_n.sym} -470 330 0 0 {name=x5 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=16}
C {gnd.sym} -430 350 0 0 {name=l24 lab=GND}
C {lab_pin.sym} -430 170 0 1 {name=p44 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -450 170 0 0 {name=p45 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} -550 250 0 0 {name=p46 sig_type=std_logic lab=d2}
C {lab_pin.sym} -470 350 0 0 {name=p47 sig_type=std_logic lab=top_n

}
C {dac_icms_cell/unit_cell.sym} -20 695 0 0 {name=x6 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=32}
C {gnd.sym} 20 715 0 0 {name=l29 lab=GND}
C {lab_pin.sym} 20 535 0 1 {name=p53 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 0 535 0 0 {name=p54 sig_type=std_logic lab=bit3
}
C {lab_pin.sym} -100 615 0 0 {name=p55 sig_type=std_logic lab=d3
}
C {lab_pin.sym} -20 715 0 0 {name=p56 sig_type=std_logic lab=top2}
C {dac_icms_cell/unit_cell_n.sym} -470 695 0 0 {name=x7 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=32}
C {gnd.sym} -430 715 0 0 {name=l34 lab=GND}
C {lab_pin.sym} -430 535 0 1 {name=p62 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -450 535 0 0 {name=p63 sig_type=std_logic lab=bit3
}
C {lab_pin.sym} -550 615 0 0 {name=p64 sig_type=std_logic lab=d3
}
C {lab_pin.sym} -470 715 0 0 {name=p65 sig_type=std_logic lab=top_n2

}
C {dac_icms_cell/unit_cell.sym} -30 1045 0 0 {name=x8 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=16}
C {gnd.sym} 10 1065 0 0 {name=l39 lab=GND}
C {lab_pin.sym} 10 885 0 1 {name=p71 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -10 885 0 0 {name=p72 sig_type=std_logic lab=bit4
}
C {lab_pin.sym} -110 965 0 0 {name=p73 sig_type=std_logic lab=d4
}
C {lab_pin.sym} -30 1065 0 0 {name=p74 sig_type=std_logic lab=top2

}
C {dac_icms_cell/unit_cell_n.sym} -490 1055 0 0 {name=x9 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=cu n=16}
C {gnd.sym} -450 1075 0 0 {name=l44 lab=GND}
C {lab_pin.sym} -450 895 0 1 {name=p80 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -470 895 0 0 {name=p81 sig_type=std_logic lab=bit4
}
C {lab_pin.sym} -570 975 0 0 {name=p82 sig_type=std_logic lab=d4}
C {lab_pin.sym} -490 1075 0 0 {name=p83 sig_type=std_logic lab=top_n2

}
C {lab_pin.sym} 1250 25 0 0 {name=p89 sig_type=std_logic lab=top2}
C {lab_pin.sym} 1445 35 0 0 {name=p90 sig_type=std_logic lab=top_n2

}
C {lab_pin.sym} 1250 85 0 0 {name=p91 sig_type=std_logic lab=top}
C {lab_pin.sym} 1445 95 0 0 {name=p92 sig_type=std_logic lab=top_n

}
C {capa.sym} 1250 55 0 0 {name=C1
m=22
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1445 65 0 0 {name=C2
m=22
value=20f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1665 -260 0 0 {name=p94 sig_type=std_logic lab=bit3
}
C {lab_pin.sym} 1765 -200 0 1 {name=p95 sig_type=std_logic lab=d3}
C {logic/bit_cell.sym} 1605 -170 0 0 {name=x10}
C {lab_pin.sym} 1515 -260 0 0 {name=p96 sig_type=std_logic lab=vdd}
C {gnd.sym} 1595 -80 0 0 {name=l49 lab=GND}
C {lab_pin.sym} 1665 -80 0 1 {name=p97 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1455 -160 0 0 {name=p98 sig_type=std_logic lab=comp_in}
C {lab_pin.sym} 1455 -120 0 0 {name=p99 sig_type=std_logic lab=clk}
C {lab_pin.sym} 2015 -260 0 0 {name=p101 sig_type=std_logic lab=bit4
}
C {lab_pin.sym} 2105 -200 0 1 {name=p102 sig_type=std_logic lab=d4}
C {logic/bit_cell.sym} 1955 -170 0 0 {name=x11}
C {lab_pin.sym} 1865 -260 0 0 {name=p103 sig_type=std_logic lab=vdd}
C {gnd.sym} 1945 -80 0 0 {name=l50 lab=GND}
C {lab_pin.sym} 2015 -80 0 1 {name=p104 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1805 -160 0 0 {name=p105 sig_type=std_logic lab=comp_in}
C {lab_pin.sym} 1805 -120 0 0 {name=p106 sig_type=std_logic lab=clk}
C {lab_pin.sym} -510 -200 0 0 {name=p10 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} -60 -190 0 0 {name=p12 sig_type=std_logic lab=bot

}
C {lab_pin.sym} -510 140 0 0 {name=p13 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} -70 130 0 0 {name=p14 sig_type=std_logic lab=bot

}
C {lab_pin.sym} -510 505 0 0 {name=p17 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} -60 505 0 0 {name=p24 sig_type=std_logic lab=bot

}
C {lab_pin.sym} -530 870 0 0 {name=p25 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} -70 860 0 0 {name=p26 sig_type=std_logic lab=bot

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 715 230 0 0 {name=x12 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 695 190 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {gnd.sym} 695 270 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 715 190 3 1 {name=p28 sig_type=std_logic lab=A

}
C {lab_pin.sym} 715 270 1 1 {name=p41 sig_type=std_logic lab=A_n

}
C {vsource.sym} 380 330 0 0 {name=V6 value=0.9 savecurrent=false}
C {gnd.sym} 380 360 0 0 {name=l8 lab=GND}
C {vsource.sym} 480 260 0 0 {name=V8 value=-0.5 savecurrent=false}
C {lab_pin.sym} 480 200 3 1 {name=p42 sig_type=std_logic lab=vinp

}
C {lab_pin.sym} 480 380 0 1 {name=p43 sig_type=std_logic lab=vinn

}
C {lab_pin.sym} 635 230 0 0 {name=p48 sig_type=std_logic lab=vinn

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1090 230 0 0 {name=x13 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1070 190 0 0 {name=p49 sig_type=std_logic lab=VDD}
C {gnd.sym} 1070 270 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1090 190 3 1 {name=p50 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1090 270 1 1 {name=p51 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 1010 230 0 0 {name=p52 sig_type=std_logic lab=vinp

}
C {vsource.sym} 480 320 0 0 {name=V9 value=-0.5 savecurrent=false}
C {lab_pin.sym} 795 170 0 1 {name=p57 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} 1170 170 0 1 {name=p58 sig_type=std_logic lab=bot

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 715 485 0 0 {name=x14 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 695 445 0 0 {name=p59 sig_type=std_logic lab=VDD}
C {gnd.sym} 695 525 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 715 445 3 1 {name=p60 sig_type=std_logic lab=B

}
C {lab_pin.sym} 715 525 1 1 {name=p61 sig_type=std_logic lab=b_n

}
C {lab_pin.sym} 635 485 0 0 {name=p66 sig_type=std_logic lab=vcm

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
C {lab_pin.sym} 795 425 0 1 {name=p75 sig_type=std_logic lab=bot_n

}
C {lab_pin.sym} 1170 425 0 1 {name=p76 sig_type=std_logic lab=bot

}
C {lab_pin.sym} 380 300 0 0 {name=p77 sig_type=std_logic lab=vcm

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 715 755 0 0 {name=x16 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 695 715 0 0 {name=p78 sig_type=std_logic lab=VDD}
C {gnd.sym} 695 795 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 715 715 3 1 {name=p79 sig_type=std_logic lab=A

}
C {lab_pin.sym} 715 795 1 1 {name=p84 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 635 755 0 0 {name=p85 sig_type=std_logic lab=vcm

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1090 755 0 0 {name=x17 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1070 715 0 0 {name=p86 sig_type=std_logic lab=VDD}
C {gnd.sym} 1070 795 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1090 715 3 1 {name=p87 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1090 795 1 1 {name=p88 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 1010 755 0 0 {name=p93 sig_type=std_logic lab=vcm

}
C {lab_pin.sym} 795 695 0 1 {name=p100 sig_type=std_logic lab=top

}
C {lab_pin.sym} 1170 695 0 1 {name=p107 sig_type=std_logic lab=top_n

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1440 750 0 0 {name=x19 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1420 710 0 0 {name=p108 sig_type=std_logic lab=VDD}
C {gnd.sym} 1420 790 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1440 710 3 1 {name=p109 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1440 790 1 1 {name=p110 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 1360 750 0 0 {name=p111 sig_type=std_logic lab=vcm

}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1815 750 0 0 {name=x20 W_P=W_P_TG L_P=L_P_TG  W_N=W_N_TG L_N=L_N_TG n=n}
C {lab_pin.sym} 1795 710 0 0 {name=p112 sig_type=std_logic lab=VDD}
C {gnd.sym} 1795 790 0 0 {name=l21 lab=GND}
C {lab_pin.sym} 1815 710 3 1 {name=p113 sig_type=std_logic lab=A

}
C {lab_pin.sym} 1815 790 1 1 {name=p114 sig_type=std_logic lab=A_n

}
C {lab_pin.sym} 1735 750 0 0 {name=p115 sig_type=std_logic lab=vcm

}
C {lab_pin.sym} 1520 690 0 1 {name=p116 sig_type=std_logic lab=top2

}
C {lab_pin.sym} 1895 690 0 1 {name=p117 sig_type=std_logic lab=top_n2

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
C {gnd.sym} 1855 520 0 0 {name=l7 lab=GND}
C {vsource.sym} 1855 490 0 0 {name=V5 value=0 savecurrent=false}
C {lab_pin.sym} 1855 460 0 0 {name=p137 sig_type=std_logic lab=VSS}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 2340 535 0 0 {name=x33 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_2.sym} 2340 645 0 0 {name=x34 VDD=VDD VSS=GND prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2240 555 0 0 {name=x35 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 2240 665 0 0 {name=x36 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 2280 515 0 0 {name=p135 sig_type=std_logic lab=A_n}
C {lab_pin.sym} 2200 555 0 0 {name=p136 sig_type=std_logic lab=A}
C {lab_pin.sym} 2200 665 0 0 {name=p138 sig_type=std_logic lab=b_n}
C {lab_pin.sym} 2280 625 0 0 {name=p139 sig_type=std_logic lab=B}
C {vsource.sym} 795 200 0 0 {name=V10 value=0 savecurrent=false}
C {vsource.sym} 795 455 0 0 {name=V12 value=0 savecurrent=false}
C {vsource.sym} 1170 455 0 0 {name=V13 value=0 savecurrent=false}
C {vsource.sym} 795 725 0 0 {name=V14 value=0 savecurrent=false}
C {vsource.sym} 1170 725 0 0 {name=V15 value=0 savecurrent=false}
C {vsource.sym} 1520 720 0 0 {name=V16 value=0 savecurrent=false}
C {vsource.sym} 1895 720 0 0 {name=V17 value=0 savecurrent=false}
C {vsource.sym} 1170 200 0 0 {name=V18 value=0 savecurrent=false}
