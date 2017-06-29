package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class TipoSiniestro extends Domain {

	private String descripcion;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
