v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -80 190 -40 {lab=#net1}
N 190 0 190 40 {lab=#net2}
N 70 -60 70 20 {lab=n_dec}
N -10 60 70 60 {lab=comp_in}
N -10 -100 -10 60 {lab=comp_in}
C {comparator/SR_latch/SR_latch.sym} 250 -20 0 0 {name=x1 W_P_SR=1.0u L_P_SR=0.13u W_N_SR=1.0u L_N_SR=0.13u}
C {sg13g2_stdcells/sg13g2_and2_1.sym} 130 -80 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 130 40 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 30 -100 0 0 {name=x30 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 170 -230 0 0 {name=x53 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 70 -20 0 0 {name=p1 sig_type=std_logic lab=n_dec
}
C {lab_pin.sym} 260 -230 2 0 {name=p2 sig_type=std_logic lab=n_dec
}
C {iopin.sym} 80 -230 0 1 {name=p3 lab=p_bit_dec}
C {iopin.sym} 80 -250 0 1 {name=p4 lab=clk}
C {iopin.sym} 80 -210 0 1 {name=p5 lab=reset}
C {iopin.sym} -10 -100 0 1 {name=p6 lab=comp_in}
C {iopin.sym} 250 -80 1 1 {name=p7 lab=VDD
}
C {iopin.sym} 250 40 3 1 {name=p8 lab=VSS}
C {iopin.sym} 310 -40 2 1 {name=p9 lab=bit}
C {iopin.sym} 260 -250 2 1 {name=p10 lab=dec}
C {noconn.sym} 310 0 0 1 {name=l2}
