v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1165 680 1245 680 {lab=sample_d}
N 1085 720 1085 740 {lab=VSS}
N 1085 620 1085 640 {lab=VDD}
N 790 720 790 740 {lab=VSS}
N 790 620 790 640 {lab=VDD}
N 870 680 1025 680 {lab=sample_n_d}
N 975 25 975 30 {lab=vctop}
N 720 680 730 680 {lab=#net1}
N 640 560 640 680 {lab=sample}
N 355 10 575 10 {lab=#net2}
N 575 10 580 20 {lab=#net2}
N 805 25 975 25 {lab=vctop}
N 740 20 805 20 {lab=vctop}
N 805 20 805 25 {lab=vctop}
N 640 20 680 20 {lab=#net3}
N 295 -105 295 10 {lab=vcbot}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 215 -100 0 0 {name=x11 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u
n=10}
C {lab_pin.sym} 195 -140 0 0 {name=p26 lab=VDD}
C {devices/code_shown.sym} -1270 390 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-10
.control

* Transient Analysis
tran 100p 20n

*plot \{d0\} \{d1 + 4\} \{d2 + 8\} \{d3 + 12\} \{d4 + 16\} \{d5 + 20\} \{d6 + 24\} \{d7 + 28\} \{d8 + 32\} \{d9 + 36\} \{d10 + 40\} \{d11 + 44\}
*plot \{b0\} \{b1 + 4\} \{b2 + 8\} \{b3 + 12\} \{b4 + 16\} \{b5 + 20\} \{b6 + 24\} \{b7 + 28\} \{b8 + 32\} \{b9 + 36\} \{b10 + 40\} \{b11 + 44\}
*plot \{clk\} \{comp_in + 2\} \{sample + 4\}
plot vctop vcbot sample
plot \{vctop-vcbot\} sample
plot i(v1) i(v5)
*plot x3.x14.net1-vctop x3.x18.vcap-vcbot

.endc
"}
C {code_shown.sym} -875 195 0 0 {
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
C {gnd.sym} 195 -60 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 130 595 0 1 {name=p66 sig_type=std_logic lab=sample}
C {gnd.sym} 130 655 0 0 {name=l13 lab=GND}
C {vsource.sym} 130 625 0 0 {name=V7 value="PULSE( 0 1.8 0 1p 1p 5n 10n 1)" savecurrent=false}
C {inverter/inverter_lv.sym} 450 680 0 0 {name=x10 W_P=10.0u L_P=0.13u W_N=10.0u L_N=0.13u n=10
}
C {lab_pin.sym} 215 -140 3 1 {name=p1 sig_type=std_logic lab=sample}
C {lab_pin.sym} 390 680 3 1 {name=p2 sig_type=std_logic lab=sample}
C {gnd.sym} 450 720 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 450 640 0 0 {name=p4 lab=VDD}
C {lab_pin.sym} 1235 680 0 1 {name=p44 sig_type=std_logic lab=sample_d}
C {inverter/inverter_lv.sym} 1085 680 0 0 {name=x1 W_P=10.0u L_P=0.13u W_N=10.0u L_N=0.13u n=10
}
C {lab_pin.sym} 1085 740 3 0 {name=p45 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1085 620 1 0 {name=p119 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 940 680 1 0 {name=p120 sig_type=std_logic lab=sample_n_d}
C {inverter/inverter_lv.sym} 790 680 0 0 {name=x30 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u n=10
}
C {lab_pin.sym} 790 740 3 0 {name=p121 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 620 1 0 {name=p136 sig_type=std_logic lab=VDD}
C {sg13g2_stdcells/sg13g2_dlygate4sd3_1.sym} 680 680 0 0 {name=x37 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 640 570 0 1 {name=p5 sig_type=std_logic lab=sample}
C {lab_pin.sym} 215 -60 1 1 {name=p6 sig_type=std_logic lab=sample_n}
C {lab_pin.sym} 530 680 3 1 {name=p7 sig_type=std_logic lab=sample_n}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 215 150 0 0 {name=x2 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u
n=10}
C {lab_pin.sym} 195 110 0 0 {name=p8 lab=VDD}
C {gnd.sym} 195 190 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 215 190 1 1 {name=p9 sig_type=std_logic lab=sample_d}
C {lab_pin.sym} 215 110 3 1 {name=p10 sig_type=std_logic lab=sample_n_d}
C {vsource.sym} 245 490 0 0 {name=V2 value=0.5 savecurrent=false}
C {lab_pin.sym} 245 460 0 0 {name=p12 sig_type=std_logic lab=vin}
C {gnd.sym} 245 520 0 0 {name=l5 lab=GND}
C {vsource.sym} 345 490 0 0 {name=V3 value=0.9 savecurrent=false}
C {lab_pin.sym} 345 460 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {gnd.sym} 345 520 0 0 {name=l6 lab=GND}
C {vsource.sym} 130 490 0 0 {name=V4 value=1.8 savecurrent=false}
C {lab_pin.sym} 130 460 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {gnd.sym} 130 520 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 135 150 0 0 {name=p15 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 135 -100 0 0 {name=p16 sig_type=std_logic lab=vin}
C {capa.sym} 610 20 3 0 {name=C1
m=64
value=20f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1055 25 0 1 {name=x3 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u
n=10}
C {lab_pin.sym} 1075 -15 0 1 {name=p17 lab=VDD}
C {gnd.sym} 1075 65 0 1 {name=l8 lab=GND}
C {lab_pin.sym} 1055 -15 1 0 {name=p18 sig_type=std_logic lab=sample}
C {lab_pin.sym} 1055 65 3 0 {name=p19 sig_type=std_logic lab=sample_n}
C {lab_pin.sym} 1135 25 0 1 {name=p20 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 925 25 1 0 {name=p21 sig_type=std_logic lab=vctop}
C {lab_pin.sym} 295 -45 2 0 {name=p22 sig_type=std_logic lab=vcbot}
C {vsource.sym} 325 10 1 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 710 20 1 0 {name=V5 value=0 savecurrent=false}
C {lab_pin.sym} 295 150 2 0 {name=p3 sig_type=std_logic lab=vj}
