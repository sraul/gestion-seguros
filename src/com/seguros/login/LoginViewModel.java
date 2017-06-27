package com.seguros.login;

import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.util.Clients;

public class LoginViewModel {
	
	public void init() {
		Clients.showNotification("TEST");
	}

	/**
	 * @return true si es un dispositivo movil..
	 */
	public boolean isMobile() {
		return Executions.getCurrent().getBrowser("mobile") != null;
	}

	public static void main(String[] args) {
		System.out.println("TEST");
	}
}
