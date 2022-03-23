package com.shms.manager.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class Manager implements Serializable{
	private String empNumber;
	private String password;
	private String name;
	private String phoneNumber;
	private char job;
	
	public Manager() {	}

	public Manager(String empNumber, String password, String name, String phoneNumber, char job) {
		this.empNumber = empNumber;
		this.password = password;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.job = job;
	}

	public String getEmpNumber() {
		return empNumber;
	}

	public void setEmpNumber(String empNumber) {
		this.empNumber = empNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public char getJob() {
		return job;
	}

	public void setJob(char job) {
		this.job = job;
	}
}
