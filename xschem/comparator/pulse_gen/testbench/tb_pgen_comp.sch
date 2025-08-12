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
N 1690 -10 1690 10 {lab=VSS}
N 1540 210 1550 210 {lab=PULSEN}
N 1510 -170 1590 -170 {lab=vinp}
N 1540 -90 1590 -90 {lab=vinn}
N 1610 150 1610 170 {lab=VDD}
N 1610 250 1610 270 {lab=VSS}
N 1690 -270 1690 -250 {lab=VDD}
N 1540 210 1540 430 {lab=PULSEN}
N 1750 -10 1750 430 {lab=PULSEN}
N 1690 210 1790 210 {lab=PULSE}
N 1540 430 1750 430 {lab=PULSEN}
N 1790 -10 1790 210 {lab=PULSE}
N 2210 -210 2210 -190 {lab=VSS}
N 2210 -70 2210 -50 {lab=VDD}
N 2210 30 2210 50 {lab=VSS}
N 1850 -150 2030 -150 {lab=voutp_comp}
N 2030 -250 2150 -250 {lab=voutp_comp}
N 2030 -10 2150 -10 {lab=voutn_comp}
N 1850 -110 2030 -110 {lab=voutn_comp}
N 2030 -250 2030 -150 {lab=voutp_comp}
N 2030 -110 2030 -10 {lab=voutn_comp}
N 2270 -250 2390 -250 {lab=voutp_buf}
N 2270 -10 2390 -10 {lab=voutn_buf}
N 2390 -110 2390 -10 {lab=voutn_buf}
N 2390 -250 2390 -150 {lab=voutp_buf}
N 2570 -70 2570 -50 {lab=VSS}
N 2570 -210 2570 -190 {lab=VDD}
N 2390 -110 2430 -110 {lab=voutn_buf}
N 2430 -110 2470 -150 {lab=voutn_buf}
N 2470 -150 2510 -150 {lab=voutn_buf}
N 2390 -150 2430 -150 {lab=voutp_buf}
N 2430 -150 2470 -110 {lab=voutp_buf}
N 2470 -110 2510 -110 {lab=voutp_buf}
N 2630 -110 2750 -110 {lab=#net1}
N 2030 -270 2030 -250 {lab=voutp_comp}
N 2030 -10 2030 10 {lab=voutn_comp}
N 2390 -270 2390 -250 {lab=voutp_buf}
N 2390 -10 2390 10 {lab=voutn_buf}
N 2210 -310 2210 -290 {lab=VDD}
N 2630 -150 2750 -150 {lab=vout}
N 140 -140 200 -140 {lab=#net2}
N 140 -140 140 -120 {lab=#net2}
N 1540 -110 1540 -90 {lab=vinn}
N 1510 -90 1540 -90 {lab=vinn}
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
C {devices/lab_wire.sym} 500 -100 0 1 {name=l3 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 500 -60 0 1 {name=l9 sig_type=std_logic lab=PULSEN}
C {devices/lab_wire.sym} 500 -40 0 1 {name=l10 sig_type=std_logic lab=VTUNE}
C {code_shown.sym} 710 -90 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
*.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

tran 40p 450n

* Plotting
plot v(vout) \{v(x1.vx) + 2\} \{v(PULSE)  +4\} \{x1.READY + 8\} \{v(PULSEN) + 6\}

.endc"}
C {devices/vsource.sym} 20 -30 0 0 {name=VDD3 value=0}
C {devices/gnd.sym} 20 0 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 20 -60 0 1 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1690 -270 3 0 {name=p11 lab=VDD}
C {devices/lab_pin.sym} 1690 10 1 0 {name=p8 lab=VSS}
C {devices/lab_pin.sym} 1510 -170 0 0 {name=p9 lab=vinp}
C {devices/lab_pin.sym} 1510 -90 2 1 {name=p10 lab=vinn}
C {inverter/inverter_lv.sym} 1610 210 0 0 {name=x5 W_P=2.0u L_P=0.13u W_N=2.0u L_N=0.13u}
C {lab_wire.sym} 1610 150 3 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1610 270 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1710 210 3 1 {name=p26 lab=PULSE}
C {lab_wire.sym} 1750 360 2 1 {name=p29 sig_type=std_logic lab=PULSEN}
C {comparator/discrete_time/Dynamic-biasing/dynamic_biasing_comparator.sym} 1710 -130 0 0 {name=x2}
C {devices/lab_pin.sym} 2750 -150 2 1 {name=p2 lab=vout}
C {buffer/buffer_lv.sym} 2210 -250 0 0 {name=x3 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {lab_wire.sym} 2210 -310 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2210 -190 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {buffer/buffer_lv.sym} 2210 -10 0 0 {name=x4 W_P_INV=1.0u L_P_INV=0.13u W_N_INV=1.0u L_N_INV=0.13u}
C {lab_wire.sym} 2210 -70 3 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2210 50 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2570 -210 3 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2570 -50 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {noconn.sym} 2750 -110 0 1 {name=l18}
C {comparator/SR_latch/SR_latch.sym} 2570 -130 0 0 {name=x7 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=1.0u L_N_SR=0.13u}
C {lab_wire.sym} 2030 -270 3 1 {name=p16 sig_type=std_logic lab=voutp_comp}
C {lab_wire.sym} 2030 10 3 0 {name=p17 sig_type=std_logic lab=voutn_comp}
C {lab_wire.sym} 2390 -270 1 0 {name=p18 sig_type=std_logic lab=voutp_buf}
C {lab_wire.sym} 2390 10 1 1 {name=p19 sig_type=std_logic lab=voutn_buf}
C {lab_wire.sym} 500 -120 0 1 {name=p6 sig_type=std_logic lab=voutp_buf}
C {lab_wire.sym} 500 -80 0 1 {name=p12 sig_type=std_logic lab=voutn_buf}
C {devices/vsource.sym} 140 -90 0 0 {name=VDD2 value="PULSE(1.8 0 0 10p 10p 10n 20n 1)"}
C {devices/gnd.sym} 140 -60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1540 -140 0 0 {name=VDD4 value=1m}
