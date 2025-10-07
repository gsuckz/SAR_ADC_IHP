v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 -270 -215 -270 {
lab=vinn}
N -240 -330 -215 -330 {
lab=vinp}
N -520 -340 -395 -340 {lab=#net1}
C {SAR_ADC/sar.sym} -120 -290 0 0 {name=x1}
C {devices/code_shown.sym} 305 -660 0 0 {name=NGSPICE
only_toplevel=false
value=".param POINT = 0
.param vcm = 0.9
.param step = 439u
.param vdiff = \{step*POINT\}
.param period=5n
*.param stoptime=\{18*period\}
.param stoptime=1n
.param ro = 300

.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15

.tran \{0.01*period\} \{stoptime\}

.control
    * Configurar para modo batch
    set hcopydevtype=postscript
    
    * Establecer breakpoint cuando eoc alcance 1.2V
    stop when v(eoc) >= 1.2
    
    * Ejecutar la simulación
    run
    
    * Al detenerse, verificar si fue por el breakpoint
    let eoc_val = v(eoc)
    let current_time = time
    
    * Verificar si eoc alcanzó el umbral
        echo EOC alcanzó 1.2V en t = $&current_time s
        echo
        echo Valores de las señales digitales:
        echo =================================
        
        * Guardar en archivo
        echo PUNTO = $POINT > resultado_sim_punto.txt
        echo Tiempo (s): $&current_time >> resultado_sim_punto.txt
        echo EOC (V): $&eoc_val >> resultado_sim_punto.txt
        echo >> resultado_sim_punto.txt
        echo Señal - Voltaje (V) >> resultado_sim_punto.txt
        echo ------------------ >> resultado_sim_punto.txt
        
        * Imprimir valores en consola y archivo
        echo d0  = $&v(d0) V | tee -a resultado_sim_punto.txt
        echo d1  = $&v(d1) V | tee -a resultado_sim_punto.txt
        echo d2  = $&v(d2) V | tee -a resultado_sim_punto.txt
        echo d3  = $&v(d3) V | tee -a resultado_sim_punto.txt
        echo d4  = $&v(d4) V | tee -a resultado_sim_punto.txt
        echo d5  = $&v(d5) V | tee -a resultado_sim_punto.txt
        echo d6  = $&v(d6) V | tee -a resultado_sim_punto.txt
        echo d7  = $&v(d7) V | tee -a resultado_sim_punto.txt
        echo d8  = $&v(d8) V | tee -a resultado_sim_punto.txt
        echo d9  = $&v(d9) V | tee -a resultado_sim_punto.txt
        echo d10 = $&v(d10) V | tee -a resultado_sim_punto.txt
        echo d11 = $&v(d11) V | tee -a resultado_sim_punto.txt
        echo
        echo Resultados guardados en resultado_sim_punto.txt

    
    quit
.endc
"}
C {devices/vsource.sym} -520 -370 0 1 {name=VI value=\{vdiff/2\}}
C {devices/lab_pin.sym} 220 -350 0 1 {name=p3 lab=d0}
C {devices/vsource.sym} -330 -160 0 1 {name=V1 value=1.8}
C {devices/lab_pin.sym} -330 -190 1 0 {name=l1 lab=vdd}
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
C {devices/lab_pin.sym} -395 -400 0 1 {name=l5 lab=vinp}
C {devices/lab_pin.sym} -140 -190 3 0 {name=p15 lab=compn}
C {devices/lab_pin.sym} -85 -190 3 0 {name=p16 lab=compp}
C {devices/lab_pin.sym} -30 -190 3 0 {name=p17 lab=compout}
C {devices/lab_pin.sym} 130 -190 3 0 {name=p18 lab=eoc}
C {devices/gnd.sym} -330 -130 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -460 -280 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 70 -410 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -460 -310 0 1 {name=VIN2 value=0.9}
C {devices/lab_pin.sym} -520 -400 2 1 {name=l4 lab=vinn}
C {code_shown.sym} -540 -640 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"
spice_ignore=false
      }
C {devices/vsource.sym} -395 -370 2 1 {name=VIN3 value=\{vdiff/2\}}
C {devices/lab_pin.sym} -240 -270 2 1 {name=l8 lab=vinn}
C {devices/lab_pin.sym} -240 -330 0 0 {name=l9 lab=vinp}
C {devices/gnd.sym} -120 -410 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -510 -160 0 1 {name=V2 value="PULSE(0 1.8 0 10p 10p 5n 6n 1)"}
C {devices/lab_pin.sym} -510 -190 1 0 {name=l12 lab=rst}
C {devices/gnd.sym} -510 -130 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 145 -410 1 0 {name=l11 lab=rst}
