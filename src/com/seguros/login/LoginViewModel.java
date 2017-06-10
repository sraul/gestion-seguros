package com.seguros.login;

import org.zkoss.zk.ui.Executions;

public class LoginViewModel {

	/**
	 * @return true si es un dispositivo movil..
	 */
	public boolean isMobile() {
		return Executions.getCurrent().getBrowser("mobile") != null;
	}

}
