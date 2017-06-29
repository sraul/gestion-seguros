package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Agente extends Domain {

	private String nro_agente;
	private boolean activo;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNro_agente() {
		return nro_agente;
	}

	public void setNro_agente(String nro_agente) {
		this.nro_agente = nro_agente;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
}
