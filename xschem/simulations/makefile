LOGDIR = log
RESDIR = results
SIM = tb_sar_adc_param.spice
TMPDIR = tmp

.PHONY: sim clean clean-all

sim%:
	@mkdir -p $(LOGDIR) $(RESDIR) $(TMPDIR)
	@echo "Ejecutando simulación para PUNTO=$(*F)..."
	@cp $(SIM) $(TMPDIR)/sim_temp_$(*F).spice
	@sed -i 's/\.param POINT = [0-9]\+/.param POINT = $(*F)/' $(TMPDIR)/sim_temp_$(*F).spice
	@sed -i 's|> results\.txt|> $(RESDIR)/resultado_sim_$(*F).txt|g' $(TMPDIR)/sim_temp_$(*F).spice
	@sed -i 's|>> results\.txt|>> $(RESDIR)/resultado_sim_$(*F).txt|g' $(TMPDIR)/sim_temp_$(*F).spice
	@sed -i 's|tee -a results\.txt|tee -a $(RESDIR)/resultado_sim_$(*F).txt|g' $(TMPDIR)/sim_temp_$(*F).spice
	@ngspice -b -o $(LOGDIR)/sim_para_punto_$(*F).log $(TMPDIR)/sim_temp_$(*F).spice
	@echo "Simulación completada. Resultados en $(RESDIR)/resultado_sim_$(*F).txt"

clean:
	rm -rf $(TMPDIR)

clean-all:
	rm -rf $(LOGDIR) $(RESDIR) $(TMPDIR)