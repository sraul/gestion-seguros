package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Barrio extends Domain {

	private String nom_barrio;
	private String abr_barrio;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_barrio() {
		return nom_barrio;
	}

	public void setNom_barrio(String nom_barrio) {
		this.nom_barrio = nom_barrio;
	}

	public String getAbr_barrio() {
		return abr_barrio;
	}

	public void setAbr_barrio(String abr_barrio) {
		this.abr_barrio = abr_barrio;
	}
}
