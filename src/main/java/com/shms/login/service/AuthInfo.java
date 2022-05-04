package com.shms.login.service;

import org.springframework.stereotype.Component;

@Component
public class AuthInfo {
	private String empNum;
	private String name;
	private char job;
	
	public AuthInfo() { }
	
	public AuthInfo(String empNum, String name, char job) {
		super();
		this.empNum = empNum;
		this.name = name;
		this.job = job;
	}
	
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getJob() {
		return job;
	}
	public void setJob(char job) {
		this.job = job;
	}
}
