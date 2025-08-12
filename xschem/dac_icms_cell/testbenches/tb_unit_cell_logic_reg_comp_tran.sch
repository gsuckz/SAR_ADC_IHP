v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -220 -180 -190 {lab=#net1}
N -60 -190 -40 -190 {lab=#net1}
N -40 -230 -40 -190 {lab=#net1}
N -60 -190 -60 -160 {lab=#net1}
N -180 -190 -60 -190 {lab=#net1}
N -180 -310 -180 -280 {lab=#net2}
N 665 -120 755 -120 {lab=clk}
N 665 -120 665 -35 {lab=clk}
N 325 -200 755 -200 {lab=p_dec}
N 385 -160 385 -35 {lab=comp_in}
N 385 -160 755 -160 {lab=comp_in}
N 325 -200 325 -35 {lab=p_dec}
N -280 -310 -180 -310 {lab=#net2}
N -280 -310 -280 -275 {lab=#net2}
N -540 -30 -540 0 {lab=#net3}
N -420 0 -400 0 {lab=#net3}
N -400 -40 -400 0 {lab=#net3}
N -420 0 -420 30 {lab=#net3}
N -540 0 -420 0 {lab=#net3}
N -540 -120 -540 -90 {lab=GND}
N -640 -120 -540 -120 {lab=GND}
N -640 -120 -640 -85 {lab=GND}
N 1055 -200 1105 -200 {lab=d}
N -150 370 -150 400 {lab=#net4}
N -30 400 -10 400 {lab=#net4}
N -10 360 -10 400 {lab=#net4}
N -30 400 -30 430 {lab=#net4}
N -150 400 -30 400 {lab=#net4}
N -150 280 -150 310 {lab=#net5}
N -250 280 -150 280 {lab=#net5}
N -250 280 -250 315 {lab=#net5}
N -510 560 -510 590 {lab=#net6}
N -390 590 -370 590 {lab=#net6}
N -370 550 -370 590 {lab=#net6}
N -390 590 -390 620 {lab=#net6}
N -510 590 -390 590 {lab=#net6}
N -510 470 -510 500 {lab=GND}
N -610 470 -510 470 {lab=GND}
N -610 470 -610 505 {lab=GND}
N 760 225 760 255 {lab=#net7}
N 880 255 900 255 {lab=#net7}
N 900 215 900 255 {lab=#net7}
N 880 255 880 285 {lab=#net7}
N 795 255 880 255 {lab=#net7}
N 760 135 760 165 {lab=#net8}
N 660 135 760 135 {lab=#net8}
N 660 135 660 170 {lab=#net8}
N 400 415 400 445 {lab=#net9}
N 520 445 540 445 {lab=#net9}
N 540 405 540 445 {lab=#net9}
N 520 445 520 475 {lab=#net9}
N 440 445 520 445 {lab=#net9}
N 400 325 400 355 {lab=GND}
N 300 325 400 325 {lab=GND}
N 300 325 300 360 {lab=GND}
N 790 815 790 845 {lab=#net10}
N 910 845 930 845 {lab=#net10}
N 930 805 930 845 {lab=#net10}
N 910 845 910 875 {lab=#net10}
N 790 845 910 845 {lab=#net10}
N 790 725 790 755 {lab=#net11}
N 690 725 790 725 {lab=#net11}
N 690 725 690 760 {lab=#net11}
N 430 1005 430 1035 {lab=#net12}
N 550 1035 570 1035 {lab=#net12}
N 570 995 570 1035 {lab=#net12}
N 550 1035 550 1065 {lab=#net12}
N 430 1035 550 1035 {lab=#net12}
N 430 915 430 945 {lab=GND}
N 330 915 430 915 {lab=GND}
N 330 915 330 950 {lab=GND}
N 1405 -200 1455 -200 {lab=d2}
N 1755 -200 1805 -200 {lab=d3}
N 795 145 795 255 {lab=#net7}
N 760 255 795 255 {lab=#net7}
N 440 350 440 445 {lab=#net9}
N 400 445 440 445 {lab=#net9}
C {dac_icms_cell/unit_cell.sym} -20 0 0 0 {name=x1 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=32}
C {vsource.sym} -280 -580 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -280 -610 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -280 -550 0 0 {name=l1 lab=GND}
C {gnd.sym} 20 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 20 -160 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 965 -260 0 0 {name=p3 sig_type=std_logic lab=bit
}
C {vsource.sym} -165 -570 0 0 {name=V3 value=0.9 savecurrent=false}
C {lab_pin.sym} -165 -600 0 0 {name=p4 sig_type=std_logic lab=vcm

}
C {gnd.sym} -165 -540 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 0 -160 0 0 {name=p5 sig_type=std_logic lab=bit
}
C {lab_pin.sym} 1055 -200 0 1 {name=p7 sig_type=std_logic lab=d
}
C {lab_pin.sym} -100 -80 0 0 {name=p8 sig_type=std_logic lab=d
}
C {devices/code_shown.sym} 245 -660 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
*.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Transient Analysis
tran 10p 40n

plot top \{bit +2\} \{d +4\} \{s + 6\}
plot i(V2) i(V3) i(V6)
plot clk comp_in+3 p_dec+6
plot top top_n

.endc
"}
C {switch_ngspice.sym} -20 50 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -20 20 0 0 {name=p9 sig_type=std_logic lab=top

}
C {lab_pin.sym} -20 80 0 1 {name=p10 sig_type=std_logic lab=vcm

}
C {gnd.sym} -60 70 0 0 {name=l6 lab=GND}
C {vsource.sym} -810 -660 0 0 {name=V5 value="PULSE(-10 10 0 10p 10p 10n 20n 1)" savecurrent=false}
C {lab_pin.sym} -810 -690 0 0 {name=p11 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} -810 -630 0 0 {name=l7 lab=GND
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {lab_pin.sym} -60 50 0 0 {name=p12 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -180 -250 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -40 -290 0 1 {name=p13 sig_type=std_logic lab=vcm

}
C {gnd.sym} -220 -230 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -220 -250 0 0 {name=p14 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -40 -260 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} -80 -260 2 0 {name=l9 lab=GND}
C {lab_pin.sym} -80 -240 0 0 {name=p17 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {vsource.sym} -280 -245 0 0 {name=V6 value=1 savecurrent=false}
C {gnd.sym} -280 -215 0 0 {name=l10 lab=GND}
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
C {vsource.sym} 325 -5 0 1 {name=V7 value="PULSE(1.8 0 0 10p 10p 15n 20n 1)" savecurrent=false}
C {gnd.sym} 325 25 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 965 -80 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 665 -95 0 0 {name=p16 sig_type=std_logic lab=clk}
C {lab_pin.sym} 325 -200 0 0 {name=p18 sig_type=std_logic lab=p_dec}
C {lab_pin.sym} 385 -140 0 0 {name=p19 sig_type=std_logic lab=comp_in}
C {dac_icms_cell/unit_cell_n.sym} -380 190 0 0 {name=x2 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=32}
C {gnd.sym} -340 210 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -340 30 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -360 30 0 0 {name=p21 sig_type=std_logic lab=bit
}
C {lab_pin.sym} -460 110 0 0 {name=p22 sig_type=std_logic lab=d
}
C {switch_ngspice.sym} -380 240 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -380 210 0 0 {name=p23 sig_type=std_logic lab=top_n

}
C {lab_pin.sym} -380 270 0 1 {name=p24 sig_type=std_logic lab=vcm

}
C {gnd.sym} -420 260 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -420 240 0 0 {name=p25 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -540 -60 0 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -400 -100 0 1 {name=p26 sig_type=std_logic lab=vcm

}
C {gnd.sym} -580 -40 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -580 -60 0 0 {name=p27 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -400 -70 0 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} -440 -70 2 0 {name=l16 lab=GND}
C {lab_pin.sym} -440 -50 0 0 {name=p28 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} -640 -85 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1315 -260 0 0 {name=p29 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} 1420 -200 0 1 {name=p30 sig_type=std_logic lab=d2}
C {logic/bit_cell.sym} 1255 -170 0 0 {name=x3}
C {lab_pin.sym} 1165 -260 0 0 {name=p31 sig_type=std_logic lab=vdd}
C {gnd.sym} 1245 -80 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 1315 -80 0 1 {name=p32 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1105 -160 0 0 {name=p33 sig_type=std_logic lab=comp_in}
C {lab_pin.sym} 1105 -120 0 0 {name=p34 sig_type=std_logic lab=clk}
C {dac_icms_cell/unit_cell.sym} 10 590 0 0 {name=x4 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=16}
C {gnd.sym} 50 610 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 50 430 0 1 {name=p35 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 30 430 0 0 {name=p36 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} -70 510 0 0 {name=p37 sig_type=std_logic lab=d2
}
C {switch_ngspice.sym} 10 640 0 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 10 610 0 0 {name=p38 sig_type=std_logic lab=top

}
C {lab_pin.sym} 10 670 0 1 {name=p39 sig_type=std_logic lab=vcm

}
C {gnd.sym} -30 660 0 0 {name=l20 lab=GND}
C {lab_pin.sym} -30 640 0 0 {name=p40 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -150 340 0 0 {name=S8 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -10 300 0 1 {name=p41 sig_type=std_logic lab=vcm

}
C {gnd.sym} -190 360 0 0 {name=l21 lab=GND}
C {lab_pin.sym} -190 340 0 0 {name=p42 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -10 330 0 0 {name=S9 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} -50 330 2 0 {name=l22 lab=GND}
C {lab_pin.sym} -50 350 0 0 {name=p43 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {vsource.sym} -250 345 0 0 {name=V8 value=1 savecurrent=false}
C {gnd.sym} -250 375 0 0 {name=l23 lab=GND}
C {dac_icms_cell/unit_cell_n.sym} -350 780 0 0 {name=x5 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=16}
C {gnd.sym} -310 800 0 0 {name=l24 lab=GND}
C {lab_pin.sym} -310 620 0 1 {name=p44 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -330 620 0 0 {name=p45 sig_type=std_logic lab=bit2
}
C {lab_pin.sym} -430 700 0 0 {name=p46 sig_type=std_logic lab=d2}
C {switch_ngspice.sym} -350 830 0 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -350 800 0 0 {name=p47 sig_type=std_logic lab=top_n

}
C {lab_pin.sym} -350 860 0 1 {name=p48 sig_type=std_logic lab=vcm

}
C {gnd.sym} -390 850 0 0 {name=l25 lab=GND}
C {lab_pin.sym} -390 830 0 0 {name=p49 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -510 530 0 0 {name=S11 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} -370 490 0 1 {name=p50 sig_type=std_logic lab=vcm

}
C {gnd.sym} -550 550 0 0 {name=l26 lab=GND}
C {lab_pin.sym} -550 530 0 0 {name=p51 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} -370 520 0 0 {name=S12 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} -410 520 2 0 {name=l27 lab=GND}
C {lab_pin.sym} -410 540 0 0 {name=p52 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} -610 505 0 0 {name=l28 lab=GND}
C {dac_icms_cell/unit_cell.sym} 920 445 0 0 {name=x6 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=32}
C {gnd.sym} 960 465 0 0 {name=l29 lab=GND}
C {lab_pin.sym} 960 285 0 1 {name=p53 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 940 285 0 0 {name=p54 sig_type=std_logic lab=bit3
}
C {lab_pin.sym} 840 365 0 0 {name=p55 sig_type=std_logic lab=d3
}
C {switch_ngspice.sym} 920 495 0 0 {name=S13 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 920 465 0 0 {name=p56 sig_type=std_logic lab=top2}
C {lab_pin.sym} 920 525 0 1 {name=p57 sig_type=std_logic lab=vcm

}
C {gnd.sym} 880 515 0 0 {name=l30 lab=GND}
C {lab_pin.sym} 880 495 0 0 {name=p58 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 760 195 0 0 {name=S14 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 900 155 0 1 {name=p59 sig_type=std_logic lab=vcm

}
C {gnd.sym} 720 215 0 0 {name=l31 lab=GND}
C {lab_pin.sym} 720 195 0 0 {name=p60 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 900 185 0 0 {name=S15 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} 860 185 2 0 {name=l32 lab=GND}
C {lab_pin.sym} 860 205 0 0 {name=p61 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {vsource.sym} 660 200 0 0 {name=V9 value=1 savecurrent=false}
C {gnd.sym} 660 230 0 0 {name=l33 lab=GND}
C {dac_icms_cell/unit_cell_n.sym} 560 635 0 0 {name=x7 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=32}
C {gnd.sym} 600 655 0 0 {name=l34 lab=GND}
C {lab_pin.sym} 600 475 0 1 {name=p62 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 475 0 0 {name=p63 sig_type=std_logic lab=bit3
}
C {lab_pin.sym} 480 555 0 0 {name=p64 sig_type=std_logic lab=d3
}
C {switch_ngspice.sym} 560 685 0 0 {name=S16 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 560 655 0 0 {name=p65 sig_type=std_logic lab=top_n2

}
C {lab_pin.sym} 560 715 0 1 {name=p66 sig_type=std_logic lab=vcm

}
C {gnd.sym} 520 705 0 0 {name=l35 lab=GND}
C {lab_pin.sym} 520 685 0 0 {name=p67 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 400 385 0 0 {name=S17 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 540 345 0 1 {name=p68 sig_type=std_logic lab=vcm

}
C {gnd.sym} 360 405 0 0 {name=l36 lab=GND}
C {lab_pin.sym} 360 385 0 0 {name=p69 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 540 375 0 0 {name=S18 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} 500 375 2 0 {name=l37 lab=GND}
C {lab_pin.sym} 500 395 0 0 {name=p70 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} 300 360 0 0 {name=l38 lab=GND}
C {dac_icms_cell/unit_cell.sym} 950 1035 0 0 {name=x8 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=16}
C {gnd.sym} 990 1055 0 0 {name=l39 lab=GND}
C {lab_pin.sym} 990 875 0 1 {name=p71 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 970 875 0 0 {name=p72 sig_type=std_logic lab=bit4
}
C {lab_pin.sym} 870 955 0 0 {name=p73 sig_type=std_logic lab=d4
}
C {switch_ngspice.sym} 950 1085 0 0 {name=S19 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 950 1055 0 0 {name=p74 sig_type=std_logic lab=top2

}
C {lab_pin.sym} 950 1115 0 1 {name=p75 sig_type=std_logic lab=vcm

}
C {gnd.sym} 910 1105 0 0 {name=l40 lab=GND}
C {lab_pin.sym} 910 1085 0 0 {name=p76 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 790 785 0 0 {name=S20 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 930 745 0 1 {name=p77 sig_type=std_logic lab=vcm

}
C {gnd.sym} 750 805 0 0 {name=l41 lab=GND}
C {lab_pin.sym} 750 785 0 0 {name=p78 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 930 775 0 0 {name=S21 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} 890 775 2 0 {name=l42 lab=GND}
C {lab_pin.sym} 890 795 0 0 {name=p79 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {vsource.sym} 690 790 0 0 {name=V10 value=1 savecurrent=false}
C {gnd.sym} 690 820 0 0 {name=l43 lab=GND}
C {dac_icms_cell/unit_cell_n.sym} 590 1225 0 0 {name=x9 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=16}
C {gnd.sym} 630 1245 0 0 {name=l44 lab=GND}
C {lab_pin.sym} 630 1065 0 1 {name=p80 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 610 1065 0 0 {name=p81 sig_type=std_logic lab=bit4
}
C {lab_pin.sym} 510 1145 0 0 {name=p82 sig_type=std_logic lab=d4}
C {switch_ngspice.sym} 590 1275 0 0 {name=S22 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 590 1245 0 0 {name=p83 sig_type=std_logic lab=top_n2

}
C {lab_pin.sym} 590 1305 0 1 {name=p84 sig_type=std_logic lab=vcm

}
C {gnd.sym} 550 1295 0 0 {name=l45 lab=GND}
C {lab_pin.sym} 550 1275 0 0 {name=p85 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 430 975 0 0 {name=S23 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {lab_pin.sym} 570 935 0 1 {name=p86 sig_type=std_logic lab=vcm

}
C {gnd.sym} 390 995 0 0 {name=l46 lab=GND}
C {lab_pin.sym} 390 975 0 0 {name=p87 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {switch_ngspice.sym} 570 965 0 0 {name=S24 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=10 ROFF=1G "}
C {gnd.sym} 530 965 2 0 {name=l47 lab=GND}
C {lab_pin.sym} 530 985 0 0 {name=p88 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} 330 950 0 0 {name=l48 lab=GND}
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
C {lab_pin.sym} 795 85 0 0 {name=p93 sig_type=std_logic lab=top2}
C {lab_pin.sym} 440 290 0 0 {name=p100 sig_type=std_logic lab=top_n2

}
C {capa.sym} 795 115 0 0 {name=C3
m=16
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 440 320 0 0 {name=C4
m=16
value=20f
footprint=1206
device="ceramic capacitor"}
C {comparator/discrete_time/DT_comparator.sym} 1940 160 0 0 {name=x12}
C {lab_pin.sym} 1880 80 0 0 {name=p107 sig_type=std_logic lab=vdd}
C {gnd.sym} 1880 240 0 0 {name=l51 lab=GND}
C {lab_pin.sym} 2110 90 0 0 {name=p108 sig_type=std_logic lab=clk}
C {lab_pin.sym} 1820 140 0 0 {name=p109 sig_type=std_logic lab=top}
C {lab_pin.sym} 1820 180 0 0 {name=p110 sig_type=std_logic lab=top_n

}
C {lab_pin.sym} 2060 160 0 1 {name=p111 sig_type=std_logic lab=comp_in}
C {vsource.sym} 2000 270 0 1 {name=V2 value="PULSE(1.8 0 0 10p 10p 15n 20n 1)" savecurrent=false}
C {gnd.sym} 2000 300 0 0 {name=l3 lab=GND}
