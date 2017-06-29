package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Pais extends Domain {
	
	private String nom_pais;
	private String abr_pais;
	private String nac_pais;

	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_pais() {
		return nom_pais;
	}

	public void setNom_pais(String nom_pais) {
		this.nom_pais = nom_pais;
	}

	public String getAbr_pais() {
		return abr_pais;
	}

	public void setAbr_pais(String abr_pais) {
		this.abr_pais = abr_pais;
	}

	public String getNac_pais() {
		return nac_pais;
	}

	public void setNac_pais(String nac_pais) {
		this.nac_pais = nac_pais;
	}
}
