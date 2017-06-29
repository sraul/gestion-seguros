package com.seguros.domain;

import java.util.Date;

import com.coreweb.domain.Domain;
import com.coreweb.domain.Tipo;

@SuppressWarnings("serial")
public class Documento extends Domain {
	
	private String nro_documento;
	private Date fec_vencimiento;

	private Tipo tip_documento;
	
	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public String getNro_documento() {
		return nro_documento;
	}

	public void setNro_documento(String nro_documento) {
		this.nro_documento = nro_documento;
	}

	public Date getFec_vencimiento() {
		return fec_vencimiento;
	}

	public void setFec_vencimiento(Date fec_vencimiento) {
		this.fec_vencimiento = fec_vencimiento;
	}

	public Tipo getTip_documento() {
		return tip_documento;
	}

	public void setTip_documento(Tipo tip_documento) {
		this.tip_documento = tip_documento;
	}

}
