package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Ciudad extends Domain {

	private String nom_ciudad;
	private String abr_ciudad;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_ciudad() {
		return nom_ciudad;
	}

	public void setNom_ciudad(String nom_ciudad) {
		this.nom_ciudad = nom_ciudad;
	}

	public String getAbr_ciudad() {
		return abr_ciudad;
	}

	public void setAbr_ciudad(String abr_ciudad) {
		this.abr_ciudad = abr_ciudad;
	}
}
