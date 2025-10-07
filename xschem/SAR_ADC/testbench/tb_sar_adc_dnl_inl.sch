v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -270 -215 -270 {
lab=vinn}
N -240 -330 -215 -330 {
lab=vinp}
C {SAR_ADC/sar.sym} -120 -290 0 0 {name=x1}
C {devices/code_shown.sym} 315 -850 0 0 {name=NGSPICE
only_toplevel=false
value="* Simulación para caracterización DNL/INL de ADC SAR 12-bit
* Barrido DC con simulación transitoria en cada punto

.param vcm=0.9
.param vdd=1.8
.param period=5n
.param conv_time=100n

* Parámetro para barrido DC
.param vdiff_sweep=0

* Fuentes de alimentación
VDD VDD 0 DC \{vdd\}
VSS VSS 0 DC 0

* Fuentes de entrada diferencial (mantienen Vcm constante)
Vvinp vinp 0 DC \{vcm + vdiff_sweep/2\}
Vvinn vinn 0 DC \{vcm - vdiff_sweep/2\}

* Reset: pulso inicial para iniciar conversión
Vrst rst 0 PULSE(\{vdd\} 0 \{period\} 0.1n 0.1n \{conv_time\} \{conv_time*2\})

* Opciones de simulación
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-15

.control
.log logfile.txt
* Crear archivo de salida
set wr_singlescale
set wr_vecnames

* Barrido DC: 4096 puntos de -1.8V a +1.8V
let vdiff_start = -1.8
let vdiff_stop = 1.8
let n_points = 16
let vdiff_step = (vdiff_stop - vdiff_start) / (n_points - 1)

* Vectores para almacenar resultados
let vdiff_vec = unitvec(n_points)
let vinp_vec = unitvec(n_points)
let vinn_vec = unitvec(n_points)
let b0_vec = unitvec(n_points)
let b1_vec = unitvec(n_points)
let b2_vec = unitvec(n_points)
let b3_vec = unitvec(n_points)
let b4_vec = unitvec(n_points)
let b5_vec = unitvec(n_points)
let b6_vec = unitvec(n_points)
let b7_vec = unitvec(n_points)
let b8_vec = unitvec(n_points)
let b9_vec = unitvec(n_points)
let b10_vec = unitvec(n_points)
let b11_vec = unitvec(n_points)
let eoc_vec = unitvec(n_points)

* Loop del barrido
let idx = 0
let vdiff_val = vdiff_start

while idx < n_points
    * Configurar voltaje diferencial para este punto
    alter vvinp = vcm + vdiff_val/2
    alter vvinn = vcm - vdiff_val/2
    
    * Ejecutar simulación transitoria
    tran 0.05n 120n
    
    * Guardar vectores actuales antes de que se pierdan
    let time_tmp = time
    let eoc_tmp = eoc
    let vinp_tmp = vinp
    let vinn_tmp = vinn
    let b0_tmp = b0
    let b1_tmp = b1
    let b2_tmp = b2
    let b3_tmp = b3
    let b4_tmp = b4
    let b5_tmp = b5
    let b6_tmp = b6
    let b7_tmp = b7
    let b8_tmp = b8
    let b9_tmp = b9
    let b10_tmp = b10
    let b11_tmp = b11
    
    * Buscar el momento donde eoc está alto
    let eoc_high = eoc_tmp > 0.9
    let last_idx = length(time_tmp) - 1
    
    * Mientras eoc no esté alto, retroceder en el tiempo
    while eoc_high[last_idx] < 0.5
        let last_idx = last_idx - 1
        if last_idx < 1
            break
        end
    end
    
    * Guardar valores en este punto
    let vdiff_vec[idx] = vdiff_val
    let vinp_vec[idx] = vinp_tmp[last_idx]
    let vinn_vec[idx] = vinn_tmp[last_idx]
    let b0_vec[idx] = b0_tmp[last_idx]
    let b1_vec[idx] = b1_tmp[last_idx]
    let b2_vec[idx] = b2_tmp[last_idx]
    let b3_vec[idx] = b3_tmp[last_idx]
    let b4_vec[idx] = b4_tmp[last_idx]
    let b5_vec[idx] = b5_tmp[last_idx]
    let b6_vec[idx] = b6_tmp[last_idx]
    let b7_vec[idx] = b7_tmp[last_idx]
    let b8_vec[idx] = b8_tmp[last_idx]
    let b9_vec[idx] = b9_tmp[last_idx]
    let b10_vec[idx] = b10_tmp[last_idx]
    let b11_vec[idx] = b11_tmp[last_idx]
    let eoc_vec[idx] = eoc_tmp[last_idx]
    
    
    * Siguiente punto
    let idx = idx + 1
    let vdiff_val = vdiff_val + vdiff_step
    
    * Limpiar vectores temporales
    destroy time_tmp eoc_tmp vinp_tmp vinn_tmp b0_tmp b1_tmp b2_tmp b3_tmp b4_tmp b5_tmp b6_tmp b7_tmp b8_tmp b9_tmp b10_tmp b11_tmp
end

* Guardar resultados
write dnl_inl_data.raw vdiff_vec vinp_vec vinn_vec b0_vec b1_vec b2_vec b3_vec b4_vec b5_vec b6_vec b7_vec b8_vec b9_vec b10_vec b11_vec eoc_vec

.endc"}
C {devices/lab_pin.sym} 220 -350 0 1 {name=p3 lab=d0}
C {devices/lab_pin.sym} -60 -410 1 0 {name=l3 lab=vdd}
C {devices/lab_pin.sym} 220 -340 0 1 {name=p4 lab=d1}
C {devices/lab_pin.sym} 220 -330 0 1 {name=p5 lab=d2}
C {devices/lab_pin.sym} 220 -320 0 1 {name=p6 lab=d3}
C {devices/lab_pin.sym} 220 -310 0 1 {name=p7 lab=d4}
C {devices/lab_pin.sym} 220 -300 0 1 {name=p8 lab=d5}
C {devices/lab_pin.sym} 220 -290 0 1 {name=p9 lab=d6}
C {devices/lab_pin.sym} 220 -280 0 1 {name=p10 lab=d7}
C {devices/lab_pin.sym} 220 -270 0 1 {name=p11 lab=d8}
C {devices/lab_pin.sym} 220 -260 0 1 {name=p12 lab=d9}
C {devices/lab_pin.sym} 220 -250 0 1 {name=p13 lab=d10}
C {devices/lab_pin.sym} 220 -240 0 1 {name=p14 lab=d11}
C {devices/lab_pin.sym} -140 -190 3 0 {name=p15 lab=compn}
C {devices/lab_pin.sym} -85 -190 3 0 {name=p16 lab=compp}
C {devices/lab_pin.sym} -30 -190 3 0 {name=p17 lab=compout}
C {devices/lab_pin.sym} 130 -190 3 0 {name=p18 lab=eoc}
C {devices/gnd.sym} 70 -410 0 0 {name=l2 lab=GND}
C {code_shown.sym} -540 -640 0 0 {
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
C {devices/lab_pin.sym} -240 -270 2 1 {name=l8 lab=vinn}
C {devices/lab_pin.sym} -240 -330 0 0 {name=l9 lab=vinp}
C {devices/gnd.sym} -120 -410 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 145 -410 1 0 {name=l11 lab=rst}
