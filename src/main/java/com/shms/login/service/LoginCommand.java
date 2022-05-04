package com.shms.login.service;

import org.springframework.stereotype.Component;

@Component
public class LoginCommand {
	private String empNum;
	private String password;
	
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
