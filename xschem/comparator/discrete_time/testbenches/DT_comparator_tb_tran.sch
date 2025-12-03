v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - DT comparator} 540 -1710 0 0 1 1 {}
T {Carga capacitiva de Logica} 1350 -530 0 0 0.25 0.25 {}
T {VDD} 1160 -900 0 0 0.25 0.25 {}
T {Vin+} 1070 -790 0 0 0.25 0.25 {}
T {Vin-} 1070 -700 0 0 0.25 0.25 {}
T {PULSE} 1420 -1000 0 0 0.25 0.25 {}
T {VCM} 1260 -900 0 0 0.25 0.25 {}
T {VCM} 900 -620 0 0 0.25 0.25 {}
T {Enable} 1260 -610 0 0 0.25 0.25 {}
N 410 -760 410 -720 {
lab=VDD}
N 410 -660 410 -620 {
lab=GND}
N 1180 -860 1180 -820 {lab=VDD}
N 420 -890 420 -850 {
lab=GND}
N 420 -990 420 -950 {
lab=enable}
N 1440 -600 1440 -560 {lab=GND}
N 1020 -720 1120 -720 {lab=vinn}
N 1300 -660 1300 -620 {lab=enable}
N 1180 -660 1180 -560 {lab=GND}
N 1360 -740 1440 -740 {lab=out_comp}
N 1440 -740 1440 -660 {lab=out_comp}
N 1440 -740 1520 -740 {lab=out_comp}
N 1020 -720 1020 -650 {lab=vinn}
N 870 -590 870 -520 {lab=vcm}
N 870 -590 1020 -590 {lab=vcm}
N 1470 -910 1470 -870 {lab=GND}
N 800 -590 870 -590 {lab=vcm}
N 800 -760 800 -650 {lab=vinp}
N 800 -760 1120 -760 {lab=vinp}
N 1320 -970 1470 -970 {lab=pulse}
N 1320 -970 1320 -820 {lab=pulse}
N 1290 -860 1290 -820 {lab=vcm}
C {devices/vsource.sym} 410 -690 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 410 -620 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 410 -760 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Jesus Avila" rev=1.0 lock=true}
C {devices/code_shown.sym} 40 -1510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {code_shown.sym} -1850 -1710 0 0 {name=NGSPICE
only_toplevel=true
value="
.param vdd=1.8
.param temp=27
.param tstart=2n
.param vindiff = 219u
.param Vcm=0.9

.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.ic v(vout) = 0
.control
save all
set hcopydevtype = svg
set color0 = white
set color1 = black

* Operating Point Analysis
op
remzerovec
write DT_comparator_tb_tran.raw 
set appendwrite

* Transient Analysis
* tran 4p 20n
tran 1p 10n
write DT_comparator_tb_tran.raw v(vinp) v(vinn) v(vout)

* Measure vcpp_min & vcpn_min
*let tmeas = 1/fclk
*meas tran vcpp_min FIND qv(x1.x1.vcpp) at=tmeas
*meas tran vcpn_min FIND v(x1.x1.vcpn) at=tmeas

* Measure Propagation Delay
* Time from clock rising edge to 90% VDD of vout

meas tran t_dec1 TRIG v(x1.voutp_buf) VAL=1.62 RISE=1 TARG v(pulse) VAL=0.18 FALL=1
meas tran t_dec2 TRIG v(x1.voutp_buf) VAL=1.62 RISE=2 TARG v(pulse) VAL=0.18 FALL=2
meas tran t_dec3 TRIG v(x1.voutp_buf) VAL=1.62 RISE=3 TARG v(pulse) VAL=0.18 FALL=3

meas tran t_reset1 TRIG pulse VAL=1.62 RISE=2 TARG pulse VAL=0.18 FALL=2
meas tran t_reset2 TRIG pulse VAL=1.62 RISE=3 TARG pulse VAL=0.18 FALL=3
meas tran t_reset3 TRIG pulse VAL=1.62 RISE=4 TARG pulse VAL=0.18 FALL=4

echo Primer tiempo de decision $&t_dec1 s
echo Segundo tiempo de decison $&t_dec3 s


echo Tiempo de espera $&t_reset3 s

* Calculate Energy / Conversion
* i_int in As
* energy_conv in Ws = J
*let N = 1
**let t_conv = tstart + t_dec
*meas tran i_int INTEG i(VDD) from=tstart to=t_conv
*let energy_conv = 1.5 * i_int / N

*let energy_conv_femto = energy_conv * 1e15
*echo Energy / Conversion $&energy_conv_femto fJ/conv

* Plotting

let vin_dif_mV = (vinp-vinn)*1000
let outp_Bindra = x1.voutp_comp
let outn_Bindra = x1.voutn_comp
let outp_Buffer = x1.voutp_buf
let outn_Buffer = x1.voutn_buf
let READY = x1.x6.READY
let Schmitt_in = x1.x6.vx
let Schmitt_out = x1.x6.vxs
let Schmitt_outn = x1.x6.vx_n

plot i(VDD)
plot v(x1.voutp_buf) \{v(x1.voutn_buf)\} \{v(x1.x6.vx_n) + 4\}  \{v(pulse) + 8\} \{v(x1.x6.READY) + 10\}
plot v(x1.voutp_comp) \{v(x1.voutn_comp)\} \{v(x1.x6.vx_n) + 4\}  \{v(x1.x6.vx) + 8\} \{v(x1.x6.vxs) + 10\} vin_dif_mV+12
plot x1.voutp_comp pulse x1.voutp_buf x1.x6.ready

hardcopy ./../../img/corriente_comparador.svg i(VDD) title 'consumo'
hardcopy ./../../img/salidas_internas_comparador.svg outp_Bindra outn_Bindra outp_Buffer+2 outn_Buffer+2 pulse+4 vin_dif_mV+6 title 'Salidas Internas del Comparador'
hardcopy ./../../img/senales_pgen.svg READY Schmitt_out+2 Schmitt_outn+2 Schmitt_in+2 pulse+4 title 'Señales Internas Generador de Pulsos'
hardcopy ./../../img/retardo_buffer_comp.svg outp_Bindra outn_Bindra+2 outp_Buffer outn_Buffer+2 out_comp+4 title 'Retardo Salidas'
hardcopy ./../../img/salidas_comp.svg vin_dif_mV out_comp pulse+4 enable+2 title 'Salidas Comparador'



* Writing Data
set wr_singlescale
set wr_vecnames
let vs=x1.x1.vs
let vcpp=x1.x1.vcpp
let vcpn=x1.x1.vcpn
let voutp_comp=x1.voutp_comp
let voutn_comp=x1.voutn_comp
wrdata ./../../DT_comparator_tb_tran.txt v(clk) v(vinp) v(vinn) v(vs) v(vcpp) v(vcpn) v(voutp_comp) v(voutn_comp) v(vout)

*quit
.endc"}
C {devices/vsource.sym} 420 -920 0 0 {name=V1 value="pulse(\{VDD\} 0 0 10p 10p \{tstart\} 6n 1)"}
C {devices/vdd.sym} 1180 -860 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1180 -560 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1300 -620 2 0 {name=l4 sig_type=std_logic lab=enable}
C {devices/lab_wire.sym} 1520 -740 0 1 {name=l10 sig_type=std_logic lab=out_comp}
C {devices/gnd.sym} 870 -460 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 800 -620 0 1 {name=vinp value="PULSE(\{vindiff/2\} \{-vindiff/2\} 0 0.1p 0.1p 2n 4n)"}
C {devices/gnd.sym} 420 -850 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 420 -990 0 1 {name=l14 sig_type=std_logic lab=enable}
C {capa.sym} 1440 -630 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1440 -560 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 800 -690 0 0 {name=l18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 1020 -690 0 0 {name=l19 sig_type=std_logic lab=vinn}
C {comparator/discrete_time/DT_comparator.sym} 1240 -740 0 0 {name=x1}
C {devices/vsource.sym} 430 -1090 0 0 {name=VDD3 value=0}
C {devices/gnd.sym} 430 -1060 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 430 -1120 0 1 {name=l5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 870 -490 0 1 {name=vinp1 value="\{vcm\}"}
C {devices/lab_wire.sym} 870 -550 0 0 {name=l9 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 1290 -860 0 0 {name=l11 sig_type=std_logic lab=vcm}
C {capa.sym} 1470 -940 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1470 -870 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 1470 -970 0 1 {name=l20 sig_type=std_logic lab=pulse}
C {devices/vsource.sym} 1020 -620 2 1 {name=vinp3 value="PULSE(\{vindiff/2\} \{-vindiff/2\} 0 0.1p 0.1p 2n 4n)"}
