package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Sucursal extends Domain {

	private String nom_sucursal;
	private String ind_principal;	
	private boolean activo;
	
	@Override
	public int compareTo(Object arg0) {
		return -1;
	}

	public String getNom_sucursal() {
		return nom_sucursal;
	}

	public void setNom_sucursal(String nom_sucursal) {
		this.nom_sucursal = nom_sucursal;
	}

	public String getInd_principal() {
		return ind_principal;
	}

	public void setInd_principal(String ind_principal) {
		this.ind_principal = ind_principal;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
}
