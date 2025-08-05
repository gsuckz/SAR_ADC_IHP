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
C {dac_icms_cell/unit_cell.sym} -20 0 0 0 {name=x1 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=2048}
C {vsource.sym} -280 -580 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -280 -610 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -280 -550 0 0 {name=l1 lab=GND}
C {gnd.sym} 20 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 20 -160 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} 665 -5 0 0 {name=V2 value="PULSE( 0 1.8 0 10p 10p .5n 1n)" savecurrent=false}
C {lab_pin.sym} 965 -260 0 0 {name=p3 sig_type=std_logic lab=bit
}
C {gnd.sym} 665 25 0 0 {name=l3 lab=GND}
C {vsource.sym} -165 -570 0 0 {name=V3 value=0.75 savecurrent=false}
C {lab_pin.sym} -165 -600 0 0 {name=p4 sig_type=std_logic lab=vcm

}
C {gnd.sym} -165 -540 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 0 -160 0 0 {name=p5 sig_type=std_logic lab=bit
}
C {vsource.sym} 385 -5 0 0 {name=V4 value="PULSE(1.8 0 0 10p 10p 5n 10n)" savecurrent=false}
C {lab_pin.sym} 1055 -200 0 1 {name=p7 sig_type=std_logic lab=d
}
C {gnd.sym} 385 25 0 0 {name=l5 lab=GND}
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
tran 10p 50n

plot top \{bit +2\} \{d +4\} \{s + 6\}
plot i(V2) i(V3) i(V6)
plot clk comp_in+3 p_dec+6

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
C {vsource.sym} -210 30 0 0 {name=V5 value="PULSE(-10 10 0 10p 10p 10n 20n 1)" savecurrent=false}
C {lab_pin.sym} -210 0 0 0 {name=p11 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} -210 60 0 0 {name=l7 lab=GND
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
C {vsource.sym} 325 -5 0 1 {name=V7 value="PULSE(1.8 0 0 10p 10p 10n 20n)" savecurrent=false}
C {gnd.sym} 325 25 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 965 -80 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 665 -95 0 0 {name=p16 sig_type=std_logic lab=clk}
C {lab_pin.sym} 325 -200 0 0 {name=p18 sig_type=std_logic lab=p_dec}
C {lab_pin.sym} 385 -140 0 0 {name=p19 sig_type=std_logic lab=comp_in}
