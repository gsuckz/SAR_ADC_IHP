v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 110 250 150 {
lab=VDD}
N 250 210 250 250 {
lab=GND}
N 360 90 360 130 {
lab=VTUNE}
N 360 190 360 230 {
lab=GND}
N 490 100 490 140 {
lab=comp}
N 490 200 490 240 {
lab=GND}
C {comparator/pulse_gen/pgen.sym} 350 -100 0 0 {name=x1 VDD=VDD VSS=VSS }
C {devices/code_shown.sym} -350 -350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vsource.sym} 250 180 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 250 250 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 250 110 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 500 -140 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 360 160 0 0 {name=VDD1 value=1.1}
C {devices/gnd.sym} 360 230 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 360 90 0 0 {name=l5 lab=VTUNE}
C {devices/lab_wire.sym} 500 -120 0 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 500 -100 0 1 {name=l3 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 500 -80 0 1 {name=l7 sig_type=std_logic lab=comp}
C {devices/lab_wire.sym} 500 -60 0 1 {name=l9 sig_type=std_logic lab=PULSEN}
C {devices/lab_wire.sym} 500 -40 0 1 {name=l10 sig_type=std_logic lab=VTUNE}
C {devices/vsource.sym} 490 170 0 0 {name=VDD2 value="PULSE(0 1.5 50n 10p 10p 10n 100n)"}
C {devices/gnd.sym} 490 240 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 490 100 0 0 {name=l12 lab=comp}
C {code_shown.sym} 710 -90 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
*.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

tran 40p 450n

* Plotting
plot v(comp) \{v(x1.vx) + 2\} \{v(PULSE)  +4\} \{x1.READY + 6\} \{v(PULSEN) + 8\}

.endc"}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 580 30 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 540 30 0 0 {name=l13 sig_type=std_logic lab=PULSEN}
C {devices/lab_wire.sym} 620 30 0 1 {name=l14 sig_type=std_logic lab=PULSE}
C {devices/lab_wire.sym} 500 -120 0 1 {name=l15 sig_type=std_logic lab=GND}
C {devices/vsource.sym} 20 -30 0 0 {name=VDD3 value=0}
C {devices/gnd.sym} 20 0 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 20 -60 0 1 {name=l17 sig_type=std_logic lab=VSS}
