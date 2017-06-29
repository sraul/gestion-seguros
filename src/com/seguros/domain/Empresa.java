package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Empresa extends Domain {
	
	private String nom_empresa;
	private String tit_reportes;
	private String logo;
	private String logo_reporte;
	private boolean activo;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_empresa() {
		return nom_empresa;
	}

	public void setNom_empresa(String nom_empresa) {
		this.nom_empresa = nom_empresa;
	}

	public String getTit_reportes() {
		return tit_reportes;
	}

	public void setTit_reportes(String tit_reportes) {
		this.tit_reportes = tit_reportes;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getLogo_reporte() {
		return logo_reporte;
	}

	public void setLogo_reporte(String logo_reporte) {
		this.logo_reporte = logo_reporte;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
}
