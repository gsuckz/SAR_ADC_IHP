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
N 130 -310 130 -280 {lab=#net2}
N -180 -310 130 -310 {lab=#net2}
N -180 -310 -180 -280 {lab=#net2}
C {dac_icms_cell/unit_cell.sym} -20 0 0 0 {name=x1 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u Cu=20f n=2048}
C {vsource.sym} -340 60 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -340 30 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -340 90 0 0 {name=l1 lab=GND}
C {gnd.sym} 20 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 20 -160 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} -340 -60 0 0 {name=V2 value="PULSE( 0 1.8 0 10p 10p .5n 1n)" savecurrent=false}
C {lab_pin.sym} -340 -90 0 0 {name=p3 sig_type=std_logic lab=bit
}
C {gnd.sym} -340 -30 0 0 {name=l3 lab=GND}
C {vsource.sym} -340 -190 0 0 {name=V3 value=0.75 savecurrent=false}
C {lab_pin.sym} -340 -220 0 0 {name=p4 sig_type=std_logic lab=vcm

}
C {gnd.sym} -340 -160 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 0 -160 0 0 {name=p5 sig_type=std_logic lab=bit
}
C {vsource.sym} -510 -70 0 0 {name=V4 value="PULSE(1.8 0 50.36n 10p 10p 20n 40n 2)" savecurrent=false}
C {lab_pin.sym} -510 -100 0 0 {name=p7 sig_type=std_logic lab=d
}
C {gnd.sym} -510 -40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -100 -80 0 0 {name=p8 sig_type=std_logic lab=d
}
C {devices/code_shown.sym} 210 -270 0 0 {name=NGSPICE
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
tran 10p 100n

plot top \{bit +2\} \{d +4\} \{s + 6\}
plot i(V2) i(V3) i(V6)


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
C {vsource.sym} -530 80 0 0 {name=V5 value="PULSE(-10 10 0 10p 10p 20n 40n 1)" savecurrent=false}
C {lab_pin.sym} -530 50 0 0 {name=p11 sig_type=std_logic lab=s
value="PULSE(0 3.3 0 10p 10p 20n 40n 1)"}
C {gnd.sym} -530 110 0 0 {name=l7 lab=GND
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
C {vsource.sym} 130 -250 0 0 {name=V6 value=1 savecurrent=false}
C {gnd.sym} 130 -220 0 0 {name=l10 lab=GND}
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
