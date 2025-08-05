v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 115 -200 175 -200 {lab=GND}
N 115 -260 115 -200 {lab=GND}
N 115 -360 115 -300 {lab=vdd}
N 115 -360 175 -360 {lab=vdd}
C {logic/logic.sym} -500 590 2 1 {name=x3 }
C {lab_pin.sym} -330 -70 1 0 {name=p2 lab=b11}
C {lab_pin.sym} -360 90 0 0 {name=p4 lab=clk}
C {lab_pin.sym} -110 190 0 0 {name=p7 lab=VDD}
C {lab_pin.sym} 180 0 0 1 {name=p10 lab=comp_in}
C {lab_pin.sym} -310 -70 1 0 {name=p12 lab=b10}
C {lab_pin.sym} -290 -70 1 0 {name=p13 lab=b9}
C {lab_pin.sym} -270 -70 1 0 {name=p14 lab=b8}
C {lab_pin.sym} -250 -70 1 0 {name=p15 lab=b7}
C {lab_pin.sym} -230 -70 1 0 {name=p16 lab=b6}
C {lab_pin.sym} -210 -70 1 0 {name=p17 lab=b5}
C {lab_pin.sym} -190 -70 1 0 {name=p18 lab=b4}
C {lab_pin.sym} -170 -70 1 0 {name=p19 lab=b3}
C {lab_pin.sym} -150 -70 1 0 {name=p20 lab=b2}
C {lab_pin.sym} -130 -70 1 0 {name=p21 lab=b1}
C {lab_pin.sym} -110 -70 1 0 {name=p22 lab=b0}
C {lab_pin.sym} -70 -70 1 0 {name=p30 lab=d11}
C {lab_pin.sym} -50 -70 1 0 {name=p31 lab=d10}
C {lab_pin.sym} -30 -70 1 0 {name=p32 lab=d9}
C {lab_pin.sym} -10 -70 1 0 {name=p33 lab=d8}
C {lab_pin.sym} 10 -70 1 0 {name=p34 lab=d7}
C {lab_pin.sym} 30 -70 1 0 {name=p35 lab=d6}
C {lab_pin.sym} 50 -70 1 0 {name=p36 lab=d5}
C {lab_pin.sym} 70 -70 1 0 {name=p37 lab=d4}
C {lab_pin.sym} 90 -70 1 0 {name=p38 lab=d3}
C {lab_pin.sym} 110 -70 1 0 {name=p39 lab=d2}
C {lab_pin.sym} 130 -70 1 0 {name=p40 lab=d1}
C {lab_pin.sym} 150 -70 1 0 {name=p41 lab=d0}
C {lab_pin.sym} -90 -70 1 0 {name=p1 lab=sample}
C {lab_pin.sym} 180 70 0 1 {name=p3 lab=eoc}
C {devices/code_shown.sym} -1490 0 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Transient Analysis
tran 10p 50n

plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\}
plot \{b0\} \{b1 + 4\} \{b2 + 8\} \{b3 + 12\} \{b4 + 16\} \{b5 + 20\} \{b6 + 24\} \{b7 + 28\} \{b8 + 32\} \{b9 + 36\} \{b10 + 40\} \{b11 + 44\}
plot \{clk\} \{comp_in + 2\} \{sample + 4\}

.endc
"}
C {vsource.sym} -90 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -90 -330 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} -90 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 405 -350 0 1 {name=p6 sig_type=std_logic lab=clk
}
C {gnd.sym} -70 190 0 0 {name=l2 lab=GND}
C {gnd.sym} -360 40 0 0 {name=l4 lab=GND}
C {code_shown.sym} -1505 -195 0 0 {
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
C {comparator/discrete_time/DT_comparator.sym} 235 -280 0 0 {name=x1}
C {lab_pin.sym} 355 -280 0 1 {name=p8 lab=comp_in}
C {lab_pin.sym} 175 -360 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {gnd.sym} 175 -200 0 0 {name=l3 lab=GND}
C {gnd.sym} 295 -200 0 0 {name=l5 lab=GND}
