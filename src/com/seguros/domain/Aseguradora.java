package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Aseguradora extends Domain {

	private String nro_companhia;
	private boolean activo;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNro_companhia() {
		return nro_companhia;
	}

	public void setNro_companhia(String nro_companhia) {
		this.nro_companhia = nro_companhia;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
}
