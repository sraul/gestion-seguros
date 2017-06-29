package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Departamento extends Domain {

	private String nom_departamento;
	private String abr_departamento;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_departamento() {
		return nom_departamento;
	}

	public void setNom_departamento(String nom_departamento) {
		this.nom_departamento = nom_departamento;
	}

	public String getAbr_departamento() {
		return abr_departamento;
	}

	public void setAbr_departamento(String abr_departamento) {
		this.abr_departamento = abr_departamento;
	}
}
