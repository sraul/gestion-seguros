package com.seguros.domain;

import java.util.Date;

import com.coreweb.domain.Domain;
import com.coreweb.domain.Tipo;

@SuppressWarnings("serial")
public class Persona extends Domain {
	
	private boolean ind_fisica;
	private String nombres;
	private String apellidos;
	private String nom_fantasia;
	private Date fec_nacimiento;
	private String web;
	private String mail;
	
	private Tipo niv_estudio;
	private Tipo est_civil;
	private Tipo tip_sociedad;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public boolean isInd_fisica() {
		return ind_fisica;
	}

	public void setInd_fisica(boolean ind_fisica) {
		this.ind_fisica = ind_fisica;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getNom_fantasia() {
		return nom_fantasia;
	}

	public void setNom_fantasia(String nom_fantasia) {
		this.nom_fantasia = nom_fantasia;
	}

	public Date getFec_nacimiento() {
		return fec_nacimiento;
	}

	public void setFec_nacimiento(Date fec_nacimiento) {
		this.fec_nacimiento = fec_nacimiento;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Tipo getNiv_estudio() {
		return niv_estudio;
	}

	public void setNiv_estudio(Tipo niv_estudio) {
		this.niv_estudio = niv_estudio;
	}

	public Tipo getEst_civil() {
		return est_civil;
	}

	public void setEst_civil(Tipo est_civil) {
		this.est_civil = est_civil;
	}

	public Tipo getTip_sociedad() {
		return tip_sociedad;
	}

	public void setTip_sociedad(Tipo tip_sociedad) {
		this.tip_sociedad = tip_sociedad;
	}
}
