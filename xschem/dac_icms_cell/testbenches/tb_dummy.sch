v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 1585 5 1595 5 {
lab=#net1}
N 1595 5 1595 65 {
lab=#net1}
N 1655 5 1665 5 {
lab=#net2}
N 1655 65 1735 65 {
lab=#net2}
N 1725 5 1735 5 {
lab=#net2}
N 1735 40 1735 65 {
lab=#net2}
N 1515 5 1525 5 {
lab=VDD}
N 1515 5 1515 65 {
lab=VDD}
N 1395 65 1515 65 {
lab=VDD}
N 1515 285 1525 285 {
lab=GND}
N 1515 225 1515 285 {
lab=GND}
N 1395 225 1515 225 {
lab=GND}
N 1655 285 1665 285 {
lab=#net3}
N 1655 225 1735 225 {
lab=#net3}
N 1585 285 1595 285 {
lab=#net4}
N 1555 5 1555 105 {
lab=VDD}
N 1695 105 1795 105 {
lab=VDD}
N 1555 185 1555 285 {
lab=GND}
N 1695 185 1795 185 {
lab=GND}
N 1725 285 1735 285 {lab=#net3}
N 1735 225 1735 285 {lab=#net3}
N 1655 225 1655 285 {lab=#net3}
N 1655 5 1655 65 {lab=#net2}
N 1695 185 1695 290 {lab=GND}
N 1555 185 1695 185 {
lab=GND}
N 1555 105 1695 105 {
lab=VDD}
N 1695 0 1695 105 {lab=VDD}
N 1735 5 1735 40 {
lab=#net2}
N 1985 40 1985 65 {lab=#net2}
N 1795 -75 1795 105 {
lab=VDD}
N 1795 185 1795 365 {
lab=GND}
N 1735 40 1985 40 {lab=#net2}
N 1900 220 1985 220 {lab=#net3}
N 1900 225 1900 230 {lab=#net3}
N 1900 220 1900 225 {lab=#net3}
N 1735 225 1900 225 {
lab=#net3}
N 2055 65 2090 65 {lab=vcapp}
N 2060 220 2080 220 {lab=vcapn}
N 2140 220 2180 220 {lab=vcm}
N 2180 65 2180 220 {lab=vcm}
N 2150 65 2180 65 {lab=vcm}
N 2055 -5 2055 65 {lab=vcapp}
N 2045 65 2055 65 {lab=vcapp}
N 2060 220 2060 280 {lab=vcapn}
N 2045 220 2060 220 {lab=vcapn}
N 1695 -45 1695 -35 {lab=#net5}
C {simulator_commands_shown.sym} -150 -60 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {devices/code_shown.sym} -195 110 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.param period = 2n
.param wp = 1.5u
.param wn = 0.5u
.param rise_t = period*0.01
.param fall_t = period*0.01
.param delay_n = 0
.param delay_s = 0
.param delay_2 = period*0.2
.param delay_1 = 0
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-10
.control

* Transient Analysis
tran 1p 2n


plot i(v1) i(v3)
plot sample_s sample_n sample_s2+2 sample_n2+2
plot i(v3)-i(v10) i(v10)
plot i(v1)-i(v2) i(v2)
plot i(v14) i(v15) i(v1)-i(v2) i(v2)

plot i(v11) i(v13) i(v3) i(v10)

plot vcapn vcapp
.endc
"}
C {gnd.sym} 1795 360 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1555 385 1 1 {name=p1 sig_type=std_logic lab=sample_s}
C {lab_pin.sym} 1695 385 1 1 {name=p6 sig_type=std_logic lab=sample_n}
C {vsource.sym} 2015 65 1 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 2015 220 1 0 {name=V3 value=0 savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 1555 305 3 0 {name=M1
l=0.13u
w=\{wn\}
ng=1
m=64
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1555 -15 1 0 {name=M2
l=0.13u
w=\{wp\}
ng=1
m=64
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1695 -105 3 1 {name=p25 sig_type=std_logic lab=sample_s}
C {lab_pin.sym} 1555 -95 3 1 {name=p27 sig_type=std_logic lab=sample_n}
C {lab_pin.sym} 1795 -70 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 1695 305 3 0 {name=M3
l=0.13u
w=\{wn\}
ng=1
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1695 -15 1 0 {name=M4
l=0.13u
w=\{wp\}
ng=1
m=32
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} 1295 490 0 0 {name=V4 value=1.7 savecurrent=false}
C {lab_pin.sym} 1295 460 0 0 {name=p12 sig_type=std_logic lab=vin}
C {gnd.sym} 1295 520 0 0 {name=l5 lab=GND}
C {vsource.sym} 1395 490 0 0 {name=V5 value=0.9 savecurrent=false}
C {lab_pin.sym} 1395 460 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {gnd.sym} 1395 520 0 0 {name=l6 lab=GND}
C {vsource.sym} 1180 490 0 0 {name=V6 value=1.8 savecurrent=false}
C {lab_pin.sym} 1180 460 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {gnd.sym} 1180 520 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1115 765 0 1 {name=p66 sig_type=std_logic lab=sample_s2}
C {gnd.sym} 955 815 0 0 {name=l13 lab=GND}
C {vsource.sym} 955 785 0 1 {name=V7 value="PULSE( 0 1.8 \{delay_1 + delay_s\} \{rise_t\} \{fall_t\}  \{period/2\} \{period\} 1)" savecurrent=false}
C {lab_pin.sym} 955 755 0 1 {name=p11 sig_type=std_logic lab=sample_s}
C {gnd.sym} 1115 825 0 0 {name=l8 lab=GND}
C {vsource.sym} 1115 795 0 0 {name=V8 value="PULSE( 0 1.8 \{delay_2 + delay_s\} \{rise_t\} \{fall_t\}  \{period/2\} \{period\}  1)" savecurrent=false}
C {lab_pin.sym} 1210 620 0 1 {name=p8 sig_type=std_logic lab=sample_n2}
C {gnd.sym} 940 670 0 0 {name=l4 lab=GND}
C {vsource.sym} 940 640 0 0 {name=V9 value="PULSE( 1.8 0 \{delay_n\} \{rise_t\} \{fall_t\} \{period/2\} \{period\} 1)" savecurrent=false}
C {lab_pin.sym} 940 610 0 1 {name=p9 sig_type=std_logic lab=sample_n}
C {gnd.sym} 1210 680 0 0 {name=l10 lab=GND}
C {vsource.sym} 1210 650 0 0 {name=V12 value="PULSE( 1.8 0 \{delay_n + delay_2\} \{rise_t\} \{fall_t\} \{period/2\} \{period\} 1)" savecurrent=false}
C {lab_pin.sym} 2180 130 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {lab_pin.sym} 2060 280 0 0 {name=p5 sig_type=std_logic lab=vcapn}
C {lab_pin.sym} 2055 -5 0 0 {name=p7 sig_type=std_logic lab=vcapp}
C {lab_pin.sym} 1395 65 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 1395 225 0 0 {name=l1 lab=GND}
C {vsource.sym} 1625 65 1 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 1625 285 1 0 {name=V10 value=0 savecurrent=false}
C {vsource.sym} 1555 355 2 0 {name=V11 value=0 savecurrent=false}
C {vsource.sym} 1695 355 2 0 {name=V13 value=0 savecurrent=false}
C {vsource.sym} 1555 -65 0 0 {name=V14 value=0 savecurrent=false}
C {vsource.sym} 1695 -75 0 0 {name=V15 value=0 savecurrent=false}
C {sg13g2_pr/cap_cmim.sym} 2120 65 3 0 {name=C3
model=cap_cmim
w=3.0e-6
l=3.0e-6
m=64
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 2110 220 3 0 {name=C1
model=cap_cmim
w=3.0e-6
l=3.0e-6
m=64
spiceprefix=X}
