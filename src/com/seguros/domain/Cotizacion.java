package com.seguros.domain;

import java.util.Date;

import com.coreweb.domain.Domain;

@SuppressWarnings("serial")
public class Cotizacion extends Domain {
	
	private Date fec_cotizacion;
	private double cot_compra;
	private double cot_venta;

	@Override
	public int compareTo(Object o) {
		return -1;
	}

	public Date getFec_cotizacion() {
		return fec_cotizacion;
	}

	public void setFec_cotizacion(Date fec_cotizacion) {
		this.fec_cotizacion = fec_cotizacion;
	}

	public double getCot_compra() {
		return cot_compra;
	}

	public void setCot_compra(double cot_compra) {
		this.cot_compra = cot_compra;
	}

	public double getCot_venta() {
		return cot_venta;
	}

	public void setCot_venta(double cot_venta) {
		this.cot_venta = cot_venta;
	}
}
