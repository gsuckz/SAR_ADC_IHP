v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 1735 295 1855 295 {lab=VDD}
N 1735 255 1735 295 {lab=VDD}
N 1625 295 1735 295 {lab=VDD}
N 1855 355 1855 380 {lab=vpump2}
N 1625 365 1625 380 {lab=vpump}
N 1855 440 1855 465 {lab=clk}
N 1625 440 1625 465 {lab=clk_n}
N 1625 380 1685 380 {lab=vpump}
N 1685 380 1790 325 {lab=vpump}
N 1790 325 1815 325 {lab=vpump}
N 1790 380 1855 380 {lab=vpump2}
N 1680 325 1790 380 {lab=vpump2}
N 1665 325 1680 325 {lab=vpump2}
N 1510 365 1625 365 {lab=vpump}
N 1625 355 1625 365 {lab=vpump}
N 2730 410 2765 410 {lab=vgate_ground}
N 2605 410 2620 410 {lab=vgate}
N 2515 380 2515 410 {lab=vbootstrap}
N 2485 380 2515 380 {lab=vbootstrap}
N 2485 380 2485 410 {lab=vbootstrap}
N 2325 400 2325 410 {lab=vbootstrap}
N 2355 335 2355 340 {lab=VDD}
N 2650 335 2650 370 {lab=VDD}
N 2355 335 2650 335 {lab=VDD}
N 2355 330 2355 335 {lab=VDD}
N 2650 450 2650 490 {lab=VSS}
N 2825 410 2825 450 {lab=VSS}
N 2795 450 2825 450 {lab=VSS}
N 2650 450 2795 450 {lab=VSS}
N 2395 585 2395 595 {lab=clk_n2}
N 2395 515 2415 515 {lab=VDD}
N 2415 515 2415 545 {lab=VDD}
N 2460 655 2515 655 {lab=Y}
N 2515 585 2515 595 {lab=clk_n2}
N 2485 585 2515 585 {lab=clk_n2}
N 2395 575 2395 585 {lab=clk_n2}
N 2545 410 2605 410 {lab=vgate}
N 2555 625 2605 625 {lab=vgate}
N 2830 615 2855 615 {lab=vgate}
N 2605 570 2605 625 {lab=vgate}
N 2205 730 2225 730 {lab=VSS}
N 2225 730 2225 765 {lab=VSS}
N 2205 765 2225 765 {lab=VSS}
N 2205 760 2205 765 {lab=VSS}
N 2205 410 2325 410 {lab=vbootstrap}
N 2200 410 2205 410 {lab=vbootstrap}
N 2460 700 2640 700 {lab=Y}
N 2640 655 2640 700 {lab=Y}
N 2205 700 2460 700 {lab=Y}
N 2670 655 2670 735 {lab=VSS}
N 2855 615 2855 640 {lab=vgate}
N 2765 680 2825 680 {lab=vin}
N 2700 655 2700 680 {lab=vin}
N 2855 680 2855 745 {lab=VSS}
N 2795 405 2795 450 {lab=VSS}
N 2650 405 2650 450 {lab=VSS}
N 2765 680 2765 775 {lab=vin}
N 2700 680 2765 680 {lab=vin}
N 2935 745 2935 830 {lab=GND}
N 2765 835 2935 830 {lab=GND}
N 2885 685 2935 685 {lab=vc}
N 2885 680 2885 685 {lab=vc}
N 1520 325 1625 325 {lab=VSS}
N 1855 325 1975 325 {lab=VSS}
N 2390 545 2415 545 {lab=VDD}
N 2730 355 2730 410 {lab=vgate_ground}
N 2680 410 2730 410 {lab=vgate_ground}
N 2390 625 2515 625 {lab=VSS}
N 2425 725 2460 725 {lab=Y}
N 2355 545 2355 630 {lab=clk}
N 2485 450 2485 585 {lab=clk_n2}
N 2395 585 2485 585 {lab=clk_n2}
N 2460 700 2460 725 {lab=Y}
N 2460 655 2460 700 {lab=Y}
N 2395 655 2460 655 {lab=Y}
N 2325 340 2355 340 {lab=VDD}
N 2830 570 2830 615 {lab=vgate}
N 2670 610 2670 615 {lab=vgate}
N 2740 570 2830 570 {lab=vgate}
N 2605 410 2605 570 {lab=vgate}
N 2205 410 2205 590 {lab=vbootstrap}
N 2205 650 2205 700 {lab=Y}
N 2670 610 2740 610 {lab=vgate}
N 2740 570 2740 610 {lab=vgate}
N 2605 570 2740 570 {lab=vgate}
N 2485 450 2515 450 {lab=clk_n2}
N 2325 410 2485 410 {lab=vbootstrap}
N 2375 370 2375 375 {lab=VSS}
N 2325 370 2375 370 {lab=VSS}
C {devices/code_shown.sym} 2620 1085 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param ts=10n
.param period = 5*ts
.param wp = 1.5u
.param a = 1.8
.param wn = 0.5u
.param rise_t = period*0.01
.param fall_t = period*0.01
.param delay_n = 0
.param delay_s = 0
.param delay_2 = 0
.param delay_1 = 0
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-10
.control

* Transient Analysis
tran 1p 200n

plot clk clk_n vpump vpump2
plot vin vgate vc
plot vbootstrap vgate_ground  vgate Y clk clk_n clk_n2
.endc 
"}
C {code_shown.sym} 1575 1025 0 0 {
name=TT_MODELS
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
C {vsource.sym} 2765 805 0 0 {name=V2 value="SIN(1 0.5 \{1/(4*period)\})" savecurrent=false}
C {lab_pin.sym} 2765 775 0 0 {name=p12 sig_type=std_logic lab=vin}
C {gnd.sym} 2765 835 0 0 {name=l5 lab=GND}
C {vsource.sym} 1790 825 0 0 {name=V4 value=1.8 savecurrent=false}
C {lab_pin.sym} 1790 795 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {gnd.sym} 1790 855 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1735 255 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {capa.sym} 1625 410 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1855 410 0 0 {name=C2
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1855 460 0 1 {name=p10 sig_type=std_logic lab=clk}
C {lab_pin.sym} 1625 455 0 0 {name=p15 sig_type=std_logic lab=clk_n}
C {lab_pin.sym} 1510 365 0 0 {name=p16 sig_type=std_logic lab=vpump}
C {sg13g2_pr/sg13_hv_pmos.sym} 2515 430 3 0 {name=M6
l=0.4u
w=5u
ng=5
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2375 625 0 0 {name=M8
l=0.45u
w=5u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 2375 545 0 0 {name=M9
l=0.4u
w=15u
ng=5
m=5
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 2440 335 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2650 490 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2430 625 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2395 515 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_hv_nmos.sym} 2535 625 0 1 {name=M10
l=0.45u
w=5u
ng=1
m=5
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2670 635 3 1 {name=M11
l=0.45u
w=5u
ng=10
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {capa.sym} 2205 620 0 0 {name=C3
m=64
value=20f
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_hv_nmos.sym} 2185 730 0 0 {name=M12
l=0.45u
w=10u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 2215 765 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 2650 390 3 1 {name=M13
l=0.45u
w=7u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 2795 390 3 1 {name=M3
l=0.45u
w=7u
ng=2
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1645 325 0 1 {name=M4
l=0.45u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1835 325 0 0 {name=M5
l=0.45u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 2670 735 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 2855 660 1 0 {name=M1
l=0.45u
w=1u
ng=2
m=64
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 2855 745 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2165 730 2 1 {name=p3 sig_type=std_logic lab=clk_n}
C {lab_pin.sym} 2795 370 0 1 {name=p7 sig_type=std_logic lab=clk_n}
C {vsource.sym} 950 790 0 0 {name=V1 value="PULSE( 1.8 0 \{delay_n\} \{rise_t\} \{fall_t\} \{ts\} \{period\} )" savecurrent=false}
C {gnd.sym} 950 820 0 0 {name=l1 lab=GND}
C {vsource.sym} 950 695 0 0 {name=V5 value="PULSE( 0 1.8 \{delay_n\} \{rise_t\} \{fall_t\} \{ts\} \{period\} )" savecurrent=false}
C {gnd.sym} 950 725 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 950 665 2 1 {name=p25 sig_type=std_logic lab=clk}
C {lab_pin.sym} 950 760 0 0 {name=p26 sig_type=std_logic lab=clk_n}
C {capa.sym} 2935 715 0 0 {name=C4
m=64
value=20f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1975 325 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1520 325 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2355 580 0 0 {name=p11 sig_type=std_logic lab=clk}
C {lab_pin.sym} 1855 365 0 1 {name=p27 sig_type=std_logic lab=vpump2}
C {lab_pin.sym} 2935 685 0 1 {name=p29 sig_type=std_logic lab=vc}
C {lab_pin.sym} 2730 355 0 0 {name=p13 sig_type=std_logic lab=vgate_ground}
C {lab_pin.sym} 2425 725 0 0 {name=p32 sig_type=std_logic lab=Y}
C {lab_pin.sym} 2205 410 0 0 {name=p2 sig_type=std_logic lab=vbootstrap}
C {lab_pin.sym} 2485 470 0 0 {name=p5 sig_type=std_logic lab=clk_n2}
C {lab_pin.sym} 2010 790 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 2010 820 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 2010 850 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 2605 530 0 0 {name=p30 sig_type=std_logic lab=vgate}
C {lab_pin.sym} 2285 370 0 0 {name=p4 sig_type=std_logic lab=vpump}
C {lab_pin.sym} 2375 375 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 2305 370 0 0 {name=M2
l=0.45u
w=10u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
