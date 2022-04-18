package com.shms.manager.service;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class Manager implements Serializable{
	private String empNum;
	private String password;
	private String name;
	private String phoneNum;
	private char job;
	
	private Date theFstRgstDttm;
	private String theFstRgstUserId;
	private Date fnlChngDttm;
	private String fnlChngUserId;
	
	public Manager() { }

	public Manager(String empNum, String password, String name, String phoneNum, char job, Date theFstRgstDttm,
			String theFstRgstUserId, Date fnlChngDttm, String fnlChngUserId) {
		this.empNum = empNum;
		this.password = password;
		this.name = name;
		this.phoneNum = phoneNum;
		this.job = job;
		this.theFstRgstDttm = theFstRgstDttm;
		this.theFstRgstUserId = theFstRgstUserId;
		this.fnlChngDttm = fnlChngDttm;
		this.fnlChngUserId = fnlChngUserId;
	}

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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public char getJob() {
		return job;
	}
	public void setJob(char job) {
		this.job = job;
	}
	public Date getTheFstRgstDttm() {
		return theFstRgstDttm;
	}
	public void setTheFstRgstDttm(Date theFstRgstDttm) {
		this.theFstRgstDttm = theFstRgstDttm;
	}
	public String getTheFstRgstUserId() {
		return theFstRgstUserId;
	}
	public void setTheFstRgstUserId(String theFstRgstUserId) {
		this.theFstRgstUserId = theFstRgstUserId;
	}
	public Date getFnlChngDttm() {
		return fnlChngDttm;
	}
	public void setFnlChngDttm(Date fnlChngDttm) {
		this.fnlChngDttm = fnlChngDttm;
	}
	public String getFnlChngUserId() {
		return fnlChngUserId;
	}
	public void setFnlChngUserId(String fnlChngUserId) {
		this.fnlChngUserId = fnlChngUserId;
	}
}
