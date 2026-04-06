# Asset Placement Guide

Este archivo propone la ubicacion narrativa de cada recurso para una presentacion tecnica del SAR ADC.

## Flujo sugerido de la presentacion

1. Portada y contexto
2. Arquitectura SAR ADC (vision global)
3. CDAC y bit-cell
4. Comparador dinamico
5. Logica de control y temporizacion
6. Layout e implementacion fisica
7. Verificacion y resultados
8. Anexos

## 1) Portada y contexto

- `assets/images/misc/logo_unt.png` -> Portada institucional (main)
- `assets/images/misc/geogebra.png` -> Intuicion geometrica/analogica (support)
- `assets/images/misc/geogebra2.png` -> Intuicion geometrica/analogica (support)

## 2) Arquitectura SAR ADC (vision global)

- `assets/images/sar/sar_diagrama_xschem.svg` -> Bloques principales del ADC (main)
- `assets/images/sar/bit_cell_diagrama.svg` -> Repetibilidad por bit/celda (support)
- `assets/images/sar/conversion_ejemplo_1.svg` -> Ejemplo de conversion (main)
- `assets/images/sar/ejemplo_conv_vin100.svg` -> Caso de conversion puntual (support)
- `assets/images/sar/salidas_sar_ej1.svg` -> Evolucion de bits durante conversion (support)
- `assets/images/sar/tb_sar_adc.svg` -> Banco de prueba a nivel sistema (support)

## 3) CDAC y bit-cell

- `assets/images/cdac/dac_diagrama.svg` -> Arquitectura del DAC capacitivo (main)
- `assets/images/cdac/dac_unit_cell.svg` -> Celda unidad (main)
- `assets/images/cdac/dac_unit_cell_n.svg` -> Variante N / detalle complementario (support)
- `assets/images/cdac/cdac_unit_cell_lo_explicado.svg` -> Conexion de celda en layout (support)
- `assets/images/cdac/imcs_diagrama.svg` -> Enrutamiento/conmutacion IMCS (support)
- `assets/images/cdac/tg_diagrama_dummies.svg` -> Transmission gate y dummies (support)

## 4) Comparador dinamico

- `assets/images/comparator/DT_comparator.svg` -> Topologia del comparador dinamico (main)
- `assets/images/comparator/dynamic_biasing_comparator.svg` -> Sesgo dinamico (main)
- `assets/images/comparator/bindra_preamp_diagrama.svg` -> Preamp estilo Bindra (support)
- `assets/images/comparator/latch_diagrama.svg` -> Latch regenerativo (main)
- `assets/images/comparator/SR_latch_export.svg` -> Latch SR de salida (support)
- `assets/images/comparator/DT_comparator_tb.svg` -> Testbench del comparador (support)
- `assets/images/comparator/conversion_comparador_1.svg` -> Comparacion durante conversion (support)
- `assets/images/comparator/corriente_comparador.svg` -> Corrientes internas (support)
- `assets/images/comparator/dynamic_biasing_comparator_export.svg` -> Variante exportada para figura limpia (support)
- `assets/images/comparator/lo_comp_preamp_fl.svg` -> Preamp en full layout (support)
- `assets/images/comparator/lo_comp_preamp_scap.svg` -> Preamp con SCAP/cargas (support)
- `assets/images/comparator/retardo_buffer_comp.svg` -> Retardo de buffer del comparador (support)
- `assets/images/comparator/salidas_comp.svg` -> Salidas del comparador (support)
- `assets/images/comparator/salidas_internas_comparador.svg` -> Nodos internos de salida (support)
- `assets/images/comparator/tiempo_rst_comp.svg` -> Ventana de reset (support)
- `assets/images/comparator/tiempo_rst_comp_editado.svg` -> Version anotada de reset (support)
- `assets/images/comparator/comparadorFullLayoutt.svg` -> Vista SVG de full layout (support)

## 5) Logica de control y temporizacion

- `assets/images/logic_timing/pgen_diagrama.svg` -> Generador de pulsos (main)
- `assets/images/logic_timing/pgen.svg` -> Implementacion/resultado del PGEN (support)
- `assets/images/logic_timing/senales_pgen.svg` -> Senales del PGEN (support)
- `assets/images/logic_timing/pgen_schimtt_trigger_diagrama.svg` -> Schmitt trigger del PGEN (support)
- `assets/images/logic_timing/NOR_gate_diagrama.svg` -> Puerta NOR del control (support)
- `assets/images/logic_timing/hc253_0.svg` -> Multiplexado/logica auxiliar (support)
- `assets/images/logic_timing/nol_diagrama.svg` -> Bloque NOL (main)
- `assets/images/logic_timing/nol_salidas.svg` -> Salidas NOL (support)
- `assets/images/logic_timing/nol_salidas_editado.svg` -> Salidas NOL anotadas (support)
- `assets/images/logic_timing/nol_formas_de_onda.svg` -> Formas de onda NOL (support)
- `assets/images/logic_timing/nol_formas_de_onda_editado.svg` -> Formas de onda NOL anotadas (support)
- `assets/images/logic_timing/delays_sah.svg` -> Delay de sample-and-hold (support)
- `assets/images/logic_timing/fall_top.svg` -> Analisis de bajada (support)
- `assets/images/logic_timing/rise_top.svg` -> Analisis de subida (support)
- `assets/images/logic_timing/rise_topa.svg` -> Variante de analisis de subida (support)
- `assets/images/logic_timing/respuesta_c.svg` -> Respuesta temporal C (support)
- `assets/images/logic_timing/fanout_opt.svg` -> Optimizacion de fanout (support)
- `assets/images/logic_timing/sample_rapido_vs_lento_dummies.svg` -> Comparativa de muestreo (main)
- `assets/images/logic_timing/sample_rapido_vs_lento_dummies_zoom.svg` -> Zoom de comparativa (support)
- `assets/images/logic_timing/tb_top_tran_step.svg` -> Testbench transitorio top (support)
- `assets/images/logic_timing/pgenlayoutexplicado.svg` -> PGEN explicado (support)
- `assets/images/logic_timing/pgenlayoutexplicado2.svg` -> PGEN explicado variante (support)

## 6) Layout e implementacion fisica

### Layout CDAC
- `assets/images/layout/cdac/cdacPrueba.bmp` -> Captura base de layout CDAC (support)
- `assets/images/layout/cdac/cdacPrueba.jpg` -> Captura alternativa comprimida (backup)
- `assets/images/layout/cdac/cdacPrueba.png` -> Version recomendada para diapositiva (main)
- `assets/images/layout/cdac/cdacPrueba2.bmp` -> Segunda vista de CDAC (support)
- `assets/images/layout/cdac/cdacPrueba2.png` -> Segunda vista limpia para diapositiva (main)
- `assets/images/layout/cdac/cdacUnitCellVista.bmp` -> Vista de unit cell (support)
- `assets/images/layout/cdac/cdacUnitCellVista.png` -> Vista de unit cell para slide (main)
- `assets/images/layout/cdac/cdacUnitCellVistaPattern.bmp` -> Vista con patron (support)
- `assets/images/layout/cdac/cdacUnitCellVistaPattern.png` -> Vista con patron limpia (support)

### Layout comparador
- `assets/images/layout/comparator/ComparadorBaseLayer.bmp` -> Capa base del comparador (support)
- `assets/images/layout/comparator/ComparadorBaseLayer.png` -> Capa base en formato presentable (main)
- `assets/images/layout/comparator/comparadorVistaTOPConexiones.bmp` -> Top metal + conexiones (support)
- `assets/images/layout/comparator/comparadorVistaTOPConexiones.png` -> Top metal + conexiones limpio (main)
- `assets/images/layout/comparator/Vista1_comp_lo.bmp` -> Vista general comparador LO (support)
- `assets/images/layout/comparator/Vista1_comp_lo.png` -> Vista general comparador LO limpia (main)
- `assets/images/layout/comparator/Vista1_comp_lo_ConTOPMetal.bmp` -> Vista con top metal (support)
- `assets/images/layout/comparator/Vista1_comp_lo_ConTOPMetal.png` -> Vista con top metal limpia (main)
- `assets/images/layout/comparator/Vista1_comp_lo_SeVenLosCaps.bmp` -> Vista con capacitores visibles (support)
- `assets/images/layout/comparator/Vista1_comp_lo_SeVenLosCaps.png` -> Vista con capacitores visibles limpia (main)

## 7) Verificacion y resultados

- `assets/images/sar/tb_sar_adc.svg` -> Resultados a nivel SAR ADC (main)
- `assets/images/comparator/DT_comparator_tb.svg` -> Resultados comparador (support)
- `assets/images/logic_timing/tb_top_tran_step.svg` -> Resultados transitorios top (support)
- `assets/images/logic_timing/sample_rapido_vs_lento_dummies.svg` -> Comparativa de desempeno (main)

## 8) Anexos (PDF)

- `assets/docs/cdac_unit_cell_lo_explicado.pdf` -> Anexo CDAC
- `assets/docs/comparadorFullLayoutt.pdf` -> Anexo comparador
- `assets/docs/pgenlayoutexplicado.pdf` -> Anexo PGEN
- `assets/docs/SR_latch_export.pdf` -> Anexo latch SR

## Recomendaciones de uso rapido

- Priorizar `.svg` para diagramas (mejor nitidez y menor peso en pantalla).
- Priorizar `.png` sobre `.bmp` y `.jpg` para layout dentro de slides.
- Dejar `.bmp/.jpg` como respaldo o evidencia de origen.
