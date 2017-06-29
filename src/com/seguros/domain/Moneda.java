package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Moneda extends Domain {

	private String nom_moneda;
	private String abr_moneda;
	private int can_decimales;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_moneda() {
		return nom_moneda;
	}

	public void setNom_moneda(String nom_moneda) {
		this.nom_moneda = nom_moneda;
	}

	public String getAbr_moneda() {
		return abr_moneda;
	}

	public void setAbr_moneda(String abr_moneda) {
		this.abr_moneda = abr_moneda;
	}

	public int getCan_decimales() {
		return can_decimales;
	}

	public void setCan_decimales(int can_decimales) {
		this.can_decimales = can_decimales;
	}

}
