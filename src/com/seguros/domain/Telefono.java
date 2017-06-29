package com.seguros.domain;

import com.coreweb.domain.Domain;
import com.coreweb.domain.Tipo;

@SuppressWarnings("serial")
public class Telefono extends Domain {

	private String cod_area;
	private String nro_telefono;
	private String nro_interno;
	private String comentario;
	private boolean ind_principal;
	
	private Tipo tip_telefono;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public Tipo getTip_telefono() {
		return tip_telefono;
	}

	public void setTip_telefono(Tipo tip_telefono) {
		this.tip_telefono = tip_telefono;
	}

	public String getCod_area() {
		return cod_area;
	}

	public void setCod_area(String cod_area) {
		this.cod_area = cod_area;
	}

	public String getNro_telefono() {
		return nro_telefono;
	}

	public void setNro_telefono(String nro_telefono) {
		this.nro_telefono = nro_telefono;
	}

	public String getNro_interno() {
		return nro_interno;
	}

	public void setNro_interno(String nro_interno) {
		this.nro_interno = nro_interno;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public boolean isInd_principal() {
		return ind_principal;
	}

	public void setInd_principal(boolean ind_principal) {
		this.ind_principal = ind_principal;
	}

}
