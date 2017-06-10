package com.seguros.template;

import org.zkoss.bind.annotation.BindingParam;
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.NotifyChange;

public class TemplateViewModel {

	static final String MOD_TABLERO = "Tablero";
	static final String MOD_ADMIN = "Administrativo";
	static final String MOD_GESTION = "Gestiones";
	static final String MOD_REPORTE = "Reportes";
	
	static final String FORM_ESTADISTICAS = "resumen &amp; estadísticas";
	static final String FORM_MONEDAS = "Monedas";
	static final String FORM_CONTACTOS = "Tipos de Contacto";
	static final String FORM_INTERMEDIACION = "Modos Intermediación";
	static final String FORM_RUBROS = "Rubros";
	static final String FORM_TIPOS_SINIESTRO = "Tipos de Siniestros";
	static final String FORM_PERSONAS = "Personas";
	static final String FORM_AGENCIAS = "Agencias";
	static final String FORM_COMP_SEGURO = "Compañías de Seguro";
	static final String FORM_CLIENTES = "Clientes";
	static final String FORM_GP_CLIENTES = "Grupos de Clientes";
	static final String FORM_TIPOS_ACTIVIDAD = "Tipos de Actividad";
	
	private String selectedModulo = MOD_TABLERO;
	private String selectedForm = FORM_ESTADISTICAS;
	
	@Command
	@NotifyChange({ "selectedModulo", "selectedForm" })
	public void selectModulo(@BindingParam("modulo") String modulo) {
		this.selectedModulo = modulo;
		this.selectedForm = "";
	}
	
	@Command
	@NotifyChange("selectedForm")
	public void selectForm(@BindingParam("form") String form) {
		this.selectedForm = form;
	}
	
	/**
	 * GETS / SETS
	 */
	public String getSelectedModulo() {
		return selectedModulo;
	}

	public void setSelectedModulo(String selectedModulo) {
		this.selectedModulo = selectedModulo;
	}

	public String getSelectedForm() {
		return selectedForm;
	}

	public void setSelectedForm(String selectedForm) {
		this.selectedForm = selectedForm;
	}	
}
