package com.seguros.domain;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Direccion extends Domain {

	private String direccion;
	private String numero;
	private String cod_postal;
	private boolean ind_principal;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getCod_postal() {
		return cod_postal;
	}

	public void setCod_postal(String cod_postal) {
		this.cod_postal = cod_postal;
	}

	public boolean isInd_principal() {
		return ind_principal;
	}

	public void setInd_principal(boolean ind_principal) {
		this.ind_principal = ind_principal;
	}

}
