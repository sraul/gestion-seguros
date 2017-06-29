package com.seguros.domain;

import java.util.Date;

import com.coreweb.domain.Domain;
import com.coreweb.domain.Tipo;

@SuppressWarnings("serial")
public class Contacto extends Domain {

	private String nom_contacto;
	private Date fec_nacimiento;
	private String telefono;
	private String mail;
	private String direccion;
	private String observacion;
	
	private Tipo tip_contacto;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNom_contacto() {
		return nom_contacto;
	}

	public void setNom_contacto(String nom_contacto) {
		this.nom_contacto = nom_contacto;
	}

	public Date getFec_nacimiento() {
		return fec_nacimiento;
	}

	public void setFec_nacimiento(Date fec_nacimiento) {
		this.fec_nacimiento = fec_nacimiento;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public Tipo getTip_contacto() {
		return tip_contacto;
	}

	public void setTip_contacto(Tipo tip_contacto) {
		this.tip_contacto = tip_contacto;
	}

}
